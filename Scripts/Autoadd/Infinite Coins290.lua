local args = {
    [1] = 999999999999999999, --put here what ever you want the one i put there is max put math.huge for infinite 
    [2] = workspace.earth.collectables.coin
}

game:GetService("ReplicatedStorage").coinCollect:FireServer(unpack(args))
