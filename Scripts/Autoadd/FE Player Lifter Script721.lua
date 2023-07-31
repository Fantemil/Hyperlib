--Made by rouxhaver
--super janky

player = game:GetService("Players").LocalPlayer
mouse = player:GetMouse()
camera = workspace.CurrentCamera
ts = game:GetService("TweenService")

function createtween(part, cframe,ttime)
	local tweeninfo = TweenInfo.new(ttime)
	tween = ts:Create(part, tweeninfo, {CFrame = cframe})
	tween:Play()
	tween.Completed:Wait()
end

outline = Instance.new("Highlight")

target = nil

mouse.Button1Up:Connect(function()
	if mouse.Target then
		local model = mouse.Target:FindFirstAncestorOfClass("Model")
		if model and model:FindFirstChild("Humanoid") then do
				camera.CameraSubject = model.Humanoid
				target = model
			end else
			outline.Parent = nil
		end
	end
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if player.Character:FindFirstChild("HumanoidRootPart") then
		player.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
		if target and target:FindFirstChild("HumanoidRootPart") then
			if target.HumanoidRootPart.CFrame.Y + 20 < player.Character.HumanoidRootPart.CFrame.Y then
				tween:Cancel()
			end
		end
	end
	if mouse.Target then
		local model = mouse.Target:FindFirstAncestorOfClass("Model")
		if model and model:FindFirstChild("Humanoid") then do
				outline.Parent = model
			end else
			outline.Parent = nil
		end
	end
end)

while task.wait() do
	if target ~= nil and target:FindFirstAncestorOfClass("Workspace") and target ~= player.Character and player.Character:FindFirstChild("HumanoidRootPart") and target:FindFirstChild("HumanoidRootPart") then
		character = player.Character
		hrp = character.HumanoidRootPart
		thrp = target.HumanoidRootPart
		hrp.CFrame = thrp.CFrame * CFrame.Angles(math.rad(90),0,0) + thrp.CFrame.UpVector * -10
	end
	if target ~= nil and target:FindFirstAncestorOfClass("Workspace") and target ~= player.Character and player.Character:FindFirstChild("HumanoidRootPart") and target:FindFirstChild("HumanoidRootPart") then
		character = player.Character
		hrp = character.HumanoidRootPart
		thrp = target.HumanoidRootPart
		rot = thrp.CFrame*CFrame.Angles(math.rad(25),math.rad(25),math.rad(25))
		createtween(hrp, thrp.CFrame * CFrame.Angles(math.rad(90),0,0) + thrp.CFrame.UpVector * 1000000, 100000)
	end
end