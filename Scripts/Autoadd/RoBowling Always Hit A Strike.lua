--Run on character spawn once, throw in the middle

local SPEED = 150 --the maximum in game
local PROXIMITY = 3
local TIMEOUT = 2

local runService = game:GetService("RunService")

local me = game.Players.LocalPlayer
local character = me.Character

character.ChildAdded:Connect(function(ballModel)
    runService.Stepped:Wait()
    
    if not ballModel.Name == "BowlingBall" then return end
    
    local ball = ballModel:WaitForChild("HitBox")
    
    local laneValue = ballModel:WaitForChild("Lane").Value --int
    local lane = workspace.FunctionalAssets.BowlingLanes.Lanes:WaitForChild("Lane"..laneValue)
    local pins = lane.FunctioningAssets.Pins
    local firstPin = pins:FindFirstChild("Pin1") or pins:GetChildren()[1]
    local firstPosition = firstPin.Position
    
    ballModel.AncestryChanged:Connect(function(_, parent)
        if parent == nil or parent == character then return end
        
        runService.Stepped:Wait()
        
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(10000000, 0, 10000000)
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        
        local positions = {}
        
        for _, pin in pairs (pins:GetChildren()) do
            if pin.Position.Y >= 12.6 then
                table.insert(positions, pin.Position)
            end
        end
        
        local start = tick()
        while ball.Parent and tick() - start <= TIMEOUT and (ball.Position - firstPosition).Magnitude > PROXIMITY do
            runService.Stepped:Wait()
        end
        
        bodyVelocity.Parent = ball
        
        for _, position in pairs (positions) do
            local distance = (ball.Position - position).Magnitude
            local toWait = distance / SPEED
            bodyVelocity.Velocity = (ball.Position - position).Unit * -SPEED
            wait(toWait)
        end
        
        bodyVelocity:Destroy()
    end)
end)