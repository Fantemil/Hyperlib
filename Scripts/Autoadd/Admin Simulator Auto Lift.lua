while wait() do
game:GetService("ReplicatedStorage").Remotes.Lift:FireServer()


local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Remotes.Lift:FireServer(unpack(args))
end