local module = require(game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("GetRemote"))
local originalNames = debug.getupvalue(module,2)

hookfunction(module,function(remote)
    originalNames[remote].Name = remote
    return originalNames[remote]
end)

for i,v in pairs(originalNames) do
    module(i)
end