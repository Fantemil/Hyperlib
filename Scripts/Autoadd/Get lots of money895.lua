local args = {
    [1] = 98626 -- Edit the number to gain less/more money put - before it to lose money, tho why would you?
}

game:GetService("ReplicatedStorage").treasureChestCollection:FireServer(unpack(args))