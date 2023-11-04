local UserInputService = game:GetService("UserInputService")

local function activateAbility()
    local args = {
        [1] = game:GetService("Players").LocalPlayer.Character.Coil
    }

    game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(unpack(args))
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.R and not gameProcessedEvent then
        activateAbility()
    end
end)