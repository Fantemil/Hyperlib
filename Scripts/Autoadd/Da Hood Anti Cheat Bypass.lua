local Detectors = {
    CHECKER_1 = true,
    TeleportDetect = true,
    OneMoreTime = true,
    BANREMOTE = true,
    KICKREMOTE = true,
    PERMAIDBAN = true,
    BreathingHAMON = true
}

local mt = getrawmetatable(game)
local backupnamecall = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}

    if (method == "FireServer" and tostring(args[1]) == "MainEvent" and Detectors[args[2]]) then
        return wait(9e9)
    end

    if (not checkcaller() and getfenv(1).crash ~= nil and getfenv(1).checkChild ~= nil) then
        getcallingscript():Destroy()
        return wait(9e9)
    end

    return backupnamecall(...)
end)

setreadonly(mt, true)