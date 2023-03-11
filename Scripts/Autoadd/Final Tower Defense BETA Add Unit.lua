local args = {
   [1] = "AddUnit",
   [2] = "unit of your choice", ---- find in ReplicatedStorage
   [3] = 90
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ConfigureUnits"):FireServer(unpack(args))