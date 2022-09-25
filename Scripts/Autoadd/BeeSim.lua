 local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage.Events 

local function BoostGate(Part)
    if Part:FindFirstChild("Ready") and Part.Ready.Value then 
        Events.Game.BoostGate:FireServer(Part)
    end
end

-- Iterating through all worlds because I cannot be arsed figuring out which one you have 
for _,World in pairs(workspace.Worlds:GetChildren()) do 
    
    for _,v in pairs(World:GetChildren()) do 
        if v:FindFirstChild("Part") and v.Part:FindFirstChild("Ready") then 
            BoostGate(v.Part) 
            
            v.Part.Ready:GetPropertyChangedSignal("Value"):Connect(function()
                if v.Part.Ready.Value then 
                    BoostGate(v.Part)
                end
            end)
        end
    end
    
end