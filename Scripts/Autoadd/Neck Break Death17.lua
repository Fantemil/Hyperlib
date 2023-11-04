local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://180611870"
local k = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(2)
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 5
Sound.Playing = true
Sound.Looped = false
Sound.SoundId = "rbxassetid://9105467029"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
wait(0.2)
k:AdjustSpeed(0)
wait(1)
k:AdjustSpeed(10)
wait(0.05)
k:AdjustSpeed(0)
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 10
Sound.Playing = true
Sound.Looped = false
Sound.SoundId = "rbxassetid://8029615457"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
wait(0.3)
LocalPlayer = game:GetService("Players").LocalPlayer
LocalPlayer.Character.Humanoid:MoveTo(LocalPlayer.Character.HumanoidRootPart.Position + LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 10)
LocalPlayer.Character.Humanoid.Jump = true
wait(0.5)
function Iterate(instance, func)
for i, v in next, instance:GetChildren() do
func(v)
end
end
limbs = {
["Right Leg"] = true;
["Right Arm"] = true;
["Left Leg"] = true;
["Left Arm"] = true;
}
Iterate(LocalPlayer.Character, function(v)
if v:IsA("BasePart") then
local attachment = Instance.new("Attachment")
attachment.Parent = v
attachment.Name = (v.Name .. "[Attachment]")
if limbs[v.Name] then
attachment.Position = Vector3.new(0, v.Size.Y/2, 0)
elseif v.Name == "Head" then
attachment.Position = Vector3.new(0, -v.Size.Y/2, 0)
attachment.Rotation = Vector3.new(0, 0, -90)
end
end
end)
local leftLegAttachment = Instance.new("Attachment")
leftLegAttachment.Position = Vector3.new(-.5, -1, 0)
leftLegAttachment.Rotation = Vector3.new(0, -90, 0)
local rightLegAttachment = Instance.new("Attachment")
rightLegAttachment.Position = Vector3.new(.5, -1, 0)
rightLegAttachment.Rotation = Vector3.new(0, -90, 0)
rightLegAttachment.Parent, leftLegAttachment.Parent = LocalPlayer.Character.Torso, LocalPlayer.Character.Torso
jointAttachments = {
['Head'] = {
['Attachment0'] = LocalPlayer.Character.Torso['NeckAttachment'];
['Attachment1'] = LocalPlayer.Character.Head['Head[Attachment]'];
};
['Left Arm'] = {
['Attachment0'] = LocalPlayer.Character.Torso['LeftCollarAttachment'];
['Attachment1'] = LocalPlayer.Character['Left Arm']['Left Arm[Attachment]'];
};
['Right Arm'] = {
['Attachment0'] = LocalPlayer.Character.Torso['RightCollarAttachment'];
['Attachment1'] = LocalPlayer.Character['Right Arm']['Right Arm[Attachment]'];
};
['Left Leg'] = {
['Attachment0'] = leftLegAttachment;
['Attachment1'] = LocalPlayer.Character['Left Leg']['Left Leg[Attachment]'];
};
['Right Leg'] = {
['Attachment0'] = rightLegAttachment;
['Attachment1'] = LocalPlayer.Character['Right Leg']['Right Leg[Attachment]'];
};
}
LocalPlayer.Character.Humanoid.PlatformStand = true
Iterate(LocalPlayer.Character, function(v)
if v:IsA("BasePart") then
if jointAttachments[v.Name] then
local ballSocketJoint = Instance.new("BallSocketConstraint")
ballSocketJoint.Parent = v
ballSocketJoint.Radius = 0.15
ballSocketJoint.Attachment0, ballSocketJoint.Attachment1 = jointAttachments[v.Name]['Attachment0'], jointAttachments[v.Name]['Attachment1']
end
end
end)
Iterate(LocalPlayer.Character.Torso, function(v)
if v:IsA("Motor") then
v:Remove()
end
end)
wait(0)
game.Lighting.Ambient = Color3.fromRGB(255, 0, 0)
game.Lighting.Brightness = 0
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character.Head
Sound.Volume = 10
Sound.Playing = true
Sound.Looped = false
Sound.SoundId = "rbxassetid://7249382073"
Sound.Name = "Voice"
Sound.PlaybackSpeed = 1
k:Stop()
wait(3)
game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
game.Lighting.Brightness = 2
