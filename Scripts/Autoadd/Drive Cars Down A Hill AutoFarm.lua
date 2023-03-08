_G.enabled = true --Change to false to stop
local waittime = 1 --Set wait seconds
local Time = 1 --Teleport time
while _G.enabled == true do
    local CFrameEnd = CFrame.new(-50, -2698, 26633)
    local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
    tween:Play()
    tween.Completed:Wait()

    local CFrameEnd = CFrame.new(20.3001, 510.167, 184.016)
    local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0), {CFrame = CFrameEnd})
    tween:Play()
    tween.Completed:Wait()
    task.wait(waittime)
end