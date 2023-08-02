local plr = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(plr, v.Parent, 0)
    end
end