local mt = getrawmetatable(game)
setreadonly(mt, false)

local old = mt.__index
mt.__index = function(a, b)
    if tostring(a) == "CurrentAmmo" and b == "Value" then
        return 1000
    end
    return old(a, b)
end

setreadonly(mt, true)