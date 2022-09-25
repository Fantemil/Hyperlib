--[[ Variables ]]
local RS = game:GetService("ReplicatedStorage")
local Client = RS:WaitForChild("CIient")
local Melee = RS:WaitForChild("MeleeModels")
for _,v in pairs (Melee:GetChildren()) do
Client:FireServer("Skin", v.Name)
end