getgenv().autoclick = true

local func
for i,v in next, getgc(true) do
    if type(v) == 'function' and not is_synapse_function(v) and islclosure(v) and getinfo(v).name == 'click' then
        func = v
    end
end

while autoclick do task.wait()
    func()
end