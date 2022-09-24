local args = {
   [1] = 99999999
}

game:GetService("ReplicatedStorage").RemoteFunctions.PlayerTransact:InvokeServer(unpack(args))