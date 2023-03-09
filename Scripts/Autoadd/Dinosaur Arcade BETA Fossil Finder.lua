for i,v in pairs(game:GetService("Workspace").GameMap.Fossils:GetDescendants()) do
    if v.Name == "Position" then
        wait(12)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Value)
end
end