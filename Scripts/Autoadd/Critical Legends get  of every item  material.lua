for i,v in pairs(game.ReplicatedStorage.Items:GetDescendants()) do
    if v:IsA("Frame") then
        game.ReplicatedStorage.Remotes.Shop:FireServer("Buy1", {
        Cost = {Value = 0},
        Name = v.Name
        })
    end
end