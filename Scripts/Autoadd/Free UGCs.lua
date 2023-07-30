    for i = 1, 4 do
        game.ReplicatedStorage:FindFirstChild('AdvanceState', true):FireServer()
        wait(1)
        game.ReplicatedStorage:FindFirstChild('GetSetting', true):InvokeServer("TimedActivities")
    end
