 for i,v in pairs(game:GetService('Teams'):GetDescendants()) do
    if v:IsA('Tool') then
        v.Parent = game:GetService('Players').LocalPlayer.Backpack
    end
end

game:GetService('Players').LocalPlayer.Character.Humanoid.Died:connect(function()
    for i,v in pairs(game:GetService('Players').LocalPlayer.Backpack:GetDescendants()) do
        if v:IsA('Tool') then
            v.Parent = game:GetService('Teams')
        end
    end
end)