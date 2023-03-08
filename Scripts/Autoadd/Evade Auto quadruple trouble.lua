repeat
wait(5)
local ohString1 = "SpecialRound"
local ohString2 = "Quadruple Trouble"

game:GetService("ReplicatedStorage").Events.Admin:FireServer(ohString1, ohString2)
until false