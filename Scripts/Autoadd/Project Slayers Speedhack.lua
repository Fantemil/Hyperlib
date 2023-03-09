--@Bypass
local Namecall
Namecall = hookmetamethod(game, '__namecall', function(self, ...)
local Args = {...}
if getnamecallmethod() == 'FireServer' and tostring(self) == 'moddelteasdasd123' then
return
elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'moddelteasdasd1232' then
return
elseif getnamecallmethod() == 'InvokeServer' and tostring(self) == 'reporthackerasdasd' then
return
elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'To_Server_commends' then
if Args[1] == 'set_platform_stand' then
return
end
elseif string.lower(getnamecallmethod()) == 'kick' then
return
end
return Namecall(self, ...)
end)
--@SpeedHack
local Index
Index = hookmetamethod(game, '__index', function(self, key)
if key == 'WalkSpeed' then
self.WalkSpeed = 100
return 16
end
return Index(self, key)
end)