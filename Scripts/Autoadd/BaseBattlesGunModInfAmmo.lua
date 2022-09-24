for k, v in next, game:GetService("ReplicatedStorage").Weapons.Guns.Primary:GetDescendants() do
    if v.Name == 'Configuration' then
        s = require(v)
        s.bloom.ads = 0
        s.bloom.hipfire = 0
        s.maxAmmo = 9e9
        s.MaxAmmo = 9e9
        s.firerate = 190
        s.bloomFactor = 0
    end
end
            