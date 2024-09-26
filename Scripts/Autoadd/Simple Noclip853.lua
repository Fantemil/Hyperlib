local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait() -- Waits for the character if not loaded

for _, part in ipairs(character:GetDescendants()) do
    if part:IsA("BasePart") then
        part.CanCollide = false
    end
end