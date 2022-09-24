--Credits to Wxer Softworks
local seconds = 100 --edit

if firesignal then
local button1 = game.Players.LocalPlayer.PlayerGui.ScreenGui.b
firesignal(button1.MouseButton1Down)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(seconds, Enum.EasingStyle.Linear)tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-424.47119140625, 346.86138916015625, -179.75462341308594)}):Play()
else
game.Players.LocalPlayer:Kick()
end