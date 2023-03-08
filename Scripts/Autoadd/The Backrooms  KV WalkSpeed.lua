local a = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.Camera)
for i,v in pairs(a) do
if type(v) == 'function' then
if debug.getinfo(v).name == 'lerp' then
hookfunction(v, function()
return 100
end)
end
end
end