--[[
    Thanks for checking out our open source 'tutorial' script!
    Most of this script is commented to explain some concepts.
    Feel free to utilize the methods shown in this script for your own work!

    Made by: Dosage#9999
    Brought to you by: Vision Software - discord.gg/vision-hub  https://visionhub.dev
]]--
repeat task.wait() until game:isLoaded() -- This is not really required unless the script will be in autoexecute

print("Open-Source Script by Vision Software - discord.gg/vision-hub")

-- // Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ Name = "Vision", HidePremium = true, SaveConfig = true, ConfigFolder = "Vision" })

-- // Services -- Defining Services, Variables, and Functions all in one place above the rest of the scripts makes life easy
local players = game:GetService("Players")
local replicatedstorage = game:GetService("ReplicatedStorage")
local runservice = game:GetService("RunService")

-- // Variables
local player = players.LocalPlayer
getgenv().Settings = { -- Storing settings in a table is not required but can keep things easier to find and work with. With Orion you can save time by using Flags instead of a table, but i prefer tables.
    beastMode = false, -- Make sure you set everything to a good default so it doesnt make shit go brr without the user turning it on
    autoClicker = { -- Nesting tables is good for keeping one feature with extra options neat and integrated with the settings
        enabled = false,
        multi = 1
    },
    bossFarm = false,
    pickupFarm = false
}

-- // Functions
local function sendClick(multi)
    replicatedstorage.Aero.AeroRemoteServices.ClickService.Click:FireServer(multi)
end

local function getPasses(toggle) -- These are not consistent nor efficient ways to make the functions bc i couldnt decide if i wanted to use the table above then decided a grand 'kinda' so i can still show the settings table
    for _,v in pairs(player.Gamepasses:GetChildren()) do
        v.Value = toggle
    end
end

local function getFlags()
    local startPos = player.Character.HumanoidRootPart.CFrame
    for _,v in pairs(workspace.Flags:GetChildren()) do
        if v then
            player.Character.HumanoidRootPart.CFrame = v.Hitbox.CFrame + Vector3.new(0, 5, 0)
            task.wait(7)
            player.Character.HumanoidRootPart.CFrame = startPos
        end
        
    end
end




-- // Main Tab -- Always sort your tabs so you dont get lost in the sauce. Making everything one line makes it easier to read the info you might need and find something faster
local mainTab = Window:MakeTab({ Name = "Main", Icon = "rbxassetid://4483345998", PremiumOnly = false })
mainTab:AddLabel("Autofarm")
mainTab:AddToggle({ Name = "Autoclicker", Default = false, Callback = function(t) Settings.autoClicker.enabled = t end })
mainTab:AddSlider({ Name = "Autoclicker Multiplier", Min = 1, Max = 10, Default = 1, Increment = 1, ValueName = "x", Callback = function(t) Settings.autoClicker.multi = t end })
mainTab:AddToggle({ Name = "Boss Farm", Default = false, Callback = function(t) Settings.bossFarm = t end })
mainTab:AddToggle({ Name = "Pickup Farm", Default = false, Callback = function(t) Settings.pickupFarm = t end })
mainTab:AddButton({ Name = "Capture All Flags", Callback = function() getFlags() end })

mainTab:AddLabel("Misc")
mainTab:AddToggle({ Name = "All Gamepasses", Default = false, Callback = function(t) getPasses(t) end })
mainTab:AddToggle({ Name = "Hide Popup Effects", Default = false, Callback = function(t) player.PlayerGui.PopupEffects.Enabled = not t end })


-- // Loops -- I put these at the end bc everything is defined above and it wont error ok yes


runservice.RenderStepped:Connect(function() -- Renderstepped runs every frame, use `while task.wait() do` instead if you don't want it bound to your fps depending on what you're doing.

    if Settings.autoClicker.enabled then -- No need to use getgenv() to call the value. Also no need to use == true for a bool
        sendClick(Settings.autoClicker.multi)
    end

    if Settings.bossFarm then
        local remote = replicatedstorage.Aero.AeroRemoteServices.CursorCannonService.FireBoss
        for _,v in pairs(replicatedstorage.BossObjects:GetChildren()) do
            remote:FireServer(v.Name)
        end
    end

    if Settings.pickupFarm then
        for _,v in pairs(workspace.ScriptObjects:GetChildren()) do
            if v and v.Name == "BasePickup" and v:FindFirstChild("HumanoidRootPart") then
                firetouchinterest(player.Character.Head, v.HumanoidRootPart, 0)
            end
        end
    end

end)



OrionLib:Init()