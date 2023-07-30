--[[
Visible Skateboard soon! ]]--

transparency = 1

lp = game:GetService("Players").LocalPlayer
char = lp.Character
humanoid = char.Humanoid
animate = char.Animate
animator = humanoid.Animator

board = Instance.new("Part",workspace)
board.Size = Vector3.new(2, 0.4, 6)
board.Position = char.Head.Position - Vector3.new(0,4,0)
board.Transparency = transparency


game:GetService("RunService").RenderStepped:Connect(function()
	char.HumanoidRootPart.Velocity = board.Velocity
	char.HumanoidRootPart.CFrame = (board.CFrame + board.CFrame.UpVector * 3.2) * CFrame.Angles(0,math.rad(120),0) 
end)

humanoid.PlatformStand = true

for i,v in pairs(humanoid:GetPlayingAnimationTracks()) do
	v:Stop()
end

animate.Enabled = false

CoastingPose = Instance.new("Animation")
CoastingPose.AnimationId = "rbxassetid://160737288"
CoastingPosetrack = animator:LoadAnimation(CoastingPose)

pushanimation = Instance.new("Animation")
pushanimation.AnimationId = "rbxassetid://160737244"
pushanimationtrack = animator:LoadAnimation(pushanimation)

CoastingPosetrack:Play()

function newwheel(pos)
	local wheel = Instance.new("Part",board)
	wheel.Size = Vector3.new(1,1,1)
	wheel.Shape = Enum.PartType.Ball
	wheel.Position = char.Head.Position
	wheel.Transparency = transparency

	local socket = Instance.new("BallSocketConstraint",wheel)
	socket.LimitsEnabled = true
	socket.UpperAngle = 0

	local boardattachment = Instance.new("Attachment",board)
	boardattachment.CFrame = pos

	socket.Attachment0 = boardattachment
	socket.Attachment1 = Instance.new("Attachment",wheel)
	
end

newwheel(CFrame.new(2, -0.2, 2))
newwheel(CFrame.new(-2, -0.2, 2))
newwheel(CFrame.new(2, -0.2, -2))
newwheel(CFrame.new(-2, -0.2, -2))


pushforce = Instance.new("VectorForce",board)
pushforce.Attachment0 = Instance.new("Attachment",board)
pushforce.Force = Vector3.new(0,0,0)

function push(num)
	pushforce.Force = Vector3.new(0,0,num)
end

forwardforce = false
rightturn = false
leftturn = false
braking = false

game:GetService("UserInputService").InputEnded:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.W then
		forwardforce = false
	end
	if key.KeyCode == Enum.KeyCode.D then
		rightturn = false
	end
	if key.KeyCode == Enum.KeyCode.A then
		leftturn = false
	end
	if key.KeyCode == Enum.KeyCode.S then
		for i,v in pairs(board:GetDescendants()) do
			if v:IsA("BallSocketConstraint") then
				v.MaxFrictionTorque = 0
			end
		end
	end
end)

turnspeed = 1

game:GetService("UserInputService").InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.W then
		forwardforce = true
		push(200)
		wait(.5)
		push(10)
		while forwardforce do
			task.wait()
		end
		push(0)
	end
	if key.KeyCode == Enum.KeyCode.D then
		rightturn = true
		leftturn = false
		while rightturn do
			task.wait()
			board.CFrame = board.CFrame * CFrame.Angles(0,math.rad(-turnspeed),0)
		end
	end
	if key.KeyCode == Enum.KeyCode.A then
		rightturn = false
		leftturn = true
		while leftturn do
			task.wait()
			board.CFrame = board.CFrame * CFrame.Angles(0,math.rad(turnspeed),0)
		end
	end
	if key.KeyCode == Enum.KeyCode.S then
		for i,v in pairs(board:GetDescendants()) do
			if v:IsA("BallSocketConstraint") then
				v.MaxFrictionTorque = 100
			end
		end
	end
end)