-- [Open Source] Realtime Coordinates Gui (by ChatGPT)

-- Create GUI elements
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CoordLabel = Instance.new("TextLabel")

local UIS = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- Function to update coordinates
local function updateCoordinates()
    if Character and Character.Parent then
        HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        local position = HumanoidRootPart.Position
        CoordLabel.Text = string.format("X: %.2f\nY: %.2f\nZ: %.2f", position.X, position.Y, position.Z)
    else
        -- Character might be nil after respawn, reset GUI
        CoordLabel.Text = "Character not found"
    end
end

-- Properties
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Frame.BorderSizePixel = 0

Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Title.BorderSizePixel = 0
Title.Text = "Coordinates"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14

CoordLabel.Parent = Frame
CoordLabel.Position = UDim2.new(0, 0, 0, 30)
CoordLabel.Size = UDim2.new(1, 0, 1, -30)
CoordLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CoordLabel.BorderSizePixel = 0
CoordLabel.TextColor3 = Color3.new(1, 1, 1)
CoordLabel.TextSize = 12
CoordLabel.TextWrapped = true

-- Draggable functionality
local dragToggle, dragInput, dragStart, startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragToggle = true
        dragStart = input.Position
        startPos = Frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
            end
        end)
    end
end)

Title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragToggle then
        updateInput(input)
    end
end)

-- Update coordinates in real-time
game:GetService("RunService").RenderStepped:Connect(function()
    updateCoordinates()
end)

-- Reconnect RenderStepped event if character is reset
Player.CharacterAdded:Connect(function(char)
    Character = char
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    updateCoordinates()
end)

-- Initial update
updateCoordinates()