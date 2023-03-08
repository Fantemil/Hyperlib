local Speed = 350
local hook; hook = hookmetamethod(game, "__index", newcclosure(function(int,property)
if tostring(int) == "MaxSpeed" and property == "Value" then
return Speed
end
return hook(int,property)
end))