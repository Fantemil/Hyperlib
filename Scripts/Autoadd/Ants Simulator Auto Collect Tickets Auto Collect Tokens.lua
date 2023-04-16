while task.wait() do
    for i, v in pairs(game:GetService("Workspace").ClientTokens:GetChildren()) do
        v.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
    end
    
    for i, v in pairs(game:GetService("Workspace").TokensRewards:GetChildren()) do
        v.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
    end

end