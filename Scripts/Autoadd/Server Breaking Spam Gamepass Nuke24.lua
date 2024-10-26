-- Spam Spawn Nuke Destroy Server

game:GetService("RunService").RenderStepped:Connect(function()
    game:GetService("ReplicatedStorage").Nuke.SummonNuke:FireServer()
end)