for i,v in pairs(game:GetService("Players").LocalPlayer.Tasks:GetChildren()) do
    for c,b in pairs(v.Parts:GetChildren()) do
        local args = {
            [1] = b.locationName
        }

        game:GetService("ReplicatedStorage").RemoteEvents.Client.roomChanged:FireServer(unpack(args))
        local args = {
            [1] = b.Value,
            [2] = tostring(i)
        }
        game:GetService("ReplicatedStorage").RemoteEvents.Client.taskRequest:FireServer(unpack(args))
        local args = {
            [1] = b.Value,
            [2] = tostring(i)
        }
        game:GetService("ReplicatedStorage").RemoteEvents.Client.taskCompleted:FireServer(unpack(args))
        wait(.5)
    end
    wait()
end