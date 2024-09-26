Oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
	local args = {...}

	if getnamecallmethod() == "FireServer" and self.Name == "I111IlI111l1" then
		args[1] = "create"
	end
	return Oldnamecall(self, unpack(args))
end)