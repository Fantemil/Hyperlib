while true do
for i, v in pairs(game:GetService("Players"):GetChildren()) do
if v.Charge.Value > 280 then
rconsoleprint("@@RED@@")
elseif v.Charge.Value > 160 then
rconsoleprint("@@YELLOW@@")
else
rconsoleprint("@@GREEN@@")
end
rconsoleprint(v.Name .. " / " .. v.DisplayName .. " - " ..  " Awakening: " .. math.floor(v.Charge.Value) .. "/325 nn")
end
wait(1.1)
rconsoleclear()
end