for _,v in pairs(workspace.ScavengerHunt.IheartScavengerHunt:GetChildren()) do
    if v:IsA("Model") then wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:GetPivot()
    end
end