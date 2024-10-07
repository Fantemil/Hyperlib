local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local aimbotActive = false

function getClosestPlayer()
    local closestPlayer = nil
    local closestDistance = math.huge

    for _, target in pairs(game.Players:GetPlayers()) do
        if target ~= player and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (target.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = target
            end
        end
    end

    return closestPlayer
end

function aimAt(target)
    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, target.Character.HumanoidRootPart.Position)
    end
end

mouse.Button2Down:Connect(function()
    aimbotActive = true
end)

mouse.Button2Up:Connect(function()
    aimbotActive = false
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if aimbotActive then
        local closestPlayer = getClosestPlayer()
        if closestPlayer then
            aimAt(closestPlayer)
        end
    end
end)
