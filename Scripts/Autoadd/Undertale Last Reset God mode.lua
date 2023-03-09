local gameMetaTable = getrawmetatable(game)

setreadonly(gameMetaTable, false)

local oldMetaTable = gameMetaTable.__namecall
local CallingScript = game:GetService("Players").LocalPlayer.PlayerGui.Handler

game.Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(item)
    if item.ClassName == "LocalScript" and item.Name == "Handler" then
        CallingScript = item
    end
end)

gameMetaTable.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local script = getcallingscript()
    local args = {...}

    if method == "FireServer" and script == CallingScript  then
        return false
    end
    return oldMetaTable(self,...)
end)