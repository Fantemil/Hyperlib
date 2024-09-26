game:GetService("RunService").Stepped:Connect(function()
    local target = 5000
    local result = math.random(target - 10,target)
    game:GetService("ReplicatedStorage").UpdateFPS:FireServer(result)
end)