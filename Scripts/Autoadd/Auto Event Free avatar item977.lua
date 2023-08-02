game:GetService("ReplicatedStorage").Communication.Events['']:Destroy()
for i,v in pairs(game:GetService("ReplicatedStorage").Communication.Events:GetChildren()) do
    wait()
    local ohNumber1 = 10000
    v:FireServer(ohNumber1)
end
wait()
game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)