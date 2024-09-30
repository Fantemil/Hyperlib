local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local targetPart = workspace:FindFirstChild("FinalGame"):FindFirstChild("Model"):FindFirstChild("Model"):FindFirstChild("Part")

if targetPart then
    local direction = targetPart.CFrame.LookVector * 9
    local newPosition = targetPart.Position - direction
    character:MoveTo(newPosition)
else
    warn("Part not found!")
end