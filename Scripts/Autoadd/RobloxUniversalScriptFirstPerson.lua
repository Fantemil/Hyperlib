wait()

local player = game.Players.LocalPlayer
local character = player.Character
if not character or not character.Parent then
 character = player.CharacterAdded:wait()
end
local humanoid = character:WaitForChild("Humanoid")
local torso = character:WaitForChild("Torso")
local rightShoulder = torso:WaitForChild("Right Shoulder")
local leftShoulder = torso:WaitForChild("Left Shoulder")
local head = character:WaitForChild("Head")
local rootpart = character:WaitForChild("HumanoidRootPart")
local camera = game.Workspace.CurrentCamera

updateSpeed = 0.5/2

game:GetService("RunService").RenderStepped:Connect(function()
 character["Right Arm"].LocalTransparencyModifier = character["Right Arm"].Transparency
 character["Left Arm"].LocalTransparencyModifier = character["Left Arm"].Transparency
 local camCF = camera.CoordinateFrame
 local distance = (character.Head.Position - camCF.p).magnitude
 if distance <= 2 and humanoid.Health ~= 0 then
  rightShoulder.C0 = rightShoulder.C0:lerp((camCF * CFrame.new(1, -1, -.5)):toObjectSpace(torso.CFrame):inverse() * CFrame.Angles(0, math.pi/2, 0), updateSpeed)
  leftShoulder.C0 = leftShoulder.C0:lerp((camCF * CFrame.new(-1, -1, -.5)):toObjectSpace(torso.CFrame):inverse() * CFrame.Angles(0, -math.pi/2, 0), updateSpeed)
  humanoid.CameraOffset = (rootpart.CFrame+Vector3.new(0,1.5,0)):pointToObjectSpace(head.CFrame.p)
 else
  rightShoulder.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.pi/2, 0)
  leftShoulder.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, -math.pi/2, 0)
  humanoid.CameraOffset = Vector3.new(0,0,0)
 end
end)