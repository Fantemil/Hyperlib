local keyhandler = require(game:GetService("ReplicatedStorage").Modules.ClientManager.KeyHandler)
local stack = getupvalue(getrawmetatable(getupvalue(keyhandler, 8)).__index, 1)[1][1]
local GetKey = stack[89]
local key = stack[64]
getupvalue(GetKey, 2)[0][1][2][4] = "HtttpGet"
GetKey("Dodge", key):FireServer("roll",nil,nil,false) -- example how to use