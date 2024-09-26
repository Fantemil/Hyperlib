-- DOESN'T WORK ON SOLARA
Oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
	local args = {...}

	if getnamecallmethod() == "FireServer" and self.Name == "LevelAttempt" then
		args[2] = 100
	end
	return Oldnamecall(self, unpack(args))
end)