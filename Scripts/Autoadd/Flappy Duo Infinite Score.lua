getgenv().score = 0x7FFFFFFFFFFFFDFF -- Whatever score you want, highest number I could get it to without wrapping back is default.

local mt = getrawmetatable(game)
setreadonly(mt, false)

local nc = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
   
    if getnamecallmethod() == "FireServer" and self.Name == "UpdateScore" then
        args[1] = getgenv().score
        return nc(self, unpack(args))
    end
   
    return nc(self, ...)
end)