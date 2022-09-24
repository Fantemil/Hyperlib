game:GetService('RunService').Heartbeat:connect(function()
   game:GetService("ReplicatedStorage").ServerEvents.LoseRound:FireServer(math.huge)
end)