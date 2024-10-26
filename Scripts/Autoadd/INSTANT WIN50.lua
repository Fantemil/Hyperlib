local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Body Colors")
}

game:GetService("ReplicatedStorage").Win:FireServer(unpack(args))