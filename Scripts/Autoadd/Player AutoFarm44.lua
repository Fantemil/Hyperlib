       local player = game.Players.LocalPlayer
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local remoteEvent = ReplicatedStorage:WaitForChild("b")
        local Workspace = game:GetService("Workspace")
        
        local detectionRange = 750 
        local heightUnderPlayer = 5
        local safeDistanceFromRock = 50 

        local function hasErrorTool(player)
            if player.Backpack:FindFirstChild("Error") or (player.Character and player.Character:FindFirstChild("Error")) then
                return true
            end
            return false
        end

        local function isTransparent(character)
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    if part.Transparency == 0.5 then
                        return true
                    end
                end
            end
            return false
        end

        local function isWithinLobbyArea(character)
            return game:GetService("Workspace").Lobby:IsAncestorOf(character)
        end

        local function distanceFromRock(position)
            local rock = Workspace:FindFirstChild("rock")
            if rock then
                return (position - rock.Position).Magnitude
            end
            return math.huge
        end

        local function getClosestPlayer(character)
            local shortestDistance = math.huge
            local closestPlayer = nil
        
            for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
                if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("Head") 
                   and not isTransparent(otherPlayer.Character) and not isWithinLobbyArea(otherPlayer.Character) 
                   and distanceFromRock(otherPlayer.Character.Head.Position) > safeDistanceFromRock 
                   and not hasErrorTool(otherPlayer) then
                    local distance = (character.Head.Position - otherPlayer.Character.Head.Position).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        closestPlayer = otherPlayer
                    end
                end
            end
        
            return closestPlayer
        end

        local function createPlatform(position)
            local platform = Instance.new("Part")
            platform.Position = position
            platform.Size = Vector3.new(10, 1, 10)
            platform.Anchored = true
            platform.CanCollide = true
            platform.BrickColor = BrickColor.new("Really black") -- Set to black color
            platform.Transparency = 1 -- Set to invisible
            platform.Parent = Workspace
            return platform
        end

        local function continuousTeleportAndActivate(character)
            local platform = nil
        
            character.Humanoid.Died:Connect(function()
                character:SetPrimaryPartCFrame(Workspace.Lobby.Teleport1.CFrame)
                wait(1)
            end)
        
            while true do
                local closestPlayer = getClosestPlayer(character)
                if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local humanoid = closestPlayer.Character:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health <= 0 then
                        wait(0.1)
                        closestPlayer = getClosestPlayer(character)
                    end
                    character:SetPrimaryPartCFrame(closestPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -heightUnderPlayer, 0))
                    
                    if not platform then
                        platform = createPlatform(character.HumanoidRootPart.Position + Vector3.new(0, 3, 0))
                    else
                        platform.Position = character.HumanoidRootPart.Position + Vector3.new(0, 3, 0)
                    end
                    
                    local args = {[1] = closestPlayer.Character.Head}
                    remoteEvent:FireServer(unpack(args))
                end
                wait(0)
            end
        end
        
        player.CharacterAdded:Connect(continuousTeleportAndActivate)
        local currentCharacter = player.Character or player.CharacterAdded:Wait()
        continuousTeleportAndActivate(currentCharacter)