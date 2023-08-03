local args = {
   [1] = "1.5RELEASED",
   [2] = 9999999
}

game:GetService("ReplicatedStorage").Remotes.CodesClaimed:FireServer(unpack(args))