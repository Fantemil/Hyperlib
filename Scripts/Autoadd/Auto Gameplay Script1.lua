local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Define waypoints (Update these to suit your game's layout)
local waypoints = {
    Vector3.new(0, 0, 0), 
    Vector3.new(10, 0, 0),
    Vector3.new(20, 0, 0),
}

local currentWaypointIndex = 1

function moveToNextWaypoint()
    while true do
        if currentWaypointIndex <= #waypoints then
            humanoidRootPart.CFrame = CFrame.new(waypoints[currentWaypointIndex])
            wait(2) -- Simulate time taken to reach waypoint
            currentWaypointIndex += 1
        else
            currentWaypointIndex = 1 -- Reset to start when done
        end
        
        wait(1) 
    end
end

function interactWithNearbyItems()
    while true do
        local itemsFound = false
        
        -- Circularly check for interactable items within a certain distance
        for _, item in pairs(workspace:GetChildren()) do
            if item:IsA("Model") and item:FindFirstChild("Interact") then -- Change 'Interact' to whatever identifier you use for items
                local distance = (humanoidRootPart.Position - item.PrimaryPart.Position).Magnitude
                if distance < 5 then -- Check if within interaction range
                    local remoteEvent = item:FindFirstChild("PickUp") -- Ensure your item has this for pickup functionality
                    if remoteEvent then
                        remoteEvent:FireServer() -- Call the server event to pick the item up
                        itemsFound = true
                        wait(1) -- Wait so we don't spam the pickup function too quickly
                    end
                end
            end
        end
        
        if not itemsFound then
            wait(1) -- Wait before checking again if no items were found nearby
        end
        
        wait(2) -- General wait time between actions
    end
end

-- Start the two functions concurrently using coroutines.
coroutine.wrap(moveToNextWaypoint)()
coroutine.wrap(interactWithNearbyItems)()
