for i,v in pairs(game:service'Players':GetPlayers()) do
game:GetService("ReplicatedStorage").warn:FireServer(v.Name, "reason")
end