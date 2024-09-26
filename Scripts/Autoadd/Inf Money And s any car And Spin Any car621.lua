--Inf Money Heads up buy something first to get the money 
game:GetService("ReplicatedStorage").Remotes.GiveCashRE:InvokeServer(99999999999999)
---Spin any car W 
local ohString1 = "Bugatti_Chiron_Super_Sport"
local ohString2 = "Rare"---Dont Matter

game:GetService("ReplicatedStorage").Remotes.ChangeLabelName:FireServer(ohString1, ohString2)

-- Spawn any car 
local ohInstance1 = game:GetService("ReplicatedStorage").Lambo_Urus

game:GetService("ReplicatedStorage").Remotes.SpawnCar:FireServer(ohInstance1)
