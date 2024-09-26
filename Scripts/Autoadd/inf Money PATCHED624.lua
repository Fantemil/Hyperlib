local args = {
  [1] = "Cash",
  [2] = ''..math.huge
} game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Settings"):FireServer(unpack(args))