game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(722.461243, 50.6999931, 409.01767, -0.110966474, -7.60800631e-08, 0.993824124, 2.68392553e-09, 1, 7.68525155e-08, -0.993824124, 1.11954028e-08, -0.110966474)

local sword = game.Players.LocalPlayer.Character:WaitForChild("Sword")

while task.wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= "NotZyrex" and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            firetouchinterest(v.Character.HumanoidRootPart, sword.Handle, 1)
            firetouchinterest(v.Character.HumanoidRootPart, sword.Handle, 0)
        end
    end
end