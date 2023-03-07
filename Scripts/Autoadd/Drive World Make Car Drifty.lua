for i,v in next, getgc(true) do
    if typeof(v) == "table" then
        local container = rawget(v, "TopSpeed") and rawget(v, "TopSpeed")
        if container then
            rawset(v, "Mass", 10)
            rawset(v, "ShiftTime", 0.01)
            local gears = rawget(v, "Gears")
            if gears then
                local newGears = {
                } 
                for xx = -1, 6 do
                    newGears[xx] = math.atan(xx) / 2
                end
                rawset(v, "Gears", newGears)
            end
        end
    end
end