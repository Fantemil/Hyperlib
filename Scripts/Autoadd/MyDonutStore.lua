 getgenv().Money = true
while getgenv().Money do
game.ReplicatedStorage.Events.CrateClaim:FireServer("Cash",5000)
wait()
end