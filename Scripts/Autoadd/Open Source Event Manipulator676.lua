local mt = getrawmetatable(game)
local nc = mt.__namecall

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    if getnamecallmethod() == "FireServer" then
        if self.Name == "EventName" and menu.feature then
            return
        end
    end
    
    return nc(self, ...)
end)

setreadonly(mt, true)