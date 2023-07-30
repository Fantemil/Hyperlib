-- BOOT
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Oreo hub", "Ocean")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

-- SCRIPTS
MainSection:NewButton("Synapse x", "My most popular script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-s-scripts/main/Synapse-X-Remake.lua"))()
end)

MainSection:NewButton("Btools", "The real btools that may lag your game out on mobile", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/F3X.lua"))()
end)

MainSection:NewButton("Dex", "explorer", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end)

MainSection:NewButton("Simplespy", "just simplespy yknow found out how game works", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
end)

MainSection:NewButton("Inf yeild", "Admin script", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

--Player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Walkspeed", 500, 10, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("Jumppower", "Jump", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


PlayerSection:NewButton("Reset J/S", "Resets speed and jump power", function()
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)


--Other
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Avatar unlocker Brookhaven", "Unlocks ", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/IceMael7/AvatarUnlocker/main/IceHub'))()
end)

OtherSection:NewButton("Old dex explorer", "old dex you know", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
end)

OtherSection:NewButton("MS DOORS", "A script that has god mode for doors", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSDOORS.lua"),true))()
end)

OtherSection:NewButton("object morpher", "May work for other games (doors is the game)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BeEverything.lua"))()
end)

OtherSection:NewButton("Cilent-sided invisible script", "cilent-sided is basically you can only see what youve done not the others", function()
    local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function PTransparency(transparency)
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
            part.Transparency = transparency
        end
    end
end


PTransparency(1)
end)

OtherSection:NewButton("Gamepass giver read disc", "May not work for some games ", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
end)

OtherSection:NewButton("Invisible gui read desc ", "idk if its cilent-sided or not", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Invisible%20Gui'))()
end)