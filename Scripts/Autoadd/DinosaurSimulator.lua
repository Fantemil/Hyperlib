_G.farm = false

while wait() do
if _G.farm == true then
local A_1 = game:GetService("Workspace").GameMap.Ferns.Fern
local A_2 = 2
local Event = game:GetService("Workspace").GameEvents.EatPlant
Event:FireServer(A_1, A_2)
   end
end