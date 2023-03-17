local args = {
   [1] = game:GetService("Players"):WaitForChild("Username1"):WaitForChild("leaderstats"):WaitForChild("Points"),
   [2] = -999999999
}

game:GetService("Players"):WaitForChild("Username2"):WaitForChild("PlayerGui"):WaitForChild("Stats"):WaitForChild("Frame"):WaitForChild("Subtract"):FireServer(unpack(args))