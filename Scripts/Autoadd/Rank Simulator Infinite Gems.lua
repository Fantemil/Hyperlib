local args = {
   [1] = "Upgrade2",
   [2] = -62500000000000000000000
}

game:GetService("ReplicatedStorage").GameClient.Remotes.Upgrader:InvokeServer(unpack(args))