local met = getrawmetatable(game)
setreadonly(met,false)
local old = met.__namecall
met.__namecall = function(t,...)
local args = {...}
if(getnamecallmethod()=="FireServer") then
if(tostring(t) == "ev") then
 if args[6] == "knife" then
 for i = 0,25 do old(t,...)end
end
end
end
return old(t,...)
end