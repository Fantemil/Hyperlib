local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("LuckyHub","Serpent")

--Home

local Tab = Window:NewTab("Home") 

local Section = Tab:NewSection("Make by Cancelled :)")
local Section = Tab:NewSection("LuckyHub")
local Section = Tab:NewSection("DISCORD:https://discord.gg/VJgZBwgu9f")

local Tab = Window:NewTab("Luckyblock") 

local Section = Tab:NewSection("Luckyblocks")

Section:NewButton("Luckyblock", "give you the lucky block", function()
    game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
end)

Section:NewButton("Superblock", "give you the super block", function()
    game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
end)

Section:NewButton("Diamondblock", "give you the diamond block", function()
    game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
end)

Section:NewButton("Rainbowblock", "give you the rainbow block", function()
    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
end)

Section:NewButton("Galaxyblock", "give you the galaxy block", function()
    game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
end)

-- player 

local Tab = Window:NewTab("Player") 

local Section = Tab:NewSection("Jump and velocity")

Section:NewSlider("WalkSpeed", "Walkspeed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "JumpPower", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- admin

local Tab = Window:NewTab("Admin") 

local Section = Tab:NewSection("Admins")

Section:NewButton("Yield (old)", "Fe admin", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/tzTXmYf2'),true))()
end)

 local Tab = Window:NewTab("Fun") 

local Section = Tab:NewSection("Chat Hax")

Section:NewButton("Chat hax", "Chat hax", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ant-7802/--/main/straightmilk.lua'))()
end)

 