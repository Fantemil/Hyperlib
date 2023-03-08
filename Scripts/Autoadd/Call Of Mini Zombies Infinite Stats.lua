local stats = {"Coins", "Crystals", "EventTickets"} -- Add Experience, Level, DAY if you want to
for i,v in pairs(stats) do
local args = {
   [1] = "Acid Shotgun",
   [2] = -5000,
   [3] = v,
   [4] = true,
   [5] = "Primary"
}

game:GetService("ReplicatedStorage").PowerupShop:FireServer(unpack(args))
end