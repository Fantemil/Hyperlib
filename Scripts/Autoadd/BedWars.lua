while wait() do
    for i,v in pairs(workspace:FindFirstChild("Beds", true):GetChildren()) do
        game:GetService("ReplicatedStorage").BedWars.RemoteEvent:FireServer("DamageBlock", game:GetService("Players").LocalPlayer, v.Position, v)
    end
end