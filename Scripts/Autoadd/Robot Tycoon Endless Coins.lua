local amount = -9e9 -- amount of coins u will get, change this if u want more or less, keep it "negative" or else it wont work
local sword = "WindSword" -- name of the sword, check in the shop
local numberofsword = 1 -- number of sword in the shop
game:GetService("ReplicatedStorage").RemoteEvents.SwordPurchased:FireServer(numberofsword,sword,amount)