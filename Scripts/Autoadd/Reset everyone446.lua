local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.N then
        for _, otherPlayer in ipairs(Players:GetPlayers()) do
            if otherPlayer ~= player then
                otherPlayer.Character:BreakJoints()
            end
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(onKeyDown)
