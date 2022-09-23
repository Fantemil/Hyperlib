for i,v in next, getgc(true) do
    if typeof(v) == "table" then
        if rawget(v, "TAPS_DELAY_IN_MILLIS") then
            rawset(v, "TAPS_DELAY_IN_MILLIS", 0.00000005)
            rawset(v, "HATCH_DELAY", 0.00000005)
        end
    end
end