local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function teleportToMouse()
    local mouse = player:GetMouse()
    local targetPosition = mouse.Hit.p
    character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.M then
        teleportToMouse()
    end
end)
