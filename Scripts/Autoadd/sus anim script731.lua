local animationType = "Rape" --modes: Rape, Bend
local Target = "username (NO DISPLAY)"
local TargetChar = typeof(Target) == "Instance" and Target or typeof(Target) == "string" and game:GetService("Players"):FindFirstChild(Target).Character

local plr = game:GetService("Players").LocalPlayer
plr.Character:BreakJoints()
plr.CharacterAdded:Wait():WaitForChild("Animate"):Destroy()
local Character = plr.Character
Character.Humanoid.Sit = true
local RP_Offset = CFrame.new()
local Torso = Character.Torso
local joints = {
	RS = Torso["Right Shoulder"],
	LS = Torso["Left Shoulder"],
	RH = Torso["Right Hip"],
	LH = Torso["Left Hip"],
	Neck = Torso.Neck,
}

--Character.HumanoidRootPart.Anchored = true
 Character.Humanoid.Animator:Destroy()
game:GetService("RunService").RenderStepped:Connect(function()
	Character.HumanoidRootPart.CFrame = TargetChar.HumanoidRootPart.CFrame * RP_Offset
	for i, v in Character:GetDescendants() do
		if v:IsA("BasePart") then
            v.CanTouch = false
			v.AssemblyLinearVelocity = Vector3.new()
			v.AssemblyAngularVelocity = Vector3.new()
		end
	end
   
	Character.Humanoid.Sit = true
	Character.Humanoid.JumpPower = 0
	Character.Humanoid.JumpHeight = 0
	for i, parts in Character:GetDescendants() do
		if parts:IsA("BasePart") then
			parts.CanCollide = false
		end
	end
end)
for i, v in joints do
	v.MaxVelocity = .05
end
while true do
	if animationType == "Bend" then
		joints.RS:SetDesiredAngle(2.75)
		joints.LS:SetDesiredAngle(-2.75)
		joints.RH:SetDesiredAngle(1.75)
		joints.LH:SetDesiredAngle(-1.75)
		joints.Neck:SetDesiredAngle(1.2)
		for i = 0,1,.5 do
			RP_Offset = RP_Offset:Lerp(CFrame.new(0,-1.5, -1.75) * CFrame.Angles(math.rad(-120),0,0),i)
			task.wait(.05)
		end
		joints.RS:SetDesiredAngle(2.5)
		joints.LS:SetDesiredAngle(-2.5)
		joints.RH:SetDesiredAngle(1.5)
		joints.LH:SetDesiredAngle(-1.5)
		joints.Neck:SetDesiredAngle(1.2)
		for i = 0,1,.5 do
			RP_Offset = RP_Offset:Lerp(CFrame.new(0,-1.5, -2) * CFrame.Angles(math.rad(-120),0,0),i)
			task.wait(.05)
		end
	elseif animationType == "Rape" then
		joints.RS:SetDesiredAngle(.5)
		joints.LS:SetDesiredAngle(-.5)
		joints.RH:SetDesiredAngle(-.1)
		joints.LH:SetDesiredAngle(.1)
		joints.Neck:SetDesiredAngle(0)
		for i = 0,1,.5 do
			RP_Offset = RP_Offset:Lerp(CFrame.new(0,0, 1.2) * CFrame.Angles(math.rad(5),0,0),i)
			task.wait(.05)
		end
		joints.RS:SetDesiredAngle(.3)
		joints.LS:SetDesiredAngle(-.3)
		joints.RH:SetDesiredAngle(-.4)
		joints.LH:SetDesiredAngle(.4)
		joints.Neck:SetDesiredAngle(0)
		for i = 0,1,.5 do
			RP_Offset = RP_Offset:Lerp(CFrame.new(0,0, 1) * CFrame.Angles(math.rad(15),0,0),i)
			task.wait(.05)
		end
	end
end