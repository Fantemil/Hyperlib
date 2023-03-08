local Players = game:GetService("Players")
local plr = game.Players.LocalPlayer
getgenv().GODLYSKIDDERXISASKID = true -- u cant toggle this its broken :/
while getgenv().GODLYSKIDDERXISASKID do
for _, v in pairs(Players:GetPlayers()) do
if
v.Character and v.Character:FindFirstChildOfClass("Humanoid") and v.Character.Humanoid.Health ~= 0 and
v ~= Players.LocalPlayer
then
repeat
game:GetService "VirtualUser":Button1Down(Vector2.new(0.9, 0.9))
game:GetService "VirtualUser":Button1Up(Vector2.new(0.9, 0.9))
if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
getgenv().r6noclip = true
game:GetService("RunService").Stepped:Connect(
function()
if getgenv().r6noclip == true then
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end
end
)
end
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.name == "Katana" then
v.Parent = game.Players.LocalPlayer.Character
end
end
local CFrameEnd = v.Character.HumanoidRootPart.CFrame
local Time = 0.29
local tween =
game:GetService("TweenService"):Create(
game.Players.LocalPlayer.Character.HumanoidRootPart,
TweenInfo.new(Time),
{CFrame = CFrameEnd}
)
tween:Play()
task.wait()
tween.Completed:Wait()
game.Players.LocalPlayer.Character.Head.Anchored = true
wait(0.03) -- Dont Lower Or Kick
game.Players.LocalPlayer.Character.Head.Anchored = false
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
game:GetService("ReplicatedStorage").RemoteTriggers.SpawnIn:FireServer()
end
until v.Character.Humanoid.Health <= 0
end
end
task.wait()
end