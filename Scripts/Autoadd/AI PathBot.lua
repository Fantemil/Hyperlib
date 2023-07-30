local PathfindingService = game:GetService("PathfindingService")
local Players = game:GetService("Players")

local function walkTo(targetPosition)
    local player = Players.LocalPlayer
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    
    if not humanoid then
        return
    end
    
    -- Create a path
    local path = PathfindingService:CreatePath()
    path:ComputeAsync(humanoid.RootPart.Position, targetPosition)
    
    -- Traverse the path
    local waypoints = path:GetWaypoints()
    for _, waypoint in ipairs(waypoints) do
        -- Check for obstacles
        local ray = Ray.new(humanoid.RootPart.Position, waypoint.Position - humanoid.RootPart.Position)
        local ignoreList = { player.Character }
        
        -- Add other players' characters to the ignore list
        for _, otherPlayer in ipairs(Players:GetPlayers()) do
            if otherPlayer ~= player then
                local otherCharacter = otherPlayer.Character
                if otherCharacter then
                    table.insert(ignoreList, otherCharacter)
                end
            end
        end
        
        local hitPart, hitPosition, hitNormal = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
        
        if hitPart then
            -- Check if the hit part is in the Stains folder
            local isStainPart = hitPart:IsDescendantOf(game.Workspace.Stains)
            
            if isStainPart then
                -- Jump over the stain part
                humanoid.Jump = true
                humanoid:MoveTo(waypoint.Position)
                humanoid.MoveToFinished:Wait()
            else
                -- Check if the hit part is a truss or ladder
                if hitPart:IsA("TrussPart") or hitPart:IsA("Part") then
                    local angle = math.acos(hitNormal:Dot(Vector3.new(0, 1, 0))) -- Calculate angle between hit normal and up vector
                    
                    -- Check if the angle is within a range that the character can climb
                    if angle <= humanoid.MaxSlopeAngle then
                        humanoid:MoveTo(waypoint.Position)
                        humanoid.MoveToFinished:Wait()
                    else
                        -- Unable to climb, break out of the loop
                        break
                    end
                else
                    -- Check if the hit part is in the Monsters folder
                    local isMonsterPart = hitPart:IsDescendantOf(game.Workspace.Monsters)
                    
                    if isMonsterPart then
                        -- Dodge the monster part
                        local monsterModel = hitPart.Parent
                        local monsterParts = monsterModel:GetDescendants()
                        
                        for _, part in ipairs(monsterParts) do
                            if part:IsA("BasePart") or part:IsA("MeshPart") then
                                local dodgeDirection = (part.Position - humanoid.RootPart.Position).Unit
                                humanoid:MoveTo(humanoid.RootPart.Position - dodgeDirection * 3)
                                humanoid.MoveToFinished:Wait()
                            end
                        end
                    else
                        -- Obstacle found, unable to move further
                        break
                    end
                end
            end
        else
            -- No obstacles, move to the waypoint
            humanoid:MoveTo(waypoint.Position)
            humanoid.MoveToFinished:Wait()
        end
    end
end

-- Position to walk to
local targetPosition = Vector3.new(-941.775208, 3.99802518, -176.381088)  -- Set the target position
walkTo(targetPosition)