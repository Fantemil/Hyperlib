local A_1 = "RedeemQuest"
local A_2 = "100CrossBarsMilestone"
local A_3 = 61000000
local Event = game:GetService("ReplicatedStorage").Action
Event:FireServer(A_1, A_2, A_3)
wait(1)
local A_1 = "Hat"
local A_2 = "Rainbow"
game:GetService("ReplicatedStorage").Purchase:FireServer(A_1, A_2)
wait(.1)
local A_1 = "Ball"
local A_2 = "Rainbow"
game:GetService("ReplicatedStorage").Purchase:FireServer(A_1, A_2)
wait(.1)
local A_1 = "Cleats"
local A_2 = "Rainbow"
game:GetService("ReplicatedStorage").Purchase:FireServer(A_1, A_2)
wait(.1)
local A_1 = "Uniform"
local A_2 = "Rainbow"
game:GetService("ReplicatedStorage").Purchase:FireServer(A_1, A_2)