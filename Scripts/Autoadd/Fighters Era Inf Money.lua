local v1 = "Marco Kure"
local v2 = "Hm.. Are you sure you are up for the task?"
local v3 = "Yes."
local event = game:GetService("ReplicatedStorage").Remotes.okoll

game:GetService"RunService".RenderStepped:Connect(function()
event:InvokeServer(v1, v2, v3)
end)