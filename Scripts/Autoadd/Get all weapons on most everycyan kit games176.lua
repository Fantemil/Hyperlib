--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
for i,v in pairs(game:GetService("ReplicatedStorage").GameItems:GetChildren()) do
   game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(v.Name)
end