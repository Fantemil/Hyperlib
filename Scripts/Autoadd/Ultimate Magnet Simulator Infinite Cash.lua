local money = 399000000000000000
game:GetService("ReplicatedStorage").Communication.CoinEvents.BegCoins:FireServer(money)
wait(.3)
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)