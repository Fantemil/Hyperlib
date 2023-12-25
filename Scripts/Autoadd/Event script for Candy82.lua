-- Create GUI
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "PresentTeleportGUI"
gui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 100, 0, 70)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
frame.Parent = gui

local startButton = Instance.new("TextButton")
startButton.Size = UDim2.new(0, 80, 0, 30)
startButton.Position = UDim2.new(0, 10, 0, 10)
startButton.BackgroundColor3 = Color3.new(0, 1, 0)
startButton.Text = "Start"
startButton.TextColor3 = Color3.new(1, 1, 1)
startButton.Parent = frame

local stopButton = Instance.new("TextButton")
stopButton.Size = UDim2.new(0, 80, 0, 30)
stopButton.Position = UDim2.new(0, 10, 0, 40)
stopButton.BackgroundColor3 = Color3.new(1, 0, 0)
stopButton.Text = "Stop"
stopButton.TextColor3 = Color3.new(1, 1, 1)
stopButton.Parent = frame

-- Variables
local isTeleporting = false
local teleportDuration = 0.2

-- Function to teleport
local function teleportToPresent()
    while isTeleporting do
        for _, presentSpawn in pairs(game.Workspace.PresentSpawnLocations:GetChildren()) do
            if presentSpawn:IsA("BasePart") then
                local position = presentSpawn.Position
                player.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(position)
                wait(teleportDuration)
            end
        end

        -- Check if there are no more presents to collect, then attempt to server hop
        if #game.Workspace.PresentSpawnLocations:GetChildren() == 0 then
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        end
    end
end

-- Start button click event
startButton.MouseButton1Click:Connect(function()
    if not isTeleporting then
        isTeleporting = true
        teleportToPresent()
    end
end)

-- Stop button click event
stopButton.MouseButton1Click:Connect(function()
    isTeleporting = false
end)
