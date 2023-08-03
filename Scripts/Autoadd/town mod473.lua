for i, Module in next, getgc(true) do
    if type(Module) == "table" and rawget(Module, "maxammo") then
        Module.Damage = 1000
        Module.ReloadSpeed = 0.00000000000000000000000000001
        Module.BulletSpeed = 10000000
        Module.scatter = 100000000000
        Module.GunRecoil = 0
        Module.AimFov = 25
        Module.HeadMultiplier = 5
        Module.LegMultiplier = 5
        Module.TorsoMultiplier = 5
        Module.waittime = 0
        Module.auto = true
    end
end