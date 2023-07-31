local g = (number)
local lp = game:GetService("Players").LocalPlayer
    local hooks = {
        walkspeed = 16,
        jumppower = 50
    }
    local index
    local newindex

    index = hookmetamethod(game, "__index", function(self, property)
        if not checkcaller() and self:IsA("Humanoid") and self:IsDescendantOf(lp.Character) and hooks[property:lower()] then
            return hooks[property:lower()]
        end
        return index(self, property)
    end)

    newindex = hookmetamethod(game, "__newindex", function(self, property, value)
        if not checkcaller() and self:IsA("Humanoid") and self:IsDescendantOf(lp.Character) and hooks[property:lower()] then
            return value
        end
        return newindex(self, property, value)
    end)
 lp.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = g