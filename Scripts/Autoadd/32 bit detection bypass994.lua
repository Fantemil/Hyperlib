-- https://v3rmillion.net/showthread.php?pid=8516983
-- https://v3rmillion.net/showthread.php?pid=8516983
-- https://v3rmillion.net/showthread.php?pid=8516983

local X;
X = hookmetamethod(game, "__namecall",function(self,...)
local args = {...};
local method = getnamecallmethod()
if method == "Kick"   then

return
end
return X(self,...)
end)

