local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local rs = game:GetService("RunService")
local ws = game:GetService("Workspace")

local pos = Vector3.new(-239.758544921875, 746.8603515625, -340.2457580566406)
local id = 7211557834

local function makePart(position)
    local part = Instance.new("Part")
    part.Size = Vector3.new(5000, 1, 5000)
    part.Position = position
    part.Anchored = true
    part.CanCollide = true
    part.Parent = ws
end

local function findPlayer()
    local closestPlayer = nil
    local closestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player.UserId ~= id and player ~= lp and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local targetPos = player.Character.HumanoidRootPart.Position
            local distance = (targetPos - lp.Character.HumanoidRootPart.Position).Magnitude

            if distance < closestDistance then
                local ray = Ray.new(lp.Character.HumanoidRootPart.Position, (targetPos - lp.Character.HumanoidRootPart.Position).unit * distance)
                local hit = ws:FindPartOnRayWithIgnoreList(ray, {lp.Character, player.Character})

                if not hit then
                    closestDistance = distance
                    closestPlayer = player
                end
            end
        end
    end

    if closestPlayer then
        return closestPlayer.Character.HumanoidRootPart.Position
    end
    return nil
end

local function start()
    makePart(pos)

    rs.Heartbeat:Connect(function()
        if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
            local targetPos = findPlayer()
            if targetPos then
                lp.Character.Shotgun.RemoteBridge:FireServer(targetPos)
            end
        end
    end)
end

lp.CharacterAdded:Connect(function()
    start()
end)

start()
