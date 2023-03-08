local LocalPlayer = game.Players.LocalPlayer

getgenv().run_loopy_pls2 = true

function is_within_distance(zombie, dist)
    if zombie:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return (LocalPlayer.Character.HumanoidRootPart.Position - zombie.HumanoidRootPart.Position).Magnitude <= (dist or 30)
    end
    return false
end


while task.wait(.1) and run_loopy_pls2 do
    for i,v in pairs(workspace.Ignore.Zombies:GetChildren()) do
        if v and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and is_within_distance(v, 80) then
            game:GetService("ReplicatedStorage").Framework.Remotes.KnifeHitbox:FireServer(v.Humanoid)
        end
    end
end