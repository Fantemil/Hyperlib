local replicatedStorage = game:GetService("ReplicatedStorage")
local hallowEvent = replicatedStorage:WaitForChild("Hallow")
local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end -- ignore keys that are already being used by Roblox

    if input.KeyCode == Enum.KeyCode.T then
        hallowEvent:FireServer()
    end
end)