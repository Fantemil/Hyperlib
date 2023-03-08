while wait() do
    pcall(function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if string.find(v.Name, "Visual") or string.find(v.Name, "Emerald") then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
             firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
            end
        end
    end)
end