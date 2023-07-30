local namecall;
namecall = hookmetamethod(game, "__namecall", function(self, ...)
	if not checkcaller() and self == game.GetService(game, "ReplicatedStorage").Events.GetPremiumState and getnamecallmethod() == "InvokeServer" then
		return true
	end
	return namecall(self, ...)
end)

-- By DylanIsAKing#2402 :)