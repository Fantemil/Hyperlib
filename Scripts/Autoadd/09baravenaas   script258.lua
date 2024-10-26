local paddle = script.Parent 
local function onBallTouched(ball)
    local ballVelocity = ball.Velocity
    local paddlePosition = paddle.Position

    if ballVelocity:Dot(paddlePosition) > 0 then
        local forceMagnitude = ballVelocity.Magnitude * 2
        local forceDirection = -ballVelocity.Unit

        ball.BodyForce.Force = forceMagnitude * forceDirection
    end
end

paddle.Touched:Connect(onBallTouched)