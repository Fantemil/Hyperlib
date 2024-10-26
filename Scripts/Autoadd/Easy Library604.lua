--[[ 
Easy Library by Sky
Meant for people who dont know how to code or lazy ppl idk
Last Updated 3/23/24
Added autofill and no cap sensitive and added bring player and made a all function and added loopbringplayer and loopteleportplayer
]]
Players = game:GetService("Players") -- Players
LocalPlayer = Players.LocalPlayer -- LocalPlayer
Character = LocalPlayer.Character -- Character
Humanoid = Character.Humanoid -- Humanoid
Location = Character.HumanoidRootPart.CFrame -- Location of player
all = {} -- all players
for i,v in pairs(Players:GetPlayers()) do -- get all players
    table.insert(all,v.Name) -- put in table all
end
function Speed(des) -- Changes LocalPlayer speed to desired choice
    Humanoid.WalkSpeed = des
end
function Jump(des) -- Changes LocalPlayer jump power to desired choice
    Humanoid.JumpPower = des
end
function Gravity(dess) -- Changes LocalPlayer Gravity to desired choice
    workspace.Gravity = dess
end
function TeleportToCFrame(x,y,z) -- Teleports Player to cframe if yk what that is
    Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
end
function TeleportToPlayer(...) -- Teleports to player just put their name in in quotes so like 'yosad' or "dasdda"
    local lol
    local istt
    local lol2 = {...}
    for i,v in pairs(Players:GetPlayers()) do
        if ... == "all" then
            istt = true
            Character:WaitForChild("HumanoidRootPart").CFrame = v.Character:WaitForChild("HumanoidRootPart").CFrame
            wait(lol2[2])
        elseif string.sub(string.lower(v.Name), 0, #...) == string.lower(...) or string.sub(string.lower(v.DisplayName), 0, #...) == string.lower(...) then
            istt = true
            lol = v.Character:WaitForChild("HumanoidRootPart").CFrame
        end
    end
    if not istt then
        error("Could not find player")
    end
    Character.HumanoidRootPart.CFrame = lol
end
function TeleportToPart(pname) -- Teleports to part name
    local isdsa
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == pname and v:IsA("Part") then
            isdsa = true
            Character.HumanoidRootPart.CFrame = v.CFrame
            break
        elseif v.Name == pname and v:IsA("BasePart") then
            isdsa = true
            Character.HumanoidRootPart.CFrame = v.CFrame
            break
        elseif v.Name == pname and v:IsA("MeshPart") then
            isdsa = true
            Character.HumanoidRootPart.CFrame = v.CFrame
            break
        end
    end
    if not isdsa then -- if part was not found
        error("Could not find part lol")
    end
end
function notify(...) -- notify
    local loll = {...}
    game.StarterGui:SetCore("SendNotification",  {
    Title = loll[1] or ""; -- title of noti
    Text = loll[2] or ""; -- description of noti
    Icon = loll[3] or ""; -- icon
    Duration = loll[4] or 5; -- how long noti will last
    Callback = NotificationBindable;
    })
end
function BringPlayer(...) -- bring player CLIENT SIDED
    local found = false
    for i,v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer then
            if ... == "all" then
                found = true
                v.Character.HumanoidRootPart.CFrame = Location
            elseif string.sub(string.lower(v.Name), 0, #...) == string.lower(...) or string.sub(string.lower(v.DisplayName), 0, #...) == string.lower(...) then
                found = true
                v.Character.HumanoidRootPart.CFrame = Location
            end
        end
    end
    if not found then
        error("Could not find player")
    end
end
function LoopBringPlayer(...) -- loopbring player CLIENT SIDED
    local found = true
    local hi = ...
    local hii = {...}
    getgenv().loopbringplayer = true
    spawn(function()
        while true do wait()
            if not getgenv().loopbringplayer then
                break
            end
            for i,v in pairs(Players:GetPlayers()) do
                if hi == "all" then
                    found = true
                    v.Character:WaitForChild("HumanoidRootPart").CFrame = Location
                    wait(hii[2])
                elseif string.sub(string.lower(v.Name), 0, #hi) == string.lower(hi) or string.sub(string.lower(v.DisplayName), 0, #hi) == string.lower(hi) then
                    found = true
                    v.Character:WaitForChild("HumanoidRootPart").CFrame = Location
                    wait(hii[2])
                end
                if not found then
                    error("Could not find player")
                end
            end
        end
    end)
end
function unLoopBringPlayer(...) -- stops loop
    getgenv().loopbringplayer = false
end
--sorry for shitty loopbringplayer lol
function LoopTeleportToPlayer(...) -- looptp to player
    local found = true
    local hi = ...
    local hii = {...}
    getgenv().loopteleporttoplayer = true
    spawn(function()
        while true do wait()
            if not getgenv().loopteleporttoplayer then
                break
            end
            for i,v in pairs(Players:GetPlayers()) do
                if hi == "all" then
                    found = true
                    Character:WaitForChild("HumanoidRootPart").CFrame = v.Character:WaitForChild("HumanoidRootPart").CFrame
                    wait(hii[2])
                   elseif string.sub(string.lower(v.Name), 0, #hi) == string.lower(hi) or string.sub(string.lower(v.DisplayName), 0, #hi) == string.lower(hi) then
                        found = true
                        Character.HumanoidRootPart.CFrame = v.Character:WaitForChild("HumanoidRootPart").CFrame
                        wait(hii[2])
                    end
                if not found then
                    error("Could not find player")
                end
            end
        end
    end)
end
function unLoopTeleportToPlayer(...) -- stops loop
    getgenv().loopteleporttoplayer = false
end
-- sorry for shitty loopteleport too lol


--[[
you prob want to check console by /console or F9 if something doesnt work error will be provided amd if not join discord https://discord.gg/xwy5Cu62Vw

Now that these Variables are in Place all you have to do
is do something like
Speed(999)
Changes walk speed to 999
or
TeleportToPlayer("testplayer")
or
TeleportToPlayer("all") teleports you to all players
is to teleport to a player obviously where test player is where you would put theyre real full username not display name
also if you do the loop version of bring player or teleport player you can do
LoopTeleportToPlayer("all",2)
all is all players and 2 is the time between each player
teleport to CFrame is so lets say you do this and open F9 to show console or just type /console in chat
print(Location)
that will get  your location as the first 3 numbers x,y,z so if you do
Teleport(x,y,z)
and replace x,y,z with the first 3 numbers you got then you will teleport to that location and it will stay the same
ok now teleporttopart is a pretty advanced one so what you will need to do is open up dex and go to workspace and things that are parts and there names so
TeleportToPart("Partnamehere")
and it will teleport you to that part
]]
