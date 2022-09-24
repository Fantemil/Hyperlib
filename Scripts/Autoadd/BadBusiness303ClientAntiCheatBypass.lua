--// deoptimize eviornment
-- https://luau-lang.org/performance
for i, v in next, getgc() do
    if type(v) == "function" and islclosure(v) and (not is_synapse_function(v)) then
        getfenv(v)
    end
end

--// funny patch
local old = math.random
setreadonly(math, false)
math.random = function(...)
    local args = {...}
    if args[1] == 5 or args[1] == 7 then
        return 999
    end
    return old(...)
end
setreadonly(math, true)