local name = "silly"

local args = {
    [1] = name
}

game:GetService("ReplicatedStorage"):WaitForChild("NameEvent"):FireServer(unpack(args))
