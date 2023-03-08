if not game.Loaded then game.Loaded:Wait() end
wait(5)

-- Make sure to have the script saved in your auto execute to have it be automated!
-- Also the script will take like 5-8 seconds to get started, added some prints to
-- show it's working

local MouseMovement = 4 -- Would not recommend below 4 (changes how fast the mouse moves)
local FireLength = 50 -- how long the AI will shoot for
local ReloadLength = 10 -- how long inbetween shooting it will wait until it shoots again
_G.Stop = false --Execute the script with this as true to make it stop

-------------------------------------------------------


-- ALSO, known bugs / things I wanted to do are commented throughout the code
-- And of course this could easily be made a GUI to make it 100x better

print("Starting")
local plr = game.Players.LocalPlayer
local MainMenu = plr.PlayerGui:WaitForChild("GUI")
local Cam = game.Workspace.Camera
local Mouse = plr:GetMouse()

function ClickUI(UI)
    for i,v in pairs(getconnections(UI.MouseButton1Click)) do
        v:Fire()
    end
    for i,v in pairs(getconnections(UI.MouseButton1Down)) do
        v:Fire()
    end
end

function Closest()
    -- I wanted to make it so it'd stick with the closest instead of switching a bunch
    -- But never got around to doing that :P
    local Lowest = 1e9
    local Low = nil
    local Plane = game:GetService("Workspace").viewmodels:FindFirstChild(plr.Name)
    if not Plane then return nil end
    for i,v in pairs(game:GetService("Workspace").Camera["plane_part_viewmodels"]:GetChildren()) do
        if v and v ~= plr.Name and v:FindFirstChild("air_target_bb") and v["air_target_bb"].main.mark.team.main.label.Text ~= "FRIENDLY" then
            local mag = (Plane.Position - v.Position).Magnitude
            if mag < Lowest then
                Lowest = mag
                Low = v
            end
        end
    end
    return Low
end

function MouseTo(UI)
    Vec = Vector2.new(UI.X,UI.Y) - Vector2.new(Mouse.X,Mouse.Y)
    mousemoverel(Vec.X / MouseMovement,Vec.Y / MouseMovement)
end

function LockOn(P,CurrentlyLocked)
    local LockPart = nil
    local CL = nil
    for i,v in pairs(game:GetService("Workspace").Camera["plane_part_viewmodels"]:GetChildren()) do
        if v and v:FindFirstChild("air_target_bb") and v["air_target_bb"].main.mark.player.Visible then
            CL = v
        end
    end
    if not CurrentlyLocked then
        keypress(0x58)
        keyrelease(0x58)
    end
    local Assist = MainMenu.Billboards:FindFirstChild("assistant")
    if Assist then
        local Icon = Assist:FindFirstChild("icon")
        local Plane = game:GetService("Workspace").viewmodels:FindFirstChild(plr.Name)
        if Plane and Icon and Icon.Visible and Icon.AbsolutePosition.X < Cam.ViewportSize.X and Icon.AbsolutePosition.Y < Cam.ViewportSize.Y and (P.Position - Plane.Position).Magnitude < 300 then
            -- Originally this wasn't meant to have a distance/magnitude check, but since the Icon would load in
            -- early but not be where it was supposed to be I ended up doing a magnitude to the enemy plane...
            -- This coulc easily be fixed with a distsance check from the enemy plane to the icon though... HMMMMMM
            LockPart = Icon
        end
    end
    return CL,LockPart
end

--------- Main Script -------------

if MainMenu:FindFirstChild("Spectate") then
    -- Game
    print("In Game")
    wait(1)
    if string.find(string.lower(MainMenu["text_alert"].Text),"waiting for",1,true) then
        wait(5)
        -- This is a little fast but *eh*, could've added a player check like less than 3 players joins new server
        if string.find(string.lower(MainMenu["text_alert"].Text),"waiting for",1,true) then
            ClickUI(game:GetService("Workspace").Spawn.menu["plane_list_buttons"].gui.main["buttons_2"]["return"])
        end
    end
    while not _G.Stop do
        if not MainMenu.Deployed.Visible then
            local Play = game:GetService("Workspace").Spawn.menu["plane_list_buttons"].gui.main["buttons_2"].play
            repeat wait(.2) until (game:GetService("Workspace").Spawn.menu["plane_list_buttons"].Position - Cam.CFrame.Position).Magnitude < 50 or _G.Stop
            ClickUI(Play)
            wait(.5)
            ClickUI(MainMenu.SpawnMenu.Main.spawn.button)
            wait(.5)
        end
        CurrentlyLocked = nil
        local Iter = 0
        local Direction = 0
        while not _G.Stop and not plr.condition.destroyed.Value do
            game:GetService('RunService').Stepped:wait()
            LockPart = nil
            local Vic = Closest()
            -- Thought about doing it closest to the cursor for a "silent aim" exploit since I pulled a past
            -- silent aim for some of this code. But *EHHH*
            if Vic then
                if CurrentlyLocked == nil then
                    CurrentlyLocked,LockPart = LockOn(Vic,(CurrentlyLocked == Vic.Name))
                else
                    CurrentlyLocked,LockPart = LockOn(Vic,(CurrentlyLocked.Name == Vic.Name))
                end
                local Pos,Screen
                if LockPart then
                    Pos,Screen = Vector2.new(LockPart.AbsolutePosition.X,LockPart.AbsolutePosition.Y),true
                    --I was trying to mess around with this and get it so it would actually properly aim at the icon
                    --But I couldn't get it to in the end
                    Iter = Iter + 1
                    if Iter < FireLength + ReloadLength then
                        Iter = Iter + 1
                        mouse1press()
                        --Sometimes the plane doesn't stop shooting when it respawns? Never looked into it
                        --Probably when the round ends and you're still alive so you aren't "destroyed"
                        --Could be fixed by adding a check for the alert_text for "new match" or something
                    elseif Iter < FireLength then
                        Iter = 0
                        mouse1release()
                    end
                else
                    Iter = 0
                    mouse1release()
                    Pos,Screen = Cam:WorldToScreenPoint(Vic.Position)
                end
                if not Screen then
                    Vec = Vector2.new(Pos.X,Pos.Y) - Vector2.new(Mouse.X,Mouse.Y)
                    local NewVector = {['X']=Vec.X,['Y']=Vec.Y}
                    NewVector.X = 30
                    -- I wanted to make it actually turn around properly but never
                    -- really got the X or Y to work so we just spin in circles now :)
                    if Vec.Y > Cam.ViewportSize.Y then
                        NewVector.Y = Cam.ViewportSize.Y
                    elseif Vec.Y < -Cam.ViewportSize.Y then
                        NewVector.Y = -Cam.ViewportSize.Y
                    end
                    mousemoverel(NewVector.X,NewVector.Y/2)
                    wait(.1)
                else
                    MouseTo(Pos)
                end
            end
        end
        mouse1release()
        wait(3)
    end
else
    -- Menu
    print("MainMenu")
    wait(3)
    -- Instead of a wait, could've waited for the fade UI to go away
    ClickUI(MainMenu["right_bar"].buttons.play)
end