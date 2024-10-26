local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function balltouch()
    local player = Players.LocalPlayer
    if not player then return end

    local character = player.Character
    if not character then return end

    local rootPart = character:FindFirstChild("HumanoidRootPart")
    local ball = character:FindFirstChild("Ball")
    
    if not rootPart or not ball then return end

    local shootingGui = rootPart:FindFirstChild("ShootingGui")
    if not shootingGui or not shootingGui.Enabled then return end

    local goal = workspace:FindFirstChild("Goal1")
    if not goal then return end

    local score = goal:FindFirstChild("Score")
    if not score then return end

    firetouchinterest(score, ball, 0)
    task.wait()
    firetouchinterest(score, ball, 1)
end

local function start()
    while true do
        local success, errorMsg = pcall(balltouch)
        if not success then
            warn("nil:", errorMsg)
        end
        RunService.Heartbeat:Wait()
    end
end

local function onCharacterAdded(character)
    coroutine.wrap(start)()
end

local player = Players.LocalPlayer
if player then
    player.CharacterAdded:Connect(onCharacterAdded)
    if player.Character then
        onCharacterAdded(player.Character)
    end
else
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    player = Players.LocalPlayer
    player.CharacterAdded:Connect(onCharacterAdded)
    if player.Character then
        onCharacterAdded(player.Character)
    end
end