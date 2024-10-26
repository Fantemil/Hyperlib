local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Break in 2 Mobile/Computer", "DarkTheme")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("free Roles")


MainSection:NewButton("Get Free Hacker", "Wont work phone", function()
    local args = {
        [1] = "Phone",
        [2] = true
    }

    game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole:FireServer(unpack(args))
end)

MainSection:NewButton("Get Free Nerd", "Book Works learn by just reading a book", function()
    local args = {
        [1] = "Book",
        [2] = true
    }
    
    game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole:FireServer(unpack(args))
end)








local MainSection = Main:NewSection("Other scripts")

MainSection:NewButton("Legend Handles", "Idk if its good or not", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/LOLking123456/Break/main/In"),true))()
end)

MainSection:NewButton("Break in 2 OP", "SO OP", function()
    loadstring(game:HttpGet(("https://freenote.biz/raw/80jXm2Q0a7"),true))()
end)

MainSection:NewButton("infinite Yield", "Other Admin script", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

-- Food
local Food = Window:NewTab("Food")
local FoodSection = Food:NewSection("Food")


FoodSection:NewButton("Get Golden apple", "Heals all", function()
    local args = {
        [1] = "GoldenApple"
    }
    
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

FoodSection:NewButton("Get Rainbow Pizza", "Helps your strength and speed but choose", function()
    local args = {
        [1] = "RainbowPizza"
    }
    
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

FoodSection:NewButton("Get Expired Bloxy Cola", "Give You speed for a minute but can use it once", function()
    local args = {
        [1] = "ExpiredBloxyCola"
    }
    
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

FoodSection:NewButton("Get Cookie", "Just a normal food", function()
    local args = {
        [1] = "Cookie"
    }
     
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

FoodSection:NewButton("Get Gold Pizza", "Give you alot of health", function()
    local args = {
        [1] = "GoldPizza"
    }
     
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

FoodSection:NewButton("Get Pizza", "Normal food", function()
    local args = {
        [1] = "Pizza"
    }
     
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

FoodSection:NewButton("Get Apple", "A normal Fruit", function()
    local args = {
        [1] = "Apple"
    }
    
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

FoodSection:NewButton("Get Chips", "1 Chips 5 health each time you click", function()
    local args = {
        [1] = "Chips"
    }
    
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

FoodSection:NewButton("Get Bloxy cola", "Gives you speed", function()
    local args = {
        [1] = "BloxyCola"
    }
    
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

local Teleport = Window:NewTab("Teleport")
local TeleportSection = Teleport:NewSection("DONT TELEPORT WHEN YOU ARE NOT GOING")
local TeleportSection = Teleport:NewSection("INTO THE BASEMENT TELEPORT BEFORE FIRST")
local TeleportSection = Teleport:NewSection("Teleport")

TeleportSection:NewButton("Base", "teleports where you train", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-247.989594, 30.4652519, -790.284851, -0.0240375809, -7.76096343e-09, 0.999711037, 1.31844802e-08, 1, 8.08022094e-09, -0.999711037, 1.33749003e-08, -0.0240375809)
end)

TeleportSection:NewButton("Bad guys room", "teleports where you train", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-217.089996, 63.4159622, -711.934814, -0.0220284592, 5.78247095e-09, -0.999757349, 1.25581046e-09, 1, 5.75620396e-09, 0.999757349, -1.12870535e-09, -0.0220284592)
end)

TeleportSection:NewButton("Basement", "A boss fight", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1353.17371, -347.374115, -815.4552, 5.42101086e-20, -4.1268506e-20, 1, 0, 1, -4.1268506e-20, -1, 0, -5.42101086e-20)
end)

TeleportSection:NewButton("Mr bradley", "Mr bradley place", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-298.233063, 95.447731, -790.688782, 0.0595716052, -3.41781892e-08, 0.99822402, -5.88024207e-08, 1, 3.77481832e-08, -0.99822402, -6.09467108e-08, 0.0595716052)
end)








local Tool = Window:NewTab("Tool")
local ToolSection = Tool:NewSection("Tools")


ToolSection:NewButton("Get Rat", "To make mr bradley wake up", function()
      local args = {
         [1] = "Louise"
    }
     
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

ToolSection:NewButton("Get Gold key", "Gold key to get rainbow pizza", function()
    local args = {
        [1] = "GoldKey"
    }
    
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

ToolSection:NewButton("Get Key", "Key to open uncle", function()
    local args = {
        [1] = "Key"
    }
    
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

ToolSection:NewButton("Medic (patched)", "Heals players", function()
    local args = {
        [1] = "medKit"
    }
    
    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(unpack(args))
end)

local Defend = Window:NewTab("Defend/weapons")
local DefendSection = Defend:NewSection("Defend")


DefendSection:NewButton("Get Armor", "Protect your self and makes low damage", function()
    local args = {
        [1] = 3,
        [2] = "Armor2",
        [3] = "Armor",
        [4] = 1
    }
    
    game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)

local DefendSection = Defend:NewSection("Weapons")

DefendSection:NewButton("Get Pitchfork", "Trying to attack", function()
    local args = {
        [1] = 3,
        [2] = "Pitchfork",
        [3] = "Weapons",
        [4] = "FoxIDM"
    }
    
    game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)

DefendSection:NewButton("Get Bat", "Hitting them with a bat", function()
    local args = {
        [1] = 3,
        [2] = "Bat",
        [3] = "Weapons",
        [4] = "FoxIDM"
    }
    
    game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)

DefendSection:NewButton("Get Wrench", "For fixing cars but it was strong and it use for attacking", function()
    local args = {
        [1] = 3,
        [2] = "Wrench",
        [3] = "Weapons",
        [4] = "FoxIDM"
    }
    
    game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)

DefendSection:NewButton("Get Broom", "A nice cleaning tool but you attack", function()
    local args = {
        [1] = 3,
        [2] = "Broom",
        [3] = "Weapons",
        [4] = "FoxIDM"
    }
    
    game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)

DefendSection:NewButton("Get Hammer", "Hitting it will make a hard damage but usually it was normal in game", function()
    local args = {
        [1] = 3,
        [2] = "Hammer",
        [3] = "Weapons",
        [4] = "FoxIDM"
    }
    
    game:GetService("ReplicatedStorage").Events.Vending:FireServer(unpack(args))
end)

local Defend = Window:NewTab("Credits")
local DefendSection = Defend:NewSection("Made by themostdangerhack")
local DefendSection = Defend:NewSection("my break in 2 script wont work so i decided to make")
local DefendSection = Defend:NewSection("mobile and pc one")