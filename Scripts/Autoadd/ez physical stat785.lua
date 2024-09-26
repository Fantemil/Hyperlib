test = true
while test == true do
local args = { [1] = "King Kai"}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("giveQuests"):FireServer(unpack(args))
local args = { [1] = "Master Roshi"}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("giveQuests"):FireServer(unpack(args))
local args = { [1] = "Kami-Sama"}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("giveQuests"):FireServer(unpack(args))

wait() 
end