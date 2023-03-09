--[[
game - https://www.roblox.com/games/4954096313/Field-Trip-Z-NEW-ENDING?refPageId=21891a03-8979-4e6c-980f-8349602c98f3
by SalatBlitz
discord - https://discord.gg/Dpa6CaA
]]
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Open = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Main = Instance.new("Frame")
local by = Instance.new("TextLabel")
local Items = Instance.new("TextLabel")
local Donut = Instance.new("TextButton")
local Bandage = Instance.new("TextButton")
local Medkit = Instance.new("TextButton")
local Items_2 = Instance.new("TextLabel")
local Heal = Instance.new("TextButton")
local Godmode = Instance.new("TextButton")
local StopGod = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui

Open.Name = "Open"
Open.Parent = ScreenGui
Open.BackgroundColor3 = Color3.fromRGB(129, 129, 129)
Open.Position = UDim2.new(0, 0, 0.533834577, 0)
Open.Size = UDim2.new(0, 82, 0, 40)
Open.Font = Enum.Font.SciFi
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextSize = 25.000
Open.MouseButton1Down:connect(function()
Open.Visible = false
Close.Visible = true
Main.Visible = true
end)

Close.Name = "Close"
Close.Parent = ScreenGui
Close.BackgroundColor3 = Color3.fromRGB(129, 129, 129)
Close.Position = UDim2.new(0, 0, 0.533834577, 0)
Close.Size = UDim2.new(0, 82, 0, 40)
Close.Visible = false
Close.Font = Enum.Font.SciFi
Close.Text = "Close"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 25.000
Close.MouseButton1Down:connect(function()
Open.Visible = true
Close.Visible = false
Main.Visible = false
end)

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
Main.Position = UDim2.new(0.319062173, 0, 0.206766918, 0)
Main.Size = UDim2.new(0, 372, 0, 484)
Main.Visible = false
Main.Draggable = true
Main.Active = true

by.Name = "by"
by.Parent = Main
by.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
by.Size = UDim2.new(0, 372, 0, 40)
by.Font = Enum.Font.GothamSemibold
by.Text = "Script V1 by SalatBlitz"
by.TextColor3 = Color3.fromRGB(0, 0, 0)
by.TextSize = 29.000

Items.Name = "Items"
Items.Parent = Main
Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Items.BackgroundTransparency = 1.000
Items.BorderSizePixel = 0
Items.Position = UDim2.new(0.153225809, 0, 0.161157027, 0)
Items.Size = UDim2.new(0, 257, 0, 28)
Items.Font = Enum.Font.GothamBold
Items.Text = "Items"
Items.TextColor3 = Color3.fromRGB(0, 0, 0)
Items.TextSize = 29.000

Donut.Name = "Donut"
Donut.Parent = Main
Donut.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
Donut.Position = UDim2.new(0.03763441, 0, 0.252066135, 0)
Donut.Size = UDim2.new(0, 150, 0, 31)
Donut.Font = Enum.Font.SciFi
Donut.Text = "Donut"
Donut.TextColor3 = Color3.fromRGB(0, 0, 0)
Donut.TextSize = 29.000
Donut.MouseButton1Down:connect(function()
--Donut
local A_1 = "PICKUP_ITEM"
local A_2 = "Donut"
local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
Event:InvokeServer(A_1, A_2)
end)


Bandage.Name = "Bandage"
Bandage.Parent = Main
Bandage.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
Bandage.Position = UDim2.new(0.559139788, 0, 0.252066135, 0)
Bandage.Size = UDim2.new(0, 150, 0, 31)
Bandage.Font = Enum.Font.SciFi
Bandage.Text = "Bandage"
Bandage.TextColor3 = Color3.fromRGB(0, 0, 0)
Bandage.TextSize = 29.000
Bandage.MouseButton1Down:connect(function()
local A_1 = "PICKUP_ITEM"
local A_2 = "Bandage"
local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
Event:InvokeServer(A_1, A_2)
end)

Medkit.Name = "Medkit"
Medkit.Parent = Main
Medkit.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
Medkit.Position = UDim2.new(0.295698941, 0, 0.450413227, 0)
Medkit.Size = UDim2.new(0, 150, 0, 31)
Medkit.Font = Enum.Font.SciFi
Medkit.Text = "Medkit"
Medkit.TextColor3 = Color3.fromRGB(0, 0, 0)
Medkit.TextSize = 29.000
Medkit.MouseButton1Down:connect(function()
local A_1 = "PICKUP_ITEM"
local A_2 = "MedKit"
local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
Event:InvokeServer(A_1, A_2)
end)

Items_2.Name = "Items"
Items_2.Parent = Main
Items_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Items_2.BackgroundTransparency = 1.000
Items_2.BorderSizePixel = 0
Items_2.Position = UDim2.new(0.15053764, 0, 0.59710741, 0)
Items_2.Size = UDim2.new(0, 257, 0, 28)
Items_2.Font = Enum.Font.GothamBold
Items_2.Text = "Other"
Items_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Items_2.TextSize = 29.000

Heal.Name = "Heal"
Heal.Parent = Main
Heal.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
Heal.Position = UDim2.new(0.03763441, 0, 0.702479362, 0)
Heal.Size = UDim2.new(0, 150, 0, 31)
Heal.Font = Enum.Font.SciFi
Heal.Text = "Heal"
Heal.TextColor3 = Color3.fromRGB(0, 0, 0)
Heal.TextSize = 29.000
Heal.MouseButton1Down:connect(function()
local A_1 = "HEAL_PLAYER"
local A_2 = game:GetService("Players").LocalPlayer
local A_3 = 999999999
local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
Event:InvokeServer(A_1, A_2, A_3)
end)

Godmode.Name = "Godmode"
Godmode.Parent = Main
Godmode.BackgroundColor3 = Color3.fromRGB(0, 113, 3)
Godmode.Position = UDim2.new(0.559139788, 0, 0.702479362, 0)
Godmode.Size = UDim2.new(0, 150, 0, 31)
Godmode.Font = Enum.Font.SciFi
Godmode.Text = "GodMode"
Godmode.TextColor3 = Color3.fromRGB(0, 0, 0)
Godmode.TextSize = 29.000
Godmode.MouseButton1Down:connect(function()
Godmode.Visible = false
StopGod.Visible = true
_G.Heal = true
while _G.Heal do
wait(0.1)
local A_1 = "HEAL_PLAYER"
local A_2 = game:GetService("Players").LocalPlayer
local A_3 = 999999999
local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
end
end)


StopGod.Name = "StopGod"
StopGod.Parent = Main
StopGod.BackgroundColor3 = Color3.fromRGB(113, 3, 3)
StopGod.Position = UDim2.new(0.559139788, 0, 0.702479362, 0)
StopGod.Size = UDim2.new(0, 150, 0, 31)
StopGod.Visible = false
StopGod.Font = Enum.Font.SciFi
StopGod.Text = "Stop!"
StopGod.TextColor3 = Color3.fromRGB(0, 0, 0)
StopGod.TextSize = 29.000
StopGod.MouseButton1Down:connect(function()
Godmode.Visible = true
StopGod.Visible = false
_G.Heal = false
while _G.Heal do
wait(0.1)
local A_1 = "HEAL_PLAYER"
local A_2 = game:GetService("Players").LocalPlayer
local A_3 = 999999999
local Event = game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction
Event:InvokeServer(A_1, A_2, A_3)
wait(0.1)
end
end)


-- Scripts:

local function KMOUSP_fake_script() -- by.LocalScript 
 local script = Instance.new('LocalScript', by)

 local r = {
  Color3.fromRGB(254, 0, 0);  --red
  Color3.fromRGB(255, 127, 0); --orange
  Color3.fromRGB(255, 221, 1); --yellow
  Color3.fromRGB(0, 200, 0);  --green
  Color3.fromRGB(0, 160, 199); --light blue
  Color3.fromRGB(0, 55, 230);  --dark blue
  Color3.fromRGB(129, 16, 210)} --purple
 local info = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
 script.Parent.TextColor3 = r[1]
 i = 1
 while true do
 local tween = game:GetService("TweenService"):Create(script.Parent, info, {
  TextColor3 = r[i]})
 tween:Play()
 repeat wait() until tween.Completed
 wait(0.1)
 if i == #r then i = 1 else i = i + 1 end
 end
end
coroutine.wrap(KMOUSP_fake_script)()