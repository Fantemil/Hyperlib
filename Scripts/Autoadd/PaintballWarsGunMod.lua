for i,v in pairs(game:GetService("ReplicatedStorage").Shared.Databases.Weapons:GetChildren()) do
local gun = require(game:GetService("ReplicatedStorage").Shared.Databases.Weapons[v.Name])
gun.FullAuto = true
gun.BulletDelay = 0.00000001
gun.Acceleration = Vector3.new(0,0,0)
gun.Velocity = -10000
end