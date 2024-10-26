-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.CoreGui
screenGui.ResetOnSpawn = false

-- Create the open/close button in the top-right corner
local toggleButton = Instance.new("TextButton")
toggleButton.Parent = screenGui
toggleButton.Size = UDim2.new(0, 100, 0, 50)
toggleButton.Position = UDim2.new(1, -110, 0, 10) -- Top-right corner
toggleButton.Text = "Open"
toggleButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
toggleButton.TextColor3 = Color3.new(1, 1, 1)

-- Create the frame to hold the buttons (Initially invisible)
local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(0, 150, 0, 80)  -- Compact frame size
frame.Position = UDim2.new(0.5, -75, 0.5, -40)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
frame.Visible = false -- Initially hidden

-- Create "Docks" button
local docksButton = Instance.new("TextButton")
docksButton.Parent = frame
docksButton.Size = UDim2.new(0, 150, 0, 35)  -- Smaller button size
docksButton.Position = UDim2.new(0, 0, 0, 0)
docksButton.Text = "Docks"
docksButton.BackgroundColor3 = Color3.new(0, 0.5, 0.8)
docksButton.TextColor3 = Color3.new(1, 1, 1)

-- Create "Palace" button
local palaceButton = Instance.new("TextButton")
palaceButton.Parent = frame
palaceButton.Size = UDim2.new(0, 150, 0, 35)  -- Smaller button size
palaceButton.Position = UDim2.new(0, 0, 0, 40)
palaceButton.Text = "Palace"
palaceButton.BackgroundColor3 = Color3.new(0.8, 0.5, 0)
palaceButton.TextColor3 = Color3.new(1, 1, 1)

-- Teleport locations
local docksPosition = Vector3.new(-184.79580688476562, 21.837919235229492, 540.3627319335938)
local palacePosition = Vector3.new(-178.2334747314453, 42.46976089477539, 2044.0440673828125)

-- Debugging function
local function debug(message)
    print("DEBUG: " .. message)
end

-- Function to make the player jump and teleport
local function teleportTo(location)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    -- Debugging message for starting the teleport
    debug("Making the player jump before teleporting")
    
    -- Make the player jump
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    
    -- Wait a brief moment to ensure the jump registers
    wait(0.1)
    
    -- Raise the teleportation location slightly to avoid collisions with ground
    local adjustedLocation = location + Vector3.new(0, 5, 0)
    
    -- Use PivotTo for reliable teleport
    character:PivotTo(CFrame.new(adjustedLocation))
    
    -- Debugging message after teleport
    debug("Player teleported to: " .. tostring(adjustedLocation))
end

-- Button click actions
docksButton.MouseButton1Click:Connect(function()
    debug("Docks button clicked")
    teleportTo(docksPosition)
end)

palaceButton.MouseButton1Click:Connect(function()
    debug("Palace button clicked")
    teleportTo(palacePosition)
end)

-- Toggle the visibility of the frame with the open/close button
toggleButton.MouseButton1Click:Connect(function()
    if frame.Visible then
        frame.Visible = false
        toggleButton.Text = "Open"
        debug("Frame closed")
    else
        frame.Visible = true
        toggleButton.Text = "Close"
        debug("Frame opened")
    end
end)
