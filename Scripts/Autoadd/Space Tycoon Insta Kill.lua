local MT = getrawmetatable(game)
make_writeable(MT)
local NC = MT.__namecall
MT.__namecall = newcclosure(function(obj, ...)
    if obj.Name == "Hit" then
        for i = 1, 10 do
            NC(obj, ...)
        end
    end
    return NC(obj,...)
end)