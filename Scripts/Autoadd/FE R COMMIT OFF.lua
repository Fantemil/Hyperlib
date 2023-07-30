local A_1 = "This is it im doing it."
local A_2 = "All"
local character= game.Players.LocalPlayer.Character
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
wait(1)
local A_1 = "I'm going to commit oof."
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
wait(1)
local A_1 = "Sayonara cruel world."
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
wait(1)
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
["RightLowerLeg"] = true;
["RightLowerArm"] = true;
["LeftLowerLeg"] = true;
["LeftLowerArm"] = true;
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
rightLegAttachment.Parent, leftLegAttachment.Parent = LocalPlayer.Character.UpperTorso, LocalPlayer.Character.UpperTorso
jointAttachments = {
['Head'] = {
['Attachment0'] = LocalPlayer.Character.UpperTorso['NeckAttachment'];
['Attachment1'] = LocalPlayer.Character.Head['Head[Attachment]'];
};
['LeftLowerArm'] = {
['Attachment0'] = LocalPlayer.Character.UpperTorso['LeftCollarAttachment'];
['Attachment1'] = LocalPlayer.Character['LeftLowerArm']['LeftLowerArm[Attachment]'];
};
['RightLowerArm'] = {
['Attachment0'] = LocalPlayer.Character.UpperTorso['RightCollarAttachment'];
['Attachment1'] = LocalPlayer.Character['RightLowerArm']['RightLowerArm[Attachment]'];
};
['LeftLowerLeg'] = {
['Attachment0'] = leftLegAttachment;
['Attachment1'] = LocalPlayer.Character['LeftLowerLeg']['LeftLowerLeg[Attachment]'];
};
['RightLowerLeg'] = {
['Attachment0'] = rightLegAttachment;
['Attachment1'] = LocalPlayer.Character['RightLowerLeg']['RightLowerLeg[Attachment]'];
};
}
LocalPlayer.Character.Humanoid.PlatformStand = true

Iterate(LocalPlayer.Character.UpperTorso, function(v)
if v:IsA("Motor") then
v:Remove()
character:BreakJoints()
end
end)