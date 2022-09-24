game:GetService("RunService").RenderStepped:Connect(function()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v.Name == "AccessoryWeld" then
            v:Destroy()
        elseif v.Name == "OriginalSize" then
            v:Destroy()
        elseif v.Name == "Rod" then
            v:Destroy()
        elseif v.Name == "Color" then
            v:Destroy()
        elseif v.Name == "Part" and v.Parent == "Rock" or v.Parent == "Magnetite Crossbow" then
            v:Destroy()
        elseif v.Name == "Draw" then
            v:Destroy()
        elseif v.Name == "Union" then
            v:Destroy()
        elseif v.Name == "Rest" then
            v:Destroy()
        end
    end
end)