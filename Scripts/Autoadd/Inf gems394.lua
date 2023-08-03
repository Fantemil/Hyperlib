_G.InfGems = true -- Change to false if you want to stop

while _G.InfGems == true do
local args = {
    [1] = 2924, -- Can change if you already bought this boat; Boat ids: 2919, 2920, 2921, 2922, 2923, 2924, 2925; Change to 2959 if you already bought the entire rebirth shop
    [2] = -10 -- Change if you want more gems
}

game:GetService("ReplicatedStorage").ServerMsg.BuyShopGoods:InvokeServer(unpack(args))
wait(0.1) -- Change if you're lagging
end