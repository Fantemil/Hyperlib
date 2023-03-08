game:GetService("RunService").Heartbeat:Connect(function()
    game:GetService("ReplicatedStorage").Events.MemeToStorage:FireServer()
    game:GetService("ReplicatedStorage").Events.UploadCurrentMemes:FireServer()
end)