-- Get the local player
local player = game.Players.LocalPlayer

-- Wait until the character is loaded
while not player.Character do
    wait()
end

-- Get the character's humanoid root part (this is typically the part around which the character is built)
local characterRootPart = player.Character:WaitForChild("HumanoidRootPart")

-- Get the "Coins" folder from the Workspace
local coinsFolder = game:GetService("Workspace").Coins

-- Loop through each item in the "Coins" folder
for _, item in pairs(coinsFolder:GetChildren()) do
    -- Check if the item is a MeshPart and named "Coins"
    if item:IsA("MeshPart") and item.Name == "Coins" then
        -- Teleport the coin to the player's current position
        item.Position = characterRootPart.Position
    end
end
