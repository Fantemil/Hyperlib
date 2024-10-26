Oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
	local args = {...}

	if getnamecallmethod() == "FireServer" and self.Name == "Shoot" then
		args[1][1][1] = args[1][1][1].Parent.Head
	end
	return Oldnamecall(self, unpack(args))
end)