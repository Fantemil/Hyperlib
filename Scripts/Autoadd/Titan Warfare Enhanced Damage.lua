local damp = 1530 -- Maximum is probably 1530 don't go any further than 1530 you'll get kicked.
local oldm
oldm = hookmetamethod(game, "__namecall", function(...)
    local gnmc = getnamecallmethod()
    local args = {...}
    if gnmc:lower() == "fireserver" and tostring(args[1]) == "Hit" then
        args[3] = damp
        return oldm(unpack(args))
    end
    return oldm(...)
end)