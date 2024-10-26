-- For Educational Purposes
-- Fake IP Address Logger by ChatGPT

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

-- Simulated function to get a player's IP address
local function getSimulatedIPAddress(player)
    -- Generate a fake IP address for demonstration purposes
    return string.format("%d.%d.%d.%d", math.random(1, 255), math.random(1, 255), math.random(1, 255), math.random(1, 255))
end

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "IPLoggerGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the draggable frame
local draggableFrame = Instance.new("Frame")
draggableFrame.Size = UDim2.new(0, 300, 0, 400)
draggableFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
draggableFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
draggableFrame.Active = true
draggableFrame.Draggable = true
draggableFrame.Parent = screenGui

-- Create the ScrollFrame
local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, -20, 1, -20)
scrollFrame.Position = UDim2.new(0, 10, 0, 10)
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollFrame.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
scrollFrame.Parent = draggableFrame

-- Create a UIListLayout to list IP addresses vertically
local listLayout = Instance.new("UIListLayout")
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Parent = scrollFrame

-- Function to add a new IP address to the ScrollFrame
local function addIPAddressToLog(ipAddress)
    local ipLabel = Instance.new("TextLabel")
    ipLabel.Size = UDim2.new(1, 0, 0, 30)
    ipLabel.BackgroundTransparency = 1
    ipLabel.Text = ipAddress
    ipLabel.TextColor3 = Color3.new(1, 1, 1)
    ipLabel.Parent = scrollFrame

    -- Update the CanvasSize to accommodate the new label
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y)
end

-- Event listener for new players joining
Players.PlayerAdded:Connect(function(player)
    local ipAddress = getSimulatedIPAddress(player)
    addIPAddressToLog(player.Name .. ": " .. ipAddress)
end)

-- Testing: simulate players joining
for i = 1, 5 do
    local fakePlayer = Instance.new("Player")
    fakePlayer.Name = "Player" .. i
    addIPAddressToLog(fakePlayer.Name .. ": " .. getSimulatedIPAddress(fakePlayer))
end

-- Handle window resizing
RunService.RenderStepped:Connect(function()
    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y)
end)