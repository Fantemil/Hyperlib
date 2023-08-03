local food = 'Cookies' --Bacon, Pizzas, Pancakes, Cookies
local CookTime = 2 --starter is like 3 seconds

local ohString1 = "MotelFunds" --MotelFunds or PersonalFunds
local ohString2 = food
local ohNumber3 = 1 --quantity

game:GetService("ReplicatedStorage").Remotes.Supplies:FireServer(ohString1, ohString2, ohNumber3)
wait(.3)

local ohString1 = "Cook"
local ohInstance2 = workspace.Objects.Motel.Kitchen.Stove1
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohString1, ohInstance2, ohString3)
wait(CookTime)

local ohNil1 = nil
local ohInstance2 = workspace.Nodes.Breakfast[food][food].Foods
local ohString3 = food

game:GetService("ReplicatedStorage").Remotes.Chef:FireServer(ohNil1, ohInstance2, ohString3)