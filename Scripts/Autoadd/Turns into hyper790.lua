local args = {
    [1] = "Hyper"
}

game:GetService("ReplicatedStorage").Remotes.TransformRequest:InvokeServer(unpack(args))
