--[[

Upgrade5 is more stars (basically unlimited stars), Upgrade9 is more luck

just find others using rspy

--]]
local args = {
   [1] = "Upgrade5",
   [2] = 0
}
while wait() do
for i = 1,1000 do
   task.spawn(function()
game:GetService("ReplicatedStorage").GameClient.Remotes.Upgrader:InvokeServer(unpack(args))
end) end
end