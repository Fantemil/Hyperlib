local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local cursorLocked = false
local connection

-- Create and set up the GUI
local gui = Instance.new("ScreenGui")
local textLabel = Instance.new("TextLabel")

gui.Name = "CursorLockGui"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

textLabel.Name = "LockStatusLabel"
textLabel.Parent = gui
textLabel.Text = "Cursor Unlocked"
textLabel.Size = UDim2.new(0, 200, 0, 50)
textLabel.Position = UDim2.new(0.5, -100, 0, 0)
textLabel.TextScaled = true
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.Visible = true

-- Function to find the closest player's head
local function findClosestPlayerHead()
    local closestPlayer = nil
    local closestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local head = player.Character.Head
            local distance = (LocalPlayer.Character.Head.Position - head.Position).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = head
            end
        end
    end

    return closestPlayer
end

-- Function to lock the cursor to the closest player's head
local function lockCursorToClosestHead()
    local closestHead = findClosestPlayerHead()
    if closestHead then
        UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
        connection = RunService.RenderStepped:Connect(function()
            local camera = workspace.CurrentCamera
            camera.CFrame = CFrame.new(camera.CFrame.Position, closestHead.Position)
        end)
        textLabel.Text = "Cursor Locked"
    end
end

-- Function to unlock the cursor
local function unlockCursor()
    UserInputService.MouseBehavior = Enum.MouseBehavior.Default
    if connection then
        connection:Disconnect()
        connection = nil
    end
    textLabel.Text = "Cursor Unlocked"
end

-- Function to handle mouse button press
local function onMousePress(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            if cursorLocked then
                unlockCursor()
            else
                lockCursorToClosestHead()
            end
            cursorLocked = not cursorLocked
        end
    end
end

UserInputService.InputBegan:Connect(onMousePress)
