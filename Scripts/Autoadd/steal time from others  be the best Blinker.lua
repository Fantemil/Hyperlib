while wait() do
    game:GetService("ReplicatedStorage").Remotes.UpdateWindowFocus:FireServer(true)
    wait(.1)
    game:GetService("ReplicatedStorage").Remotes.UpdateWindowFocus:FireServer(false)
    wait(.1)
end