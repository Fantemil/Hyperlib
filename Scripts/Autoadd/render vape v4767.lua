if isfile and not isfile('vape/loader.lua') then return cloneref(game:FindService('Players')).LocalPlayer.Kick(cloneref(game:FindService('Players')).LocalPlayer, 'install render first :skul:') end; 
if shared.VapeExecuted then return end;
return loadfile('vape/loader.lua')()
