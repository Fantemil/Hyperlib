local bool = false
local num = 99999999999999999
local remote = "Cash"

for _,v in pairs(game.Players:GetChildren()) do
game:GetService("ReplicatedStorage").MoneyRequest:FireServer(bool, num, remote, v)
end