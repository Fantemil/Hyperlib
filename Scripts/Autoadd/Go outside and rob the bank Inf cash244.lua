local args = {
    [1] = -9000,    -- You can change the number if you want, just make sure its negative not positive.
    [2] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").WasteCash:FireServer(unpack(args))
