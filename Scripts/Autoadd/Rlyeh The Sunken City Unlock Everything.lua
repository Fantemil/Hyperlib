--M OPEN MENU

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Namecall
if Player == nil then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    Player = Players.LocalPlayer
end
local Inventory = Player:WaitForChild("PlayerGui", 100):WaitForChild("MainMenu", 100):WaitForChild("eventsAndFunctions", 100):WaitForChild("AllowedWeapons", 100):InvokeServer(Player) -- get out of my head get out of my head get out of my head get out of my head 
for i,v in pairs(Inventory) do
    if typeof(v) == "table" then
        for x,y in pairs(v) do
            y.allowed = true
        end
    end
end
Namecall = hookmetamethod(game, "__namecall", function(Self, ...)
    if tostring(Self) == "AllowedWeapons" and not checkcaller() then
        return Inventory
    end
    return Namecall(Self, ...)
end)