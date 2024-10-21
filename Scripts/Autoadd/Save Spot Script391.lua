local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.5, -25)
button.Text = "Save Spot"
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Parent = screenGui

local savedPosition = nil

local function savePosition()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    savedPosition = humanoidRootPart.Position

    button.Text = "Teleport to saved spot"
end

local function teleportToSavedSpot()
    if savedPosition then
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        humanoidRootPart.CFrame = CFrame.new(savedPosition)

        button.Text = "Save Spot"
        savedPosition = nil
    end
end

button.MouseButton1Click:Connect(function()
    if savedPosition then
        teleportToSavedSpot()
    else
        savePosition()
    end
end)

button.Draggable = true