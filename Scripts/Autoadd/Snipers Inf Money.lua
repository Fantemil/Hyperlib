local args = {
   [1] = game:GetService("Players").LocalPlayer,
   [2] = "999999999999" --change to your liking 
}

game:GetService("ReplicatedStorage").updateCash:FireServer(unpack(args))