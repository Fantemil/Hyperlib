
local cim = require(game:GetService("Players").LocalPlayer.PlayerScripts.Modules.ClientReplicatedClasses.ClientFighter.ClientItem)
local inputFunc = cim.Input
local old; old = hookfunction(inputFunc, function(...)
local args = {...}
    if type(args[1]) == "table" then
        args[1].Info.ShootRecoil = 0
        args[1].Info.ShootSpread = 0
        args[1].Info.ProjectileSpeed = 99999999
        args[1].Info.ShootCooldown = 0
        args[1].Info.QuickShotCooldown = 0
    end

    return old(...)
end)