local function getNearestModelCFrame()
    local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local nearestModelCFrame = nil
    local shortestDistance = math.huge

    for _, model in ipairs(workspace.ClientEnemies:GetChildren()) do
        if model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") then
            local distance = (model.HumanoidRootPart.Position - playerPosition).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestModelCFrame = model.HumanoidRootPart.CFrame
            end
        end
    end

    return nearestModelCFrame
end

while true do
    local nearestModelCFrame = getNearestModelCFrame()
    if nearestModelCFrame then
        local args = {
            [1] = "Place",
            [2] = {
                ["Type"] = "Shadow PeaShooter", -- change with any plant name inside game:GetService("ReplicatedStorage").Models.Units
                ["CFrame"] = nearestModelCFrame
            }
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Placement - Client"):FireServer(unpack(args))
    else
        warn("No sillies found")
    end
    task.wait()
end