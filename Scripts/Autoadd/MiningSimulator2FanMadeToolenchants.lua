local args = {
   [1] = "Backpack", -- Backpack / Tool
   [2] = "Small Backpack", -- Backpack/Tool Name
   [3] = "Deep Pockets" -- Backpacks; Deep Pockets Tools; Speed, Ore Duplicator, Strength
}

game:GetService("ReplicatedStorage").Events.EnchantGear:FireServer(unpack(args))