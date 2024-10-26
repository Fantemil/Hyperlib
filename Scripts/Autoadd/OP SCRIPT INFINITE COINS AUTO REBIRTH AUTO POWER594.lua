local args = {
    [1] = workspace.eggs.pirateEgg
}

game:GetService("ReplicatedStorage").HatchServer:InvokeServer(unpack(args))
