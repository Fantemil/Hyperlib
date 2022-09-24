for i,v in pairs(game:GetService("Workspace").Fidgets:GetDescendants()) do
    if v.Name == "TouchInterest" then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
    end
end