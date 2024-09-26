for i, v in next, getgc(true) do
    if type(v) == "table" and rawget(v, "AmmoPerClip") then
        v.AmmoPerClip = math.huge
        v.FireRate = 0
        v.Spread = 0
        v.ReloadTime = 0
        v.HeadshotDamageMultiplier = math.huge
        v.CameraShakingEnabled = false
        v.FlamingBullet = true
        v.BaseDamage = math.huge
        v.BulletSpeed = math.huge
        v.BulletPerShot = math.huge
        v.Radius = math.huge
        v.FadeTime = 10
        v.Piercing = math.huge
        v.Lifesteal = math.huge
        v.Auto = true
        v.DualEnabled = true
    end
end