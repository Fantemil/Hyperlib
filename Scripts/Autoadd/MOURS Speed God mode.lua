for i,v in pairs(game:GetService("ReplicatedStorage").Creatures.Host:GetChildren()) do
   local j = require(v)
   j.Stats.MaxHealth = 999999
   j.Stats.Speed = 30
   j.StaggerResist = 500
   j.HealthRegen = 999999
end