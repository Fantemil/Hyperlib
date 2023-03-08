_G.toggle = true
   while _G.toggle do
       wait(0.00001)
local args = {
   [1] = "Client",
   [2] = "DrinkOrder",
   [3] = "Coffee",
   [4] = "Small",
   [5] = false,
   [6] = 0
}

game:GetService("ReplicatedStorage").Remotes.CS.ItemRequest:FireServer(unpack(args))
wait(0.000000001)

local args = {
   [1] = "Client",
   [2] = "DrinkMake",
   [3] = "Coffee",
   [4] = "Small",
   [5] = game.Players.LocalPlayer.Name,
   [6] = "No"
}

game:GetService("ReplicatedStorage").Remotes.CS.ItemRequest:FireServer(unpack(args))
end