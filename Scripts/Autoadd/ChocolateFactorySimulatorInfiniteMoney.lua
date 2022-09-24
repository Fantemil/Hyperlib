local v1 = "Crate_Normal"
local v2 = -10000000000000 -- Can change this number but don't change it to math.huge or really high numbers it will break ur money and "-" must be there
local event = game:GetService("ReplicatedStorage").Shop

event:InvokeServer(v1, v2)