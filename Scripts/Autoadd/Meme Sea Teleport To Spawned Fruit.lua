local UIS = game:GetService("UserInputService")
local playerTP = game.Players.LocalPlayer.Character

if playerTP.Humanoid.Health > 1 then
        UIS.InputBegan:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.K then
                local powerLocations = game.Workspace.PowerSpawn.SpawnedPower:FindFirstChildOfClass("Tool")
                playerTP:MoveTo(powerLocations.Handle.Position)
            end
    end)
end