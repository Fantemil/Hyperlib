for i, v in pairs(getgc()) do
    if type(v) == "function" and getinfo(v).name == "Reload" then
        debug.setupvalue(v, 2, math.huge)
    end
end