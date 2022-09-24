-- All cooking is free - Ezpi#0474
local Event = game:GetService("ReplicatedStorage").Remotes.Supplies
local Stuff = {"Pizzas";"Cookies";"Pancakes";"Bacon";"Banana Smoothie";"Strawberry Smoothie";"Coffe";"Water"}
for _, Supply in next, Stuff do
    Event:FireServer("MotelFunds", Supply, 1.1)
end