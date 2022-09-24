for k, v in next, getgc() do
    if type(v) == 'function' and debug.getinfo(v).name == 'hitthem' then
        shared.func = v
    end
end


local old
old = hookfunc(shared.func, function(...)
        for i = 1, 150 do
           old(...)
        end
    return old(...)
end)