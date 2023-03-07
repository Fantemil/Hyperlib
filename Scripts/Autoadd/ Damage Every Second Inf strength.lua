game.RunService.Stepped:Connect(function()
game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.RedeemChest:FireServer()
end)