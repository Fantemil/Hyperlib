while true do
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Body Colors")
    }

    game:GetService("ReplicatedStorage").CoreGameplay.RemoteEvents.DailyRewardEvent:FireServer(unpack(args))

    wait(0)
end