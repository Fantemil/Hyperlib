for i, v in next, getgc(true) do
    if type(v) == "table" and rawget(v, "Key") then
        setclipboard(v.Key)
    end
end