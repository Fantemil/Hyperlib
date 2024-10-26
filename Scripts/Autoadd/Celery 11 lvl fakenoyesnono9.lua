local XD = printidentity
local lvl = 11

local function createWrapper(object)
    return setmetatable({}, {
        __index = function(_, key)
            if key == "printidentity" then
                return function()
                    print("Current identity is ".. lvl)
                end
            end
            return object[key]
        end,
        __newindex = function(_, key, value)
            object[key] = value
        end
    })
end

local wrappedFunctions = createWrapper(_G)
wrappedFunctions.printidentity()