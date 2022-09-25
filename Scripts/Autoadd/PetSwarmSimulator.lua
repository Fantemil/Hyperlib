_G.Toggle = true

while _G.Toggle do
    for _, v in pairs(game.Players.LocalPlayer.Character.Pets:GetChildren()) do
        if v:FindFirstChild("State").Value == "Follow" then
            game:GetService("ReplicatedStorage").Remotes.Functions.CollectionRF:InvokeServer("CollectFood", game:GetService("Workspace").Zones.Zone6.FoodSpawns:FindFirstChild("Part"), v)
            wait(0.5)
        end
    end
    wait()
end 