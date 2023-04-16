while wait(1) do
    local players = game.Players:GetPlayers()

    for i, v in pairs(players) do
        local esp = Instance.new("Highlight")
        esp.Name = v.Name
        esp.FillTransparency = 0.5
        esp.FillColor = Color3.new(0, 0, 0)
        esp.OutlineColor = Color3.new(179, 198, 187) -- Change color here
        esp.OutlineTransparency = 0
        esp.Parent = v.Character
    end
end