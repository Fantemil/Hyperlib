game:GetService("RunService").RenderStepped:Connect(function()
    game:GetService("ReplicatedStorage").VIPRemotes.ClaimCoin:FireServer()
end)