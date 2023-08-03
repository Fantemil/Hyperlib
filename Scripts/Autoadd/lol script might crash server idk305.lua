for i,v in pairs(game.Workspace:GetDescendants()) do
    if v and v.Name == "Plank" then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v,1)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v,0)
    end
end