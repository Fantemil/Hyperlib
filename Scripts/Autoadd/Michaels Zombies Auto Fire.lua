for _, v in next, getgc(true) do
    if type(v) == "table" and rawget(v, "FIRE_TYPE") then
        rawset(v, "FIRE_TYPE", "AUTO")
    end
end