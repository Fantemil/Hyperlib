local __namecall
__namecall = hookmetamethod(game, "__namecall", function(self, ...)
    if not checkcaller() then

        if getnamecallmethod() == "FireServer" then
            if self.Name == "CTS" then
                local args = {...}

                if args[1] == "DoneDodge" then
                    print('dodgeagain0_0')
                    args[1] = "Dodge"
                end

                return __namecall(self, unpack(args))
            end;
        end;
    end;

    return __namecall(self, ...)
end);