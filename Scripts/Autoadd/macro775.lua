local plr, uis, character = game.Players.LocalPlayer, game.UserInputService, game.Players.LocalPlayer.Character
local hrp = character:WaitForChild("HumanoidRootPart")

uis.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Z then
        while uis:IsKeyDown(Enum.KeyCode.Z) do
            hrp.Velocity = hrp.CFrame.lookVector * 225
            wait()
        end
    end
end)