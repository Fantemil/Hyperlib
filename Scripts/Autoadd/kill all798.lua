--This is for seeker team ony
-- made by uwy5
-- discord.gg/FJQXYfaAh2

for i, v in game.Players:GetPlayers() do
    if v.Character:FindFirstChild("Prop") then
        if v.Character.Humanoid.Health == 0 then continue end
        repeat task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
        until (v.Character.Humanoid.Health == 0)
    end
end