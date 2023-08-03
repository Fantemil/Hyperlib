old = hookmetamethod(game,"__namecall",function(...)
	local args = {...}
	if getnamecallmethod() == "FireServer" and args[1].Name == "SayMessageRequest" then
		args[2] = args[2]:gsub("r","w"):gsub("l","w"):gsub("R","W"):gsub("L","W")
		return old(unpack(args))
	end
	return old(...)
end)
