 local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function()
    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(11)
end)
for i,v in pairs(workspace:FindFirstChild("Beds", true):GetChildren()) do
    if not game:GetService("ReplicatedStorage").BedWars.Teams:FindFirstChild(v.Name):FindFirstChild(game.Players.LocalPlayer.Name) then
        repeat wait()
            game.Players.LocalPlayer.Character.PrimaryPart.CFrame = v.CFrame + Vector3.new(0,5,0)
            game:GetService("ReplicatedStorage").BedWars.RemoteEvent:FireServer("DamageBlock", game:GetService("Players").LocalPlayer, v.Position, v)
        until v.Parent == nil
    end
end
local team = game:GetService("ReplicatedStorage").BedWars.Teams:FindFirstChild(game.Players.LocalPlayer.Name, true).Parent
for i,v in pairs(game.Players:GetPlayers()) do
    if not team:FindFirstChild(v.Name) and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
        repeat wait()
            game.Players.LocalPlayer.Character.PrimaryPart.CFrame = v.Character.HumanoidRootPart.CFrame + Vector3.new(0,5,0)
            game:GetService("ReplicatedStorage").BedWars.RemoteEvent:FireServer("DamagePlayer", game:GetService("Players").LocalPlayer, v)
        until not v.Character or not v.Character:FindFirstChild("HumanoidRootPart") or not v.Character:FindFirstChild("Humanoid") or v.Character.Humanoid.Health <= 0 or v.Character.HP.Value <= 0
    end
end