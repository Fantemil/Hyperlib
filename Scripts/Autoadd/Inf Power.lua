local args = {
    [1] = game:GetService("Players").LocalPlayer,
    [2] = 9999999999999   -- u can change the number here
}

game:GetService("ReplicatedStorage"):WaitForChild("GP"):FireServer(unpack(args))
