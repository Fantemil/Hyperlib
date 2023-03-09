local args = {
   [1] = game:GetService("ReplicatedStorage").Items.food
}

game:GetService("ReplicatedStorage").buyTool:FireServer(unpack(args))