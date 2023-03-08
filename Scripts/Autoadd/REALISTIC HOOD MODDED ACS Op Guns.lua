do
    local Plr = game:GetService("Players").LocalPlayer
    for i,v in pairs(Plr.Backpack:GetChildren()) do
        Plr.Character.Humanoid:EquipTool(v)
        task.wait()
        Plr.Character.Humanoid:UnequipTools(v)

    end
end

for i,v in pairs(getgc(true)) do
    if type(v) == 'table' and rawget(v, 'Ammo') then
        v.Ammo = 9e9
        v.StoredAmmo = 9e9
        v.MaxStoredAmmo = 9e9
        v.gunRecoil = {
            gunRecoilUp = {0,0},
            gunRecoilTilt = {0,0},
            gunRecoilLeft = {0,0},
            gunRecoilRight = {0,0},
        }
        v.camRecoil = {
            camRecoilUp = {0,0},
            camRecoilTilt = {0,0},
            camRecoilLeft = {0,0},
            camRecoilRight = {0,0},
        }
        v.FireModes = {
            ChangeFiremode = true,
            Semi = true,
            Burst = true,
            Auto = true }
        v.MinSpread = 0
        v.MaxSpread = 0
        task.wait()
    end
end