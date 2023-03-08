for _,v in pairs(game:GetService("Workspace").Creatures:GetChildren()) do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
    wait(0.1)
end