local a = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.newest.SprintCooldown)
for i,v in pairs(a) do
if type(v) == 'function' then
debug.setupvalue(v, 1, math.huge)
end
end