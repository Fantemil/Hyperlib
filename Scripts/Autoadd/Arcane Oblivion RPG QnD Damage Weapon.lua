for i,v in pairs(game:GetService("ReplicatedStorage").GameItems:GetChildren()) do
     if v.Name == "PIG" then
        if require(v.WeaponConfig).Cost < 1 then
            game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(v.Name)
        end
    end
end