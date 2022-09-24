local main = game.Players.LocalPlayer.Backpack["AK47"].Configuration -- Change AK47 To the name of the gun, you must not have it equipped
main.GravityFactor.Value = 0.01
main.RecoilMax.Value = 0.01
main.RecoilMin.Value = 0.01
main.ShotCooldown.Value = 0.03
main.MaxSpread.Value - 0.01
main.FullDamageDistance.Value = 1000000
main.ZeroDamageDistance.Value = 10000000000
main.TotalRecoilMax.Value = 0.01
main.FireMode.Value ="Automatic" -- Automatic, Semiautomatic, Burst
main.ShotEffect.Value = "Rocket" -- Bullet, Rocket, Grenade, CannonBall, Plasma, Raygun
main.Parent.WeaponType.Value = "BowWeapon" -- BulletWeapon, BowWeapon