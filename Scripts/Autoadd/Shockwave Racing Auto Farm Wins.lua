local TweenService = game:GetService("TweenService")
local Finish = game:GetService("Workspace").Finish.Finish

local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")

local function teleportToFinish()
    local finishPos = Finish.Position
    local middleOffset = Vector3.new(0, Finish.Size.Y/2, 0)
    local targetPos = finishPos + middleOffset

    local tweenInfo = TweenInfo.new(
        2.5,
        Enum.EasingStyle.Linear,
        Enum.EasingDirection.Out,
        -1,
        true,
        0
    )

    local tween = TweenService:Create(humanoid.RootPart, tweenInfo, {
        CFrame = CFrame.new(targetPos)
    })

    tween.Completed:Connect(function()
        wait(1.5)
        teleportToFinish()
    end)

    tween:Play()
end

teleportToFinish()