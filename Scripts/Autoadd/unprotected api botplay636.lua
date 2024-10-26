function getGameFramework()
    for _, v in next, getgc(true) do
        if type(v) == 'table' and rawget(v, 'SetAutoplay') then
            return v
        end
    end
end

getGameFramework().SetAutoplay(true)