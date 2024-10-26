    local mt = getrawmetatable(game)
    setreadonly(mt, false)

    local oldNamecall = mt.__namecall

    mt.__namecall = function(self, ...)
        local method = getnamecallmethod()
        local args = {...}

        if method == "FireServer" and self.Name == "Fall" and GodMode and #args >= 1 then
            args[1] = 0
            return oldNamecall(self, unpack(args))
        end

        return oldNamecall(self, ...)
    end

    setreadonly(mt, true)