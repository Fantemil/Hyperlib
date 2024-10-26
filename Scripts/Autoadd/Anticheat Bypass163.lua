local eventbypass

eventbypass = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if not checkcaller() and self.Name == "Anti_Cheat_Remote" and method == "FireServer" then
        print("Anti Cheat remote was called and blocked.")
        return wait(9e9); -- do nothing if called
    end

    return eventbypass(self, ...)
end)