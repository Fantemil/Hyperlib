local player = game.Players.LocalPlayer

for _, child in ipairs(player:GetChildren()) do
    if child:IsA("BoolValue") then
        child.Value = true
    end
end