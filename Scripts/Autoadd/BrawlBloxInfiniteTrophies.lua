local trophies = 1000000000000000000
game:GetService'ReplicatedStorage'.RemoteEvents.BuyEvent:FireServer(game:GetService'Players'.LocalPlayer.leaderstats.Trophies, game:GetService'Players'.LocalPlayer.leaderstats.Trophies.Value)
game:GetService'ReplicatedStorage'.RemoteEvents.BuyEvent:FireServer(game:GetService'Players'.LocalPlayer.leaderstats.Trophies, -trophies)