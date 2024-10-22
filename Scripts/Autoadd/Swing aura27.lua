local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local enabled = false

local function getNearestTarget()
    local nearestTarget = nil
    local shortestDistance = math.huge

    -- ÐÑÐµÐ¼ Ð¸Ð³ÑÐ¾ÐºÐ¾Ð²
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer ~= player and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetRootPart = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
            local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")

            if humanoid and humanoid.Health > 0 then
                local distance = (humanoidRootPart.Position - targetRootPart.Position).Magnitude

                if distance < shortestDistance then
                    shortestDistance = distance
                    nearestTarget = targetPlayer.Character
                end
            end
        end
    end

    -- ÐÑÐµÐ¼ NPC (Ð²Ð¾ Ð²ÑÐµÑ Ð¿Ð°Ð¿ÐºÐ°Ñ Ð²Ð½ÑÑÑÐ¸ workspace)
    for _, npcFolder in pairs(workspace:GetChildren()) do
        if npcFolder:IsA("Folder") or npcFolder:IsA("Model") then
            for _, npc in pairs(npcFolder:GetChildren()) do
                if npc:FindFirstChild("HumanoidRootPart") and npc:FindFirstChild("Humanoid") and npc ~= character then
                    local npcRootPart = npc:FindFirstChild("HumanoidRootPart")
                    local humanoid = npc:FindFirstChild("Humanoid")

                    if humanoid and humanoid.Health > 0 then
                        local distance = (humanoidRootPart.Position - npcRootPart.Position).Magnitude

                        if distance < shortestDistance then
                            shortestDistance = distance
                            nearestTarget = npc
                        end
                    end
                end
            end
        end
    end

    return nearestTarget
end

local screenGui = Instance.new("ScreenGui")
local toggleButton = Instance.new("TextButton")

screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.Name = "ToggleScriptGui"

toggleButton.Parent = screenGui
toggleButton.Size = UDim2.new(0, 200, 0, 50)
toggleButton.Position = UDim2.new(0.5, -100, 0.9, -25)
toggleButton.Text = "ÐÐºÐ»ÑÑÐ¸ÑÑ ÑÐºÑÐ¸Ð¿Ñ"
toggleButton.BackgroundColor3 = Color3.new(0.2, 0.8, 0.2)

local function toggleScript()
    enabled = not enabled
    if enabled then
        toggleButton.Text = "ÐÑÐºÐ»ÑÑÐ¸ÑÑ ÑÐºÑÐ¸Ð¿Ñ"
        toggleButton.BackgroundColor3 = Color3.new(0.8, 0.2, 0.2)
    else
        toggleButton.Text = "ÐÐºÐ»ÑÑÐ¸ÑÑ ÑÐºÑÐ¸Ð¿Ñ"
        toggleButton.BackgroundColor3 = Color3.new(0.2, 0.8, 0.2)
    end
end

toggleButton.MouseButton1Click:Connect(toggleScript)

while true do
    if enabled then
        local target = getNearestTarget()

        if target then
            local args = {
                [1] = target
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("HitSomeone"):FireServer(unpack(args))
        end
    end

    wait(0.03)
end
