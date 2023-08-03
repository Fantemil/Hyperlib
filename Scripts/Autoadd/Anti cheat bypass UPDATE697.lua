local Events = {
    FireServer = true
}

local gameMeta = getrawmetatable(game)
local psuedoEnv = {
    ["__index"] = gameMeta.__index,
    ["__namecall"] = gameMeta.__namecall;
}
setreadonly(gameMeta, false)
gameMeta.__index, gameMeta.__namecall = newcclosure(function(self, index, ...)
    if Events[index] then
        if "KickPlayer" == self.Name and not checkcaller() then return nil end
    end
    return psuedoEnv.__index(self, index, ...)
end)
setreadonly(gameMeta, true)