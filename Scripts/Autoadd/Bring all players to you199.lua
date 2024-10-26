local targetPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

for _, player in ipairs(game.Players:GetPlayers()) do
    -- Check if the player is not yourself
    if player ~= game.Players.LocalPlayer then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
    end
end