game:GetService("RunService").RenderStepped:Connect(function()
   game:GetService("ReplicatedStorage").Remotes.Deposit:FireServer(.5)
end)