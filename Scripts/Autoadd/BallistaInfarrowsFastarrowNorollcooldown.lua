-- Get Function by name
function getfunction(name)
   for i,v in pairs(getgc()) do
if type(v) == "function" and getinfo(v).name == name then
return v
end
   end
end

--destroy a function(not really)
function destroyfunc(instance)
local old
old = hookfunction(instance, function() return end)
end

--dump a table
function td(tab)
table.foreach(tab, print)
end

--find an element of a table
function findelement(elementname)
for i,v in pairs(getgc(true)) do
if type(v) == "table" and rawget(v, elementname) then
return v
end
   end
end

--vars
local oldfunction
local AimingCooldown = getfunction("AimingCooldown")

local Constructor = getfunction("Constructor")
local constants = getconstants(Constructor)
local Upvalues = getupvalues(Constructor)

local ArrowMax = findelement("Arrow")
local Dodge = findelement("DodgeCooldown")
local Arrows = findelement("Ammo")

Arrows["DodgeRollCooldown"] = 0
Arrows["FireCooldown"] = 0.8
Arrows["Ammo"] = math.huge
Arrows["MaxAmmo"] = math.huge
ArrowMax["Arrow"].Speed = 2000
ArrowMax["Arrow"].Weight = 0