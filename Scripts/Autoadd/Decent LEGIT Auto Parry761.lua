local services = setmetatable({}, { __index = function(self, key)
    local service = game:GetService(key)
    self[key] = service
    return service
end })

local Players = services.Players
local Workspace = services.Workspace

local client = Players.LocalPlayer

local ballsFolder = Workspace.Balls

local Util = {}
do
    shared.Util = Util

    function Util.getBalls()
        local realBall, otherBall

        for i = 1, #ballsFolder:GetChildren() do
            local ball = ballsFolder:GetChildren()[i]
            if not ball:IsA("BasePart") then continue end

            local isRealBall = ball:GetAttribute("realBall")
            if isRealBall == nil then continue end

            if isRealBall then
                realBall = ball
            else
                otherBall = ball
            end

            if realBall and otherBall then break end
        end

        return realBall, otherBall
    end

    function Util.isHunting()
        local realBall = Util.getBalls()
        if not realBall then return false end

        local target = realBall:GetAttribute("target")
        if not target then return false end

        return target == client.Name
    end
end

ballsFolder.ChildAdded:Connect(function()
    print('------------------- Ball Spawned -------------------')

    task.wait(1.5)

    local realBall, fakeBall

    for i = 1, #ballsFolder:GetChildren() do
        local ball = ballsFolder:GetChildren()[i]
        if not ball:IsA("BasePart") then continue end

        local currentSpeed = ball.Velocity.Magnitude
        if currentSpeed == 0 then
            realBall = ball
        else
            fakeBall = ball
        end

        if realBall and fakeBall then break end
    end

    if realBall then
        local usedRemote = false
        local lastPosition = realBall.Position
        local lastVelocity = fakeBall.Velocity

        realBall:GetPropertyChangedSignal("Position"):Connect(function()
            if not Util.isHunting() then return end

            local playerPosition = client.Character and client.Character.PrimaryPart and client.Character.PrimaryPart.Position
            if not playerPosition then return end

            local currentSpeed = fakeBall and fakeBall.Velocity.Magnitude or 0

            local predictedPosition = lastPosition + lastVelocity
            local predictedDistance = (predictedPosition - playerPosition).Magnitude

            lastPosition = realBall.Position
            lastVelocity = realBall.Velocity

            local timeToReachPlayer = predictedDistance / (currentSpeed == 0 and 1 or currentSpeed)
            print(timeToReachPlayer)

            if timeToReachPlayer <= 0.3 and not usedRemote then
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ParryButtonPress"):Fire()
                task.wait(0.1)
                usedRemote = true
            elseif timeToReachPlayer > 0.4 then
                usedRemote = false
            end
        end)
    end
end)