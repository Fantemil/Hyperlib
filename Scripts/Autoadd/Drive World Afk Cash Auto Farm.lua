getgenv().farmEnabled = true

while farmEnabled do
    game:GetService("ReplicatedStorage").Systems.Score.Begin:FireServer()
    task.wait(1)
    game:GetService("ReplicatedStorage").Systems.Score.Redeem:FireServer(1000)
    task.wait()
end