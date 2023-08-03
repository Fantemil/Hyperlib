if disassemble then getgenv().decompile = disassemble end 
local renv = getrenv()

-- bypass mem checks 
hookfunction(renv.collectgarbage, function()
return 1
end)
hookfunction(renv.gcinfo, function()
return 1
end)
-- bypass ac (mostly)
local badfuncs = {"MemCheck", "GetParentLocalized", "CheckZombies", "CheckCharacter", "CheckWeapons"}
	for i,v in next, getgc(true) do 
	if type(v) == 'function' then
		if badfuncs[debug.info(v, 'n')] then
			hookfunction(v, function()
				
			end)
		end
	end
end

	
if not getgenv().NameCall then 
getgenv().NameCall = getrawmetatable(game).__namecall 
end
setreadonly(getrawmetatable(game), false)

NameCall = getgenv().NameCall
getrawmetatable(game).__namecall = newcclosure(function(Self, ...)
	local Args = {...}
	if getnamecallmethod() == "FireServer" and tostring(Self) == "Damage" and type(Args[1]) =='table' then
		
		Args[1]['BodyPart'] = Args[1]["BodyPart"].Parent.HeadBox -- Always Headshot
		for i = 1,25 do NameCall(Self, unpack(Args)) end -- Instant kill
		
	end
	
	
	return NameCall(Self, ...)
end)
setreadonly(getrawmetatable(game), true)