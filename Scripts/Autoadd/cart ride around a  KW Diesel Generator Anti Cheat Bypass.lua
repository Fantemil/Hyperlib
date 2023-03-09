local LocalPlayer = game:GetService('Players').LocalPlayer
local LPCharacter = LocalPlayer.Character

startswith = function(str, start)
  return str:sub(1, #start) == start
end

local theFunnyRemote

-- finds anticheat remote event
for _, b in pairs(getinstances()) do
if b:IsA('RemoteEvent') then
if startswith(b.Name, 'BUSTER_E') then
theFunnyRemote = b
end
end
end

local namecall; namecall = hookmetamethod(game, '__namecall', newcclosure(function(Self, ...)
   local method = getnamecallmethod()
local args = {...}

if not checkcaller() then

-- blocks their ban remote event
if method == 'FireServer' and Self == theFunnyRemote and args[1] == 'report' then
return
end

-- blocks kick method used by some anticheat modules
if method == 'Kick' and Self == LocalPlayer then
return
end
end

   return namecall(Self, ...)
end))

-- disables antiragdoll
if LPCharacter then
local hum = LPCharacter:FindFirstChildOfClass('Humanoid')

if hum then
for _, b in pairs(getconnections(hum.Touched)) do
b:Disable()
end
end
end