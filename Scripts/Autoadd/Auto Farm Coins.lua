while true do
    local player = game.Players.LocalPlayer
    local Coins = game:GetService("Workspace").GameObjects:FindFirstChild("Credit")

    if Coins then
        player.Character.HumanoidRootPart.CFrame = Coins.CFrame
    end

    wait() -- Wait for a short duration before attempting again.
end
