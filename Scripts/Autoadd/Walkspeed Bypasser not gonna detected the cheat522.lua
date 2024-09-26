-- Create by jam Hope you enjoy the bypasser walkspeed and junppower
local Players = game:GetService("Players")
local lp = Players.LocalPlayer

local hooks = {
    walkspeed = 16,
    jumppower = 50
}

local originalIndex
local originalNewIndex

originalIndex = hookmetamethod(game, "__index", function(self, property)
    if not checkcaller() and self:IsA("Humanoid") and self:IsDescendantOf(lp.Character) then
        local lowerProperty = property:lower()
        if hooks[lowerProperty] then
            return hooks[lowerProperty]
        end
    end
    return originalIndex(self, property)
end)

originalNewIndex = hookmetamethod(game, "__newindex", function(self, property, value)
    if not checkcaller() and self:IsA("Humanoid") and self:IsDescendantOf(lp.Character) then
        local lowerProperty = property:lower()
        if hooks[lowerProperty] then
            hooks[lowerProperty] = value
            return
        end
    end
    return originalNewIndex(self, property, value)
end)

local humanoid = lp.Character:FindFirstChildWhichIsA("Humanoid")
if (humanoid) then
    humanoid.WalkSpeed = 200 -- change on what walkspeed you want
    humanoid.JumpPower = 100 -- change on what jumppower should it be
end