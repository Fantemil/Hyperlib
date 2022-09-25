 game:GetService("ReplicatedStorage").LOG:Remove() -- removes the logs idk if it works
wait(0.5)
money = game:GetService("RunService").Heartbeat:Connect(function()
pcall(function()
game:GetService("ReplicatedStorage").forhackers:InvokeServer("hit")
end)
end)