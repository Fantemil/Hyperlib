while wait() do
for i = 1, 50 do
task.spawn(function()
local A_1 = "AmbulancePickup"
local A_2 = "1"
local Event = game:GetService("ReplicatedStorage").SharedModules.Game.RemoteCaller.Postie.Sent
Event:FireServer(A_1, A_2)
end)
end
end