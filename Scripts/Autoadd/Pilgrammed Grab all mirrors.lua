for i,v in pairs(game.Workspace.Mirrors:GetDescendants()) do
    if v:IsA("ProximityPrompt") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
        task.wait(0.1)
        fireproximityprompt(v, 1)
        task.wait(0.1)
    end
end