local args={
	[1]="Toilets",
	[2]="GiantSwatToilet",
	[3]=false
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("MorphChange"):FireServer(unpack(args))