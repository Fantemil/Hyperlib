--wyv's hook lol
local old
old =
    hookmetamethod(
    game,
    "__namecall",
    function(self, ...)
        if getnamecallmethod() == "FireServer" and self.Name == "FallDamage" and not checkcaller() then
            return
        end

        return old(self, ...)
    end
)