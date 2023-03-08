local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall
local index = mt.__index

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if self == UserInputService or self == GuiService then
        if method == "GetPlatform" then
            return Enum.Platform.Android
        elseif method == "IsTenFootInterface" then
            return false
        end
    end
    return namecall(self, ...)
end)

mt.__index = newcclosure(function(tbl, idx)
    if tbl == UserInputService then
        if idx == "TouchEnabled" then
            return true
        elseif idx == "MouseEnabled" then
            return false
        elseif idx == "KeyboardEnabled" then
            return false
        end
    end
    return index(tbl, idx)
end)