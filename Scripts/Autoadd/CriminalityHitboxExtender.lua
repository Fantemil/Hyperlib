local Import = function(rep, file)
   return loadstring(game:HttpGet(("https://raw.githubusercontent.com/NougatBitz/%s/main/%s"):format(rep, file)))
end
local Bypassed = Import("BitzUtils", "CriminalitySimpleACBypass.lua")()
if Bypassed then
   Import("BitzUtils", "CrimianlityHitboxExtender.lua")()
end