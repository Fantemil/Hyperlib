while true do
wait(.2)

game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, 10)
game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, 10000000)

end