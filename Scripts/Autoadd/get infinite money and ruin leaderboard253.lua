local RuinLeaderboard = true
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyClothingItem"):FireServer("Shirts", 1, -math.huge)
while task.wait() and RuinLeaderboard do
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DonateMoney"):FireServer(10000000000)
end