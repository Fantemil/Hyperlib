
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Katana = Instance.new("TextButton")
local Heavy = Instance.new("TextButton")
local close = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")


ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.new(1, 1 ,1)
main.Position = UDim2.new(0.0203577988, 0, 0.641277611, 0)
main.Size = UDim2.new(0, 332, 0, 211)
main.Visible = false
main.Active = true
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.Size = UDim2.new(0, 332, 0, 31)
title.Font = Enum.Font.GothamBold
title.Text = "Be A Parkour Ninja Gui"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextSize = 17

Katana.Name = "Katana"
Katana.Parent = main
Katana.BackgroundColor3 = Color3.new(1, 1, 1)
Katana.Position = UDim2.new(0.036144577, 0, 0.379146934, 0)
Katana.Size = UDim2.new(0, 110, 0, 50)
Katana.Font = Enum.Font.GothamBold
Katana.Text = "Katana"
Katana.TextColor3 = Color3.new(0, 0, 0)
Katana.TextScaled = true
Katana.TextSize = 10
Katana.TextWrapped = true
Katana.MouseButton1Down:connect(function()
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Katana
local SelectionBoxObject
local HandleObject
local SelectionBoxKeybind = Enum.KeyCode.E --no need to change this, doesn't work
local ReachVector = 7 --Minimum reach is 7
local Player = Players.LocalPlayer
local Backpack = Player:FindFirstChild("Backpack")
repeat
    wait()
until Backpack

local function SetupReach(Sword)
    local Handle = Sword:FindFirstChild("Handle")
    local SelectionBox = Instance.new("SelectionBox")
    SelectionBox.Parent = Handle
    SelectionBox.Adornee = Handle
    Handle.Massless = true
    Handle.Size = Vector3.new(50, 50, ReachVector)
    SelectionBox = SelectionBox
end

local function FindSword()
    for i,v in pairs(Backpack:GetChildren()) do
        local Handle = v:FindFirstChild("Handle")
        if Handle then
            SwordName = v.Name
            SetupReach(v)
            break
        end
    end
end

Player.CharacterAdded:Connect(FindSword)
FindSword()
wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "REACH ACTIVATED";
Text = "✅";
})
end)

Heavy.Name = "Heavy"
Heavy.Parent = main
Heavy.BackgroundColor3 = Color3.new(1,1, 1)
Heavy.Position = UDim2.new(0.614457846, 0, 0.379146934, 0)
Heavy.Size = UDim2.new(0, 110, 0, 50)
Heavy.Font = Enum.Font.GothamBold
Heavy.Text = "Heavy"
Heavy.TextColor3 = Color3.new(0, 0, 0)
Heavy.TextScaled = true
Heavy.TextSize = 14
Heavy.TextWrapped = true
Heavy.MouseButton1Down:connect(function()
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Heavy
local SelectionBoxObject
local HandleObject
local SelectionBoxKeybind = Enum.KeyCode.E --no need to change this, doesn't work
local ReachVector = 7 --Minimum reach is 7
local Player = Players.LocalPlayer
local Backpack = Player:FindFirstChild("Backpack")
repeat
    wait()
until Backpack

local function SetupReach(Sword)
    local Handle = Sword:FindFirstChild("Handle")
    local SelectionBox = Instance.new("SelectionBox")
    SelectionBox.Parent = Handle
    SelectionBox.Adornee = Handle
    Handle.Massless = true
    Handle.Size = Vector3.new(50, 50, ReachVector)
    SelectionBox = SelectionBox
end

local function FindSword()
    for i,v in pairs(Backpack:GetChildren()) do
        local Handle = v:FindFirstChild("Handle")
        if Handle then
            SwordName = v.Name
            SetupReach(v)
            break
        end
    end
end

Player.CharacterAdded:Connect(FindSword)
FindSword()

wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "REACH ACTIVATED";
Text = "✅";
})
end)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.new(1, 1, 1)
close.Position = UDim2.new(0.879518092, 0, 0, 0)
close.Size = UDim2.new(0, 40, 0, 31)
close.Font = Enum.Font.GothamBlack
close.Text = "Close"
close.TextColor3 = Color3.new(0, 0, 0)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true
close.MouseButton1Down:connect(function()
main.Visible = false
openmain.Visible = true
end)

openmain.Name = "openmain"
openmain.Parent = ScreenGui
openmain.BackgroundColor3 = Color3.new(1, 1, 1)
openmain.Position = UDim2.new(.001, 0, .79, 0)
openmain.Size = UDim2.new(0, 100, 0, 28)
openmain.Active = true
openmain.Draggable = true

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(1, 1, 1)
open.Size = UDim2.new(0, 100, 0, 28)
open.Font = Enum.Font.GothamBold
open.Text = "OPEN"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 18
open.TextWrapped = true
open.MouseButton1Down:connect(function()
openmain.Visible = false
main.Visible = true
end)

wait(1)
game.StarterGui:SetCore("SendNotification", {
Title = "Made By Balligusapo";
Text = "Do Not Execute The Script While Using The Sword";
})