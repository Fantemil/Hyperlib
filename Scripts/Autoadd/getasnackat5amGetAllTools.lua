for i,v in pairs(game:GetService("ReplicatedStorage").ItemData.ItemTools:GetChildren()) do
local ohString1 = tostring(v)
local ohString2 = "BOUGHT"

game:GetService("ReplicatedStorage").ClientToServer.DistributeItem:FireServer(ohString1, ohString2)
end