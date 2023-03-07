game:GetService("RunService").Heartbeat:Connect(function()
    local args = {
    [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
}

game:GetService("ReplicatedStorage").ClientToServer.FireShuriken:InvokeServer(unpack(args))
task.wait()

firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart , game:GetService("Workspace").SellPart , 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart , game:GetService("Workspace").SellPart , 1)
end)