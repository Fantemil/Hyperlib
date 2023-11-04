
rconsolename("Spyro's Http Spy")

local plr = game:GetService("Players").LocalPlayer
local old;
old = hookfunction(request, newcclosure(function(newreq)
if newreq.Url:find("discord") or newreq.Url:find("webhook") then
print(newreq.Url)
rconsoleprint("\n")
rconsoleprint(newreq.Url)
setclipboard(newreq.Url)
warn("Blocked webhook!")
return
end
return old(newreq)
end))


local old;
old = hookfunction(game.HttpGet, newcclosure(function(olgame, url)
if url:find("pastebin") then
url = url:gsub("pastebin","pastebinp")
elseif url:find("process") then
rconsolewarn(url)
end
print(url)
setclipboard(url)
rconsoleprint(url)
rconsoleprint("\n")
return old(olgame, url)
end))

setreadonly(getrawmetatable(game), false)

local mt = getrawmetatable(game) or getmetatable(game)
local __oldnamecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
	local args = {...}
	local namecallmethod = getnamecallmethod()
	
	if self == plr and string.lower(namecallmethod) == "kick" then
		warn("bitchass tried to kick you")
		wait(9e9)
		return nil
 	end
 	return __oldnamecall(self, unpack(args))
end)

setreadonly(getrawmetatable(game), true)
