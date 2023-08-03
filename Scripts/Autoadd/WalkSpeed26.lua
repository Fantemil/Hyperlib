local walkspeed = 100 -- max is 150

local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldindex = gmt.__index
gmt.__index = newcclosure(function(self,b)
	if b == "WalkSpeed" then
		return walkspeed
	end
	return oldindex(self,b)
end)