_G.Autostomp = true -- Set to false to stop
while _G.Autostomp do task.wait(0.2)
game:GetService("ReplicatedStorage").RemoteEvents.Stomp:FireServer()
end