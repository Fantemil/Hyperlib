local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Two then
        wait(0.6)
        mouse1click()
    else
        return;
    end
end)