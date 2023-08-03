local args = {
    [1] = -6942069420, -- money
    [2] = "Magic Box"
}

game:GetService("ReplicatedStorage").BuyEvent:InvokeServer(unpack(args))
