local player = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GiveReward = ReplicatedStorage.RewardEvents.GiveReward

-- Create GUI
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Active = true
frame.Draggable = true

local startButton = Instance.new("TextButton", frame)
startButton.Size = UDim2.new(1, 0, 0.5, 0)
startButton.Text = "Start"
startButton.BackgroundColor3 = Color3.new(0, 1, 0)

local stopButton = Instance.new("TextButton", frame)
stopButton.Size = UDim2.new(1, 0, 0.5, 0)
stopButton.Position = UDim2.new(0, 0, 0.5, 0)
stopButton.Text = "Stop"
stopButton.BackgroundColor3 = Color3.new(1, 0, 0)

local toggleButton = Instance.new("TextButton", screenGui)
toggleButton.Size = UDim2.new(0, 100, 0, 50) -- Increased size
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.Text = "Open"
toggleButton.BackgroundColor3 = Color3.new(0, 0, 1)

local isRunning = false
local isOpen = true

-- Function to give rewards quickly
local function giveRewards()
    while isRunning do
        for i = 9, 1, -1 do
            if not isRunning then return end
            local success, err = pcall(function()
                GiveReward:FireServer(i)
            end)
            if not success then
                warn("Error giving reward: " .. err)
            end
            wait(0.01) -- Add a short wait to prevent overwhelming the server
        end
    end
end

-- Start button functionality
startButton.MouseButton1Click:Connect(function()
    if isRunning then return end
    isRunning = true
    startButton.Visible = false
    stopButton.Visible = true
    giveRewards() -- Start giving rewards
end)

-- Stop button functionality
stopButton.MouseButton1Click:Connect(function()
    isRunning = false
    startButton.Visible = true
    stopButton.Visible = false
end)

-- Toggle button functionality
toggleButton.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    frame.Visible = isOpen
    toggleButton.Text = isOpen and "Close" or "Open"
end)

-- Initial visibility
stopButton.Visible = false
frame.Visible = true -- Initially show the frame
