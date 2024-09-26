local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Define waypoints for the survivor to move to (adjust these positions accordingly)
local waypoints = {
    Vector3.new(0, 0, 0),    -- Replace with actual coordinates of key locations in your map.
    Vector3.new(0, 0, 10),
    Vector3.new(10, 0, 10),
}

local currentWaypointIndex = 1

function moveToNextWaypoint()
    while true do
        if currentWaypointIndex <= #waypoints then
            humanoidRootPart.CFrame = CFrame.new(waypoints[currentWaypointIndex])
            
            -- Simulate waiting before moving to the next waypoint
            wait(2) 
            currentWaypointIndex += 1 -- Move to the next waypoint
        else
            currentWaypointIndex = 1 -- Reset to start when reaching the end of waypoints
        end
        
        wait(1) -- Wait before checking again or moving to the next waypoint
    end
end

function interactWithItems()
    while true do
        local itemToInteract = nil
        
        -- Check for items in the vicinity (you can modify this logic)
        for _, item in pairs(workspace:GetChildren()) do
            if item:IsA("Model") and item:FindFirstChild("PickUp") then -- Adjust based on your item structure
                local distance = (humanoidRootPart.Position - item.PrimaryPart.Position).Magnitude
                if distance < 5 then -- Check if within interaction range
                    itemToInteract = item
                    break
                end
            end
        end
        
        if itemToInteract then
            -- Simulate picking up the item (make sure your item has a RemoteEvent for picking up)
            local remoteEvent = itemToInteract:FindFirstChild("PickUp") -- Adjust as needed
            if remoteEvent then
                remoteEvent:FireServer() -- Call server-side function to pick up the item
            end
            
            wait(1) -- Wait after picking up an item before looking for others
        end
        
        wait(1) -- Wait before checking for items again
    end
end

-- Start both functions concurrently using coroutines to handle both tasks simultaneously.
coroutine.wrap(moveToNextWaypoint)()
coroutine.wrap(interactWithItems)()

