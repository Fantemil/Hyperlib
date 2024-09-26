game:GetService("RunService").Stepped:Connect(function()
    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(1)
end)