local wanted = "Nika"

local args = {
   [1] = "Purchase2",
   [2] = wanted,
   [3] = "Light"
}

game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("FruitShop"):WaitForChild("Frame"):WaitForChild("Frame"):WaitForChild("PurchaseFruitRE"):FireServer(unpack(args))