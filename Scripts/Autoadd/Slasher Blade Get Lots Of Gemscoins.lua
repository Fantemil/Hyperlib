for i = 1, 5000 do
task.spawn(function()
local Event = game:GetService("ReplicatedStorage").Remote.Event.Misson["[C-S]GetMissonReward"]
Event:FireServer()
end)
end