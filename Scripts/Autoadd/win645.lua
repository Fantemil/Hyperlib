local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Teleport function
local function teleportPlayer()
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(164, 760, -1017)
    end
end

-- Teleport the player immediately when the game starts
teleportPlayer()
