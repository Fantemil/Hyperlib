local args = {
    [1] = -100000000000, -- dont use math.huge it will make your points negative
    [2] = 8
}
game:GetService("ReplicatedStorage").GameValues.SendItem:FireServer(unpack(args))