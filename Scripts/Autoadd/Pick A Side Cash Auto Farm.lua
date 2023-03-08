getgenv().coinfarm = true
while getgenv().coinfarm == true do
wait()
local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(0.05, Enum.EasingStyle.Linear)
local plr = game:GetService("Players").LocalPlayer
if plr.PlayerGui.Gui.Status.Title.Text == "Pick a Side!" then
tweenService:Create(plr.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-54, 4, 15)}):Play()
end
end