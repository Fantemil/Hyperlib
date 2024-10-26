--made with kavo ui also this is bad and only does simple stuff

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Burgerhub By notraisincains#5706", "Sentinel")

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("SpawnMenu")

MainSection:NewButton("Bread", "Bread", function()
    local Event = game:GetService("Workspace").Restaurant.Screen.OrderButton1.ContextAction
Event:FireServer()
end)

MainSection:NewButton("Meat and Cheese", "Meat and Cheese", function()
    local Event = game:GetService("Workspace").Restaurant.Screen.OrderButton2.ContextAction
Event:FireServer()
end)

MainSection:NewButton("Lettuce", "Lettuce", function()
    local Event = game:GetService("Workspace").Restaurant.Screen.OrderButton3.ContextAction
Event:FireServer()
end)

MainSection:NewButton("AutoPlate(E)", "Press E to Toggle", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/hJ4NqYST'))()
end)

local MainSection = Main:NewSection("Box")

MainSection:NewButton("Opens Box(Q)", "Press Q to toggle", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/th5pCseB'))()
end)

local MainSection = Main:NewSection("Doors")

MainSection:NewButton("Fridge", "This button opens the fridge door", function()
    local Event = game:GetService("Workspace").Restaurant.Fridge.FridgeDoor.FridgeDoor.ContextAction
Event:FireServer()
end)

MainSection:NewButton("Freezer", "This button opens the freezer door", function()
    local Event = game:GetService("Workspace").Restaurant.Freezer.FreezerDoor.FreezerDoor.ContextAction
Event:FireServer()
end)

MainSection:NewButton("Microwave", "This button opens the microwave door", function()
    local Event = game:GetService("Workspace").Items.Microwave.Body.ContextAction
Event:FireServer()
end)

local MainSection = Main:NewSection("Potions")

MainSection:NewButton("Become Rat", "This button turns you into a rat", function()
    local Event = game:GetService("Workspace").Items.Potion.ContextAction
Event:FireServer()
end)

local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Speed", "WalkSpeed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("Jump", "JumpPower", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("ClearMap (VIP SERVER ONLY)", "This button clears the map only in vip server in public it will kick you", function()
game:GetService("ReplicatedStorage").Network.ClearMap:InvokeServer()
end)

PlayerSection:NewButton("Infinite Jump", "This buttons lets you jump infinitly rejoin to fix", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/afeqzpCf'))()
end)