local __namecall
__namecall = hookmetamethod(game, "__namecall", function(self, ...)
    if not checkcaller() then
        if getnamecallmethod() == "FireServer" then

            if tostring(self) == "DMG" then
                local args = {...}
                args[1] = 0

                return __namecall(self, unpack(args))
            end

            if tostring(self) == "FALLEN_SEE" then
                local args = {...}
                args[1] = false

                return __namecall(self, unpack(args))
            end

        end

        if getnamecallmethod() == "Kick" and self == game.Players.LocalPlayer then
            return wait(9e9)
        end
    end

    return __namecall(self, ...)
end)