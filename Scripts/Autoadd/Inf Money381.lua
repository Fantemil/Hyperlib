-- By me
-- By Zous

local animal = "NewCamel3"  
local price = -10000000000  -- put here whatever you want
local Buy = game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("BuyAnimal")

if animal ~= nil and animal ~= "" then
    Buy:FireServer(animal, price)
end
