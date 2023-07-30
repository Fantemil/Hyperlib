local Players = game:GetService("Players")
local character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()
local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
local createdBalls = {}

if humanoidRootPart then
    for i = 1, 50 do
        local ball = Instance.new("Part", workspace)
        ball.Shape = "Ball"
        ball.Material = "Neon"
        ball.BrickColor = BrickColor.random()
        ball.Anchored = false
        ball.CanCollide = true
        ball.Size = Vector3.new(1, 1, 1)
        ball.Position = humanoidRootPart.Position + Vector3.new(math.random(-10, 10), 10, math.random(-10, 10))
        ball.Velocity = Vector3.new(math.random(-50, 50), math.random(50, 100), math.random(-50, 50))
        table.insert(createdBalls, ball)
    end
end

wait(10) --time when the balls will get deleted :)
for i, ball in ipairs(createdBalls) do
    ball:Destroy()
end