AB = 2 -- accelerationboost
FU = 0 -- fuelusage
MSB = 10 -- maxspeedboost
TB = 20000 -- torqueboost

for i,v in pairs(game:GetService("ReplicatedStorage").EngineConfig:GetDescendants()) do
    if v.Name == "AccelerationBoost" then 
        v.Value = AB
    elseif v.Name == "FuelUsage" then 
        v.Value = FU
    elseif v.Name == "MaxSpeedBoost" then 
        v.Value = MSB
    elseif v.Name == "TorqueBoost" then 
        v.Value = TB
    end
end
