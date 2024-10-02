for i, v in pairs(game:GetDescendants()) do
    if v:IsA('Tool') then
        v.Parent = game:GetService('Players').LocalPlayer.Backpack
    end
end

game:GetService('Players').LocalPlayer.Character.Humanoid.Died:Connect(function()
    for i, v in pairs(game:GetService('Players').LocalPlayer.Backpack:GetDescendants()) do
        if v:IsA('Tool') then
            v.Parent = game:GetService('Teams')
        end
    end
    for i, v in pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants()) do
        if v:IsA('Tool') then
            v.Parent = game:GetService('Teams')
        end
    end
end)