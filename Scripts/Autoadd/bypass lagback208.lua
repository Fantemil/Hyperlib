local players = game:GetService('Players')
local lplr = players.LocalPlayer
local lastCF, stop, heartbeatConnection
local function start()
    heartbeatConnection = game:GetService('RunService').Heartbeat:Connect(function()
        if stop then
            return 
        end 
        lastCF = lplr.Character:FindFirstChildOfClass('Humanoid').RootPart.CFrame
    end)
    lplr.Character:FindFirstChildOfClass('Humanoid').RootPart:GetPropertyChangedSignal('CFrame'):Connect(function()
        stop = true
        lplr.Character:FindFirstChildOfClass('Humanoid').RootPart.CFrame = lastCF
        game:GetService('RunService').Heartbeat:Wait()
        stop = false
    end)    
    lplr.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
        heartbeatConnection:Disconnect()
    end)
end

lplr.CharacterAdded:Connect(function(character)
    repeat 
        game:GetService('RunService').Heartbeat:Wait() 
    until character:FindFirstChildOfClass('Humanoid')
    repeat 
        game:GetService('RunService').Heartbeat:Wait() 
    until character:FindFirstChildOfClass('Humanoid').RootPart
    start()
end)

lplr.CharacterRemoving:Connect(function()
    heartbeatConnection:Disconnect()
end)

start()
