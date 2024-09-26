local args = {
    [1] = -9999 -- any amount yay
}

game:GetService("ReplicatedStorage"):WaitForChild("EventsFolder"):WaitForChild("ShopEvents"):WaitForChild("ShopEvent"):FireServer(unpack(args))
