local Players = game:GetService("Players")
local player = Players.LocalPlayer
local UIS = game:GetService("UserInputService")

local currentSize = 12
local currentTransparency = 0.9

local function resizeAndSetTransparency(handle, size, transparency)
    if handle:IsA("BasePart") then
        handle.Size = Vector3.new(size, size, size)
        handle.Transparency = transparency
    end
end

local function resizeSwordHandles(backpack, size, transparency)
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item:FindFirstChild("Handle") then
            resizeAndSetTransparency(item.Handle, size, transparency)
        end
    end
end

local function setupBackpackListener()
    local backpack = player:WaitForChild("Backpack")

    -- Resize handles for existing items
    resizeSwordHandles(backpack, currentSize, currentTransparency)

    -- Connect to the ChildAdded event to resize handles for new items
    backpack.ChildAdded:Connect(function(child)
        if child:IsA("Tool") and child:FindFirstChild("Handle") then
            resizeAndSetTransparency(child.Handle, currentSize, currentTransparency)
        end
    end)
end

local function onCharacterAdded(character)
    -- Wait for the backpack to be available
    player:WaitForChild("Backpack")

    -- Setup the backpack listener with current values
    setupBackpackListener()
end

-- Connect to CharacterAdded event to handle respawns
player.CharacterAdded:Connect(onCharacterAdded)

-- Initial setup
if player.Character then
    onCharacterAdded(player.Character)
end

-- Create GUI
local ScreenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))

local function createSlider(name, min, max, default, callback)
    local frame = Instance.new("Frame", ScreenGui)
    frame.Size = UDim2.new(0, 200, 0, 50)
    frame.Position = UDim2.new(0, 50, 0, name == "Size" and 50 or 120)
    frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    
    local textLabel = Instance.new("TextLabel", frame)
    textLabel.Size = UDim2.new(0, 200, 0, 20)
    textLabel.Position = UDim2.new(0, 0, 0, 0)
    textLabel.Text = name
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.BackgroundTransparency = 1

    local sliderFrame = Instance.new("Frame", frame)
    sliderFrame.Size = UDim2.new(0, 180, 0, 10)
    sliderFrame.Position = UDim2.new(0, 10, 0, 30)
    sliderFrame.BackgroundColor3 = Color3.fromRGB(100, 100, 100)

    local sliderButton = Instance.new("TextButton", sliderFrame)
    sliderButton.Size = UDim2.new(0, 10, 0, 10)
    sliderButton.Position = UDim2.new((default - min) / (max - min), -5, 0, 0)
    sliderButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    sliderButton.Text = ""

    local dragging = false

    sliderButton.MouseButton1Down:Connect(function()
        dragging = true
    end)

    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local relativeX = math.clamp((input.Position.X - sliderFrame.AbsolutePosition.X) / sliderFrame.AbsoluteSize.X, 0, 1)
            sliderButton.Position = UDim2.new(relativeX, -5, 0, 0)
            callback(min + (max - min) * relativeX)
        end
    end)
end

createSlider("Size", 1, 15, currentSize, function(value)
    currentSize = value
    resizeSwordHandles(player.Backpack, currentSize, currentTransparency)
end)

createSlider("Transparency", 0, 1, currentTransparency, function(value)
    currentTransparency = value
    resizeSwordHandles(player.Backpack, currentSize, currentTransparency)
end)