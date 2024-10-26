-- DOESN'T WORK ON SOLARA
Oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
	local args = {...}

	if getnamecallmethod() == "FireServer" and self.Name == "FriendBoost" then
		args[1] = 9
	end
	return Oldnamecall(self, unpack(args))
end)