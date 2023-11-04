cal rockModeEvent = replicatedStorage:WaitForChild("Rockmode")
local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end -- ignore keys that are already being used by Roblox

    if input.KeyCode == Enum.KeyCode.R then
        rockModeEvent:FireServer()
    end
end)