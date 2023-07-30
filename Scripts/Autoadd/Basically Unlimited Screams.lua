local screamWork = game:GetService("ReplicatedStorage"):WaitForChild("ScreamWork")
local function fireScreamWork()
    screamWork:FireServer()
end
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.F and not gameProcessed then
        fireScreamWork()
    end
end)