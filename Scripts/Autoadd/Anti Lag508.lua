-- Anti-Lag Script
-- This script removes unnecessary parts, effects, and objects in the game to help reduce client-side lag.

local maxParts = 200  -- Set the max number of parts allowed
local garbageObjects = {"ParticleEmitter", "Trail", "Smoke", "Fire", "Sparkles", "Explosion"}  -- List of objects to clean up

-- Function to remove unnecessary parts
local function cleanUpWorkspace()
    local totalParts = 0
    
    -- Loop through the Workspace and remove unnecessary objects
    for _, obj in pairs(workspace:GetDescendants()) do
        -- Remove effects like particles and trails
        if table.find(garbageObjects, obj.ClassName) then
            obj:Destroy()
        end
        
        -- Count parts
        if obj:IsA("BasePart") and not obj.Anchored then
            totalParts = totalParts + 1
            if totalParts > maxParts then
                obj:Destroy()  -- Remove unanchored parts if over the limit
            end
        end
    end
end

-- Clean up periodically to reduce lag
while true do
    cleanUpWorkspace()
    wait(5)  -- Run every 5 seconds
end