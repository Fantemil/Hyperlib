game:GetService("ReplicatedStorage").Storage.Events.Remote:Destroy()
local function modifyMetatable(leg)
    local meta = getmetatable(leg)
    if not meta then
        meta = {}
        setmetatable(leg, meta)
    end

    local originalIndex = meta.__index
    local originalNewIndex = meta.__newindex

    meta.__index = function(t, k)
        if originalIndex then
            return originalIndex(t, k)
        end
        return rawget(t, k)
    end

    meta.__newindex = function(t, k, v)
        if k == "Size" then
            rawset(t, k, v)
        elseif originalNewIndex then
            originalNewIndex(t, k, v)
        else
            rawset(t, k, v)
        end
    end
end
