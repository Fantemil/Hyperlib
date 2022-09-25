 local c = game.Players.LocalPlayer.PlayerGui.Configuration.UnitPlaceable
c.Changed:Connect(function()
    c.Value = true
end)
workspace.Towers.DescendantAdded:Connect(function(v)
    wait()
    if v.Name == "UnitPlacebox" then
        v:Destroy()
    end
end)