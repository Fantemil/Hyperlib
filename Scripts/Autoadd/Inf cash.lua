local args = {
    [1] = game:GetService("Players").LocalPlayer,
    [2] = math.huge
}

game:GetService("ReplicatedStorage").NL:FireServer(unpack(args))