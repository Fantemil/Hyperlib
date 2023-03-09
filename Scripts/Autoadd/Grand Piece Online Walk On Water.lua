local water = game:GetService("Workspace").Effects.Water
water:Clone().Parent = game:GetService("Workspace").Effects
wait(0.1)
for i , v in pairs (game:GetService("Workspace").Effects:GetChildren()) do
    if v.Name == "Water" then
        v.CanCollide = true
    end
end