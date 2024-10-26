getgenv().hookfunction = function(func, rep)
	for i,v in pairs(getfenv()) do
		if v == func then
			getfenv()[i] = rep
		end
	end
end