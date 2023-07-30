-- Define the crouch function
local function crouch()
    -- Insert your code to get the current player's character here
    local character = ...
    
    -- Check if the player's character exists
    if character then
        -- Check if the player's character is currently crouching
        if character.HumanoidRootPart.CFrame.Y > character.HumanoidRootPart.Size.Y / 2 then
            -- If the player's character is not crouching, crouch the character
            character.Humanoid:ChangeState(Enum.HumanoidStateType.Crouching)
        end
    end
end

-- Create a UserInputService object
local userInputService = game:GetService("UserInputService")

-- Create a variable to store the device type
local deviceType = "PC"

-- Check if the user is using a mobile or tablet device
if userInputService.TouchEnabled then
    deviceType = "Mobile/Tablet"
end

-- Connect the UserInputService's InputBegan event to the crouch function
if deviceType == "PC" then
    userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
        if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.LeftControl then
            crouch()
        end
    end)
else -- For mobile and tablet devices
    userInputService.TouchTap:Connect(function(position, processed)
        if not processed then
            crouch()
        end
    end)
end

-- Create a ScreenGui in the StarterGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Crouch Script"
screenGui.Parent = game:GetService("StarterGui")

-- Create a TextLabel to display instructions for the player
local instructions = Instance.new("TextLabel")
instructions.Name = "Instructions"
instructions.Text = "Press " .. (deviceType == "PC" and "Left Control" or "Tap") .. " to crouch"
instructions.Position = UDim2.new(0.5, 0, 0.5, 0)
instructions.Size = UDim2.new(0, 200, 0, 50)
instructions.Parent = screenGui
