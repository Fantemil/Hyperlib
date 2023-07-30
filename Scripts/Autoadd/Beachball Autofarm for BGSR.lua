for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do 
    v:Disable()
end

for i,v in pairs(workspace.PickupAreas:GetDescendants()) do
    if v:IsA("BasePart") then
        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end

workspace.PickupAreas.DescendantAdded:Connect(function(beachball)
    if beachball:IsA("BasePart") then
        beachball.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end)