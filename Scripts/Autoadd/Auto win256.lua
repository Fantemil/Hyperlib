local targetPosition = Vector3.new(-26.0328979, 1000.22284, 233.930542)
local targetCFrame = CFrame.new(targetPosition) * CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(180), 0)

local function teleportPlayer()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    local rootPart = character:WaitForChild("HumanoidRootPart")

    rootPart.CFrame = targetCFrame
end

teleportPlayer()