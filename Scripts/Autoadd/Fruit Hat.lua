Time = 5 -- you can change this to what ever you want
target_pos = CFrame.new(634, 207, 463)
TweenI = TweenInfo.new(Time, Enum.EasingStyle.Linear)
local tween1 =
    game:GetService("TweenService"):Create(
    game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenI,
    {CFrame = target_pos}
)
tween1:Play()
tween1.Completed:Wait()