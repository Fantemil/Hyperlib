local function setProximityPromptHoldDuration()
    for _, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
        if v.ClassName == "ProximityPrompt" then
            v.HoldDuration = 0
        end
    end
end

-- Infinite loop to continuously set HoldDuration
while true do
    setProximityPromptHoldDuration()
    wait() -- Adjust the wait time as needed
end
