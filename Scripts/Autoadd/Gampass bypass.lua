local old
for i,v in next, getgc(true) do
    if typeof(v) == 'function' and debug.getinfo(v).name == "OwnsGamepass" then
        old = hookfunction(v, function()
            return true
        end)
    end
end