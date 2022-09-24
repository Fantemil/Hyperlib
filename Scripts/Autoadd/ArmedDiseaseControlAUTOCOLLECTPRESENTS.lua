while wait() do
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Present" then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
        end
    end
end