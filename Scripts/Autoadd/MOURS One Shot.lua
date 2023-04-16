for i,v in pairs(game:GetService("ReplicatedStorage").Creatures.Enemies:GetChildren()) do
   local j = require(v)
   j.Stats.MaxHealth = 10
end