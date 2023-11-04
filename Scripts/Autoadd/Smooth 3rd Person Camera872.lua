repeat
	wait()
until game:IsLoaded()

local player = game.Players.LocalPlayer
local character = player.Character

local part = Instance.new("Part", character)
part.Transparency = 1
part.Anchored = true
part.CanCollide = false

local tweenService = game:GetService("TweenService")
local runService = game:GetService("RunService")
local camera = workspace.CurrentCamera

camera.CameraSubject = part -- allows for the camera to turn with mouse rather than being stuck, and does not have to be ran multiple times within RenderStepped

runService.RenderStepped:Connect(function()
	local tween = tweenService:Create(part, TweenInfo.new(2, Enum.EasingStyle.Back), {CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0)}) -- offset is changed
	tween:Play()
	-- line from here moved out of renderstepped as it's unnecessary
end)