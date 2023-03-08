attack = true
while attack do wait()
pcall(function()

local ohString1 = "Swing"
local ohNumber2 = 1

game:GetService("ReplicatedStorage").Remotes.Server.Initiate_Server:FireServer(ohString1, ohNumber2)
end)
end