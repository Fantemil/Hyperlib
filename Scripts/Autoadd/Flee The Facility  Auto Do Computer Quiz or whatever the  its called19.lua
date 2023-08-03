--[[
    Funny script
]]

local skids
skids = hookmetamethod(game, "__namecall", function(self, ...)
	local method = getnamecallmethod()
	local args = {...}

	if self.Name == "RemoteEvent" and method == "FireServer" and args[1] == "SetPlayerMinigameResult" and args[2] == false then
		args[2] = true
		return self.FireServer(self, unpack(args))
	end
	
	return skids(self,...)
end)