local ReplicatedStorage = game:GetService("ReplicatedStorage")
local AdiosActivated = ReplicatedStorage:WaitForChild("AdiosActivated")

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.R and not gameProcessed then
        AdiosActivated:FireServer()
    end
end)