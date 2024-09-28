repeat task.wait() until game:IsLoaded()

--> Services <--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

--> LocalPlayer Varaibles <--
local player = Players.LocalPlayer
local playerCharacter = player.Character
local playerHumanoidRootPart = playerCharacter:FindFirstChild("HumanoidRootPart") or playerCharacter:WaitForChild("HumanoidRootPart")

--> LocalPlayer Tools Varaibles <--
local playerTool = nil
local playerToolHandle = nil

--> Function To Handle When LocalPlayer Respawns <--
player.CharacterAdded:Connect(function(NewCharacter)
    playerCharacter = NewCharacter
    playerHumanoidRootPart = playerCharacter:FindFirstChild("HumanoidRootPart") or playerCharacter:WaitForChild("HumanoidRootPart")
end)

--> Function To Get Closest Player <--
local function GetClosestPlayer()
    local closestPlayer = nil
    local getClosestPlayerDistance = math.huge -- math.huge == inf

    for _, Player in pairs(Players:GetPlayers()) do
        if Player ~= player and Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health ~= 0 then
            local magnitudeDistance = (Player.Character:FindFirstChild("HumanoidRootPart").Position - playerHumanoidRootPart.Position).Magnitude
            if magnitudeDistance < getClosestPlayerDistance then
                closestPlayer = Player
                getClosestPlayerDistance = magnitudeDistance
            end
        end
    end
    return closestPlayer
end

--> Sword Reach Event Function <--
RunService.RenderStepped:Connect(function()
    --> closestPlayer Varaibles <--
    local closestPlayer = GetClosestPlayer()
    --> Checks <--
    if closestPlayer ~= player and closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("Humanoid") and closestPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
        --> closestPlayer Varaibles <--
        local closestPlayerCharacter = closestPlayer.Character
        local closestPlayerHumanoidRootPart = closestPlayerCharacter:FindFirstChild("HumanoidRootPart") or closestPlayerCharacter:WaitForChild("HumanoidRootPart")
         
        for _, CharacterChild in ipairs(playerCharacter:GetChildren()) do
            if CharacterChild and CharacterChild:IsA("Tool") then
                for _, ToolHandle in ipairs(CharacterChild:GetChildren()) do
                    if ToolHandle and ToolHandle:IsA("BasePart") then
                        if ToolHandle:FindFirstChild("TouchInterest") then
                            playerTool = CharacterChild
                            playerToolHandle = ToolHandle
                        elseif not ToolHandle:FindFirstChild("TouchInterest") then
                            for _, HandleChild in ipairs(ToolHandle:GetChildren()) do
                                if HandleChild and HandleChild:IsA("BasePart") then
                                    if HandleChild:FindFirstChild("TouchInterest") then
                                        playerTool = CharacterChild
                                        playerToolHandle = HandleChild
                                    end
                                end
                            end
                        end
                    end
                end
                break
            end
        end

        --> Manipulates Handle Position [ Sword Reach ] <--
        if playerTool and playerToolHandle then
            playerTool.Equipped:Connect(function()
                if playerTool and playerToolHandle then
                    --> Manipulates LocalPlayer HumanoidRootPart CFrame To Look At Closest Player HumanoidRootPart <--              
                    playerHumanoidRootPart.CFrame = CFrame.lookAt(playerHumanoidRootPart.Position, Vector3.new(closestPlayerHumanoidRootPart.Position.X, playerHumanoidRootPart.Position.Y, closestPlayerHumanoidRootPart.Position.Z))
                    playerToolHandle.Transparency = 100
                    playerToolHandle.Size = Vector3.new(100, 100, 100)
                    playerToolHandle.Position = closestPlayerHumanoidRootPart.Position
                    playerTool:Activate()                
                    --[[firetouchinterest(playerToolHandle, closestPlayerHumanoidRootPart, 1)
                    firetouchinterest(playerToolHandle, closestPlayerHumanoidRootPart, 0)]]
                end
            end)
            
            playerTool.Unequipped:Connect(function()
                playerTool = nil
                playerToolHandle = nil
            end)
        end
    end
end)