if getgenv().Loaded then return end 
getgenv().Loaded = true

local data = require(game:GetService("ReplicatedStorage").Remotes)


local oldE = data.Event
local oldF = data.Function

data.Event = function(...)
local res = oldE(...)
rconsoleinfo(res.Name.." = "..(...))
return oldE(...)
end

data.Function = function(...)
local res = oldF(...)
rconsoleinfo(res.Name.." = "..(...))
return oldF(...)
end