local HttpService = game:GetService("HttpService")

local function betterDebug(value, depth, maxCount, logFunction) -- log function is your custom print function or log function
    depth = depth or 0
    maxCount = maxCount or 5
    if depth > maxCount then return end
    
    local log = function(msg) logFunction(msg) end
    local valueType = typeof(value)

    if valueType == "function" then
        local info = debug.getinfo(value)
        log(string.rep("  ", depth) .. "Function: " .. (info.name or "anonymous") .. " at " .. info.short_src .. ":" .. info.currentline)
        
        for i, v in pairs(debug.getconstants(value)) do
            log(string.rep("  ", depth + 1) .. "Constant[" .. i .. "]: " .. tostring(v))
        end
        
        for i, v in pairs(debug.getupvalues(value)) do
            log(string.rep("  ", depth + 1) .. "Upvalue[" .. i .. "]: " .. tostring(v))
            betterDebug(v, depth + 1, maxCount, logFunction)
        end
        
        for i, proto in pairs(debug.getprotos(value)) do
            log(string.rep("  ", depth + 1) .. "Proto[" .. i .. "]: " .. tostring(proto))
            betterDebug(proto, depth + 1, maxCount, logFunction)
        end
    elseif valueType == "table" then
        for k, v in pairs(value) do
            log(string.rep("  ", depth) .. "Table Key: " .. tostring(k) .. ", Value: " .. tostring(v))
            betterDebug(v, depth + 1, maxCount, logFunction)
        end
    else
        log(string.rep("  ", depth) .. tostring(value))
    end
end