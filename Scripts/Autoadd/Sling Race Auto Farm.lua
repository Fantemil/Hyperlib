while task.wait() do
for i,v in pairs(game:GetService("Workspace").PowerPads:GetDescendants()) do
    if v.Name == 'Part' then
        firetouchinterest(game.Players.LocalPlayer.Character.Head, v, 0)
    end
end
end