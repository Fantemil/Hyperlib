local args = {
   [1] = game:GetService("Players").LocalPlayer,
   [2] = 10000000000 -- insert any value here
}

game:GetService("ReplicatedStorage"):WaitForChild("GP"):FireServer(unpack(args))