local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Function to spawn a part below the player
local function spawnPart()
    local part = Instance.new("Part")
    part.Size = Vector3.new(5, 1, 5) -- Size of the part
    part.Position = character.PrimaryPart.Position - Vector3.new(0, 3, 0) -- Position below the player
    part.Anchored = true -- Prevent the part from falling
    part.CanCollide = true -- Allow the player to stand on it
    part.BrickColor = BrickColor.new("Bright blue") -- Color of the part
    part.Parent = workspace -- Parent the part to the workspace
end

-- Set up a way to call spawnPart when you want
-- Replace "KEY" with the desired key (e.g., "F" or "G")
local userInputService = game:GetService("UserInputService")
userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.F then -- Change this to the key you want to use
            spawnPart()
        end
    end
end)
