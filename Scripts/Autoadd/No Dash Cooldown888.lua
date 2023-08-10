-- made by breadido :>
for i, v in next, getgc(true) do
    if typeof(v) == "table" and rawget(v, "StartTime") then
        v.StartTime = 0
    end
    if typeof(v) == "table" and rawget(v, "Cooldown") then
        v.Cooldown = 0
    end
end