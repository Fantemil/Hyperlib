for i, v in next, getgc(true) do
    if typeof(v) == "table" then
        if rawget(v, "Remote") then
            print(v.Name, v.Folder)
        end
    end
end