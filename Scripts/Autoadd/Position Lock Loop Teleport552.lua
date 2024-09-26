getgenv().teleport = true

local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local currentPosition = humanoidRootPart.CFrame
local targetPosition = Vector3.new(currentPosition.X, humanoidRootPart.Position.Y, currentPosition.Z) 

while getgenv().teleport do
    wait(2) -- Teleport Delay (freeze char. under 1 second)
    local TweenService = game:GetService('TweenService')
    local currentCFrame = humanoidRootPart.CFrame
    local rotation = currentCFrame - currentCFrame.p

    local targetCFrame = CFrame.new(targetPosition) * rotation

    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
    local tweenProperties = {
        CFrame = targetCFrame
    }

    local tween = TweenService:Create(humanoidRootPart, tweenInfo, tweenProperties)
    tween:Play()
end
