while true do
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
        end
    end
    wait(0.1) 
end
