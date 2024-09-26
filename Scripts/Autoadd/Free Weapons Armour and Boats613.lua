Oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
	local args = {...}

	if getnamecallmethod() == "InvokeServer" and self.Name == "purchaseWeapon" or self.Name == "purchaseArmor" or self.Name == "purchaseBoats" then
		args[2] = 0
	end
	return Oldnamecall(self, unpack(args))
end)