-- This script will create a BillboardGui above each player's head displaying their name

-- Wait for the player to load
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Create a function to add name display to each player's head
local function addNameDisplay(character)
    -- Wait for the head to be available
    local head = character:WaitForChild("Head")
    
    -- Create a BillboardGui to display the name
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "NameDisplay"
    billboard.Parent = head
    billboard.Adornee = head
    billboard.Size = UDim2.new(0, 200, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    billboard.AlwaysOnTop = true

    -- Create a TextLabel to show the player's name
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Parent = billboard
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextStrokeTransparency = 0.5
    nameLabel.Text = player.Name
end

-- Add name display when the character spawns
character:WaitForChild("Humanoid").Died:Connect(function()
    -- Remove the name display when the player dies
    local billboard = character:FindFirstChild("Head"):FindFirstChild("NameDisplay")
    if billboard then
        billboard:Destroy()
    end
end)

addNameDisplay(character)

-- Listen for the player respawning
player.CharacterAdded:Connect(function(char)
    addNameDisplay(char)
end)