local args = {
   [1] = -999999999999999999,
   [2] = "1 Stick",
   [3] = true
}

game:GetService("ReplicatedStorage").Shop.Events.BuyItem:FireServer(unpack(args))
 
wait(0.1)
-- rebirths
-- change rebirths to how much you want here where it says local A_1 = 1000000
local A_1 = 1000000
local Event = game:GetService("ReplicatedStorage").RebirthEvent
Event:FireServer(A_1)

wait(0.3)
-- money u get after rebirthing
local args = {
   [1] = -999999999999999999,
   [2] = "1 Stick",
   [3] = true
}

game:GetService("ReplicatedStorage").Shop.Events.BuyItem:FireServer(unpack(args))