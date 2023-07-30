local Event = game:GetService("Workspace").ServerHandler.valuesetter
local player = game.Players.LocalPlayer

Event:InvokeServer(player.Data.level, 198)

for _ , v in ipairs(player.Data2:GetChildren()) do
   Event:InvokeServer(v, 1)
end