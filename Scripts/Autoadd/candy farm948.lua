print("script is loaded")
game.Workspace.Game.Effects.Tickets.DescendantAdded:Connect(function(d)
    if d:IsA("BasePart") and d.Name == "HumanoidRootPart" then
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = d.CFrame
    end
end)