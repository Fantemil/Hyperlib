function ClickingScript() end

for i,v in pairs(getgc(true)) do
    if type(v) == 'function' then
    if debug.getinfo(v).name == 'Click' then
        ClickingScript = v
    end
    end
end

_G.on = not _G.on
while _G.on do
    task.wait()
    for i = 1,100 do -- remove if you want regular speed/no lag
    ClickingScript()
end
end