for i,v in game.Players.LocalPlayer:GetAttributes() do
    if type(v) ~= "boolean" then
        game.Players.LocalPlayer:SetAttribute(i, tonumber(math.huge))
    end
end