getgenv().hwid_to_spoof = "sexy hwid"

if old then
	return
end

getgenv().old = hookmetamethod(game, '__namecall', function(self, ...)
	local call = getnamecallmethod()
    if call == 'GetClientId' then
		return hwid_to_spoof
	end
	return old(self, ...)
end)