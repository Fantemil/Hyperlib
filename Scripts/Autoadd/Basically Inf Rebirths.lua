_G.Netorare = true -- true/false



while _G.Netorare do task.wait()
game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.UpdateRebirthWithRobux:FireServer()
end