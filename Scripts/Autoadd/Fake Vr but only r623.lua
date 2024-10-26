local plr = game.Players.LocalPlayer;
local chr = plr.Character;
local hum = chr.Humanoid;

--Making Controllable Gui
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)

local LeftHandRedParent = Instance.new("Frame",ScreenGui)
local RightHandBlueParent = Instance.new("Frame",ScreenGui)

local LeftHandRed = Instance.new("Frame",LeftHandRedParent)
local RightHandBlue = Instance.new("Frame",RightHandBlueParent)

LeftHandRedParent.BackgroundColor3 = Color3.new(0.5, 0.0, 0.0)
LeftHandRedParent.Position = UDim2.new(0.25, 0, 0.3, 0)
LeftHandRedParent.Size = UDim2.new(0, 50, 0, 50)

RightHandBlueParent.BackgroundColor3 = Color3.new(0.0, 0.0, 0.5)
RightHandBlueParent.Position = UDim2.new(0.60, 0.0, 0.3, 0.0)
RightHandBlueParent.Size = UDim2.new(0, 50, 0, 50)

LeftHandRed.BackgroundColor3 = Color3.new(1.0, 0.0, 0.0)
LeftHandRed.Position = UDim2.new(0.0, 0, 0.0, 0)
LeftHandRed.Size = UDim2.new(0.8,0,0.8,0.0)
LeftHandRed.Active = true
LeftHandRed.Draggable = true

RightHandBlue.BackgroundColor3 = Color3.new(0.0, 0.0, 1.0)
RightHandBlue.Size = UDim2.new(0.8,0,0.8,0.0)
RightHandBlue.Active = true
RightHandBlue.Draggable = true

--armfirstperson

local LEFTARMFIRSTPERSON = Instance.new("Part", game.Workspace)
LEFTARMFIRSTPERSON.Size = Vector3.new(chr["Left Arm"].Size.X * 0.7,chr["Left Arm"].Size.Y * 0.7,chr["Left Arm"].Size.Z * 0.7)
LEFTARMFIRSTPERSON.CanCollide = false
LEFTARMFIRSTPERSON.Transparency = 0.3
LEFTARMFIRSTPERSON.Anchored = true

local RIGHTARMFIRSTPERSON = Instance.new("Part", game.Workspace)
RIGHTARMFIRSTPERSON.Size = Vector3.new(chr["Left Arm"].Size.X * 0.7,chr["Left Arm"].Size.Y * 0.7,chr["Left Arm"].Size.Z * 0.7)
RIGHTARMFIRSTPERSON.CanCollide = false
RIGHTARMFIRSTPERSON.Transparency = 0.3
RIGHTARMFIRSTPERSON.Anchored = true

wait()

chr:SetPrimaryPartCFrame(chr.Torso.CFrame * CFrame.Angles(0,math.rad(0),0))

wait()

game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.character.HumanoidRootPart.Position.x,game.Players.LocalPlayer.character.HumanoidRootPart.Position.y,game.Players.LocalPlayer.character.HumanoidRootPart.Position.z)

wait()

chr["Right Arm"]:BreakJoints()
chr["Left Arm"]:BreakJoints()
chr["Right Leg"]:BreakJoints()
chr["Left Leg"]:BreakJoints()

chr.Torso.CanCollide = false
chr["Right Arm"].CanCollide = true
chr["Left Arm"].CanCollide = true
chr["Right Leg"].CanCollide = true
chr["Left Leg"].CanCollide = true

local RightArm0 = Instance.new("Attachment", chr["Right Arm"])
RightArm0.Position = Vector3.new(0.15, 1, 0)
local RightArm1 = Instance.new("Attachment", chr["Torso"])
RightArm1.Position = Vector3.new(1.65, 0.85, 0)
local socket1 = Instance.new("BallSocketConstraint", chr["Right Arm"])
socket1.Attachment0 = RightArm0
socket1.Attachment1 = RightArm1

local LeftArm0 = Instance.new("Attachment", chr["Left Arm"])
LeftArm0.Position = Vector3.new(-0.15, 1, 0)
local LeftArm1 = Instance.new("Attachment", chr["Torso"])
LeftArm1.Position = Vector3.new(-1.65, 0.85, 0)
local socket2 = Instance.new("BallSocketConstraint", chr["Left Arm"])
socket2.Attachment0 = LeftArm0
socket2.Attachment1 = LeftArm1

local RightRopeLeg0 = Instance.new("Attachment", chr["Right Leg"])
RightRopeLeg0.Position = Vector3.new(0, 1, 0)
local RightRopeLeg1 = Instance.new("Attachment", chr["Torso"])
RightRopeLeg1.Position = Vector3.new(0.35, 1, 0)
local socket3 = Instance.new("RopeConstraint", chr["Right Leg"])
socket3.Attachment0 = RightRopeLeg0
socket3.Attachment1 = RightRopeLeg1

local LeftRopeLeg0 = Instance.new("Attachment", chr["Left Leg"])
LeftRopeLeg0.Position = Vector3.new(0, 1, 0)
local LeftRopeLeg1 = Instance.new("Attachment", chr["Torso"])
LeftRopeLeg1.Position = Vector3.new(-0.35, 1, 0)
local socket4 = Instance.new("RopeConstraint", chr["Left Leg"])
socket4.Attachment0 = LeftRopeLeg0
socket4.Attachment1 = LeftRopeLeg1

--Lerp part 0
local RightLeg0 = Instance.new("Attachment", chr["Torso"])
RightLeg0.WorldPosition = chr["Right Leg"].Position

local LeftLeg0 = Instance.new("Attachment", chr["Torso"])
LeftLeg0.WorldPosition = chr["Left Leg"].Position

--Lerp part 1
local RightLeg1 = Instance.new("Attachment", chr["Torso"])
RightLeg1.WorldPosition = Vector3.new(chr["Right Leg"].Position.X,chr["Right Leg"].Position.Y + 1.0,chr["Right Leg"].Position.Z - 1.0)

local LeftLeg1 = Instance.new("Attachment", chr["Torso"])
LeftLeg1.WorldPosition = Vector3.new(chr["Left Leg"].Position.X,chr["Left Leg"].Position.Y + 1.0,chr["Left Leg"].Position.Z - 1.0)

--Lerp part 2
local RightLeg2 = Instance.new("Attachment", chr["Torso"])
RightLeg2.WorldPosition = Vector3.new(chr["Right Leg"].Position.X,chr["Right Leg"].Position.Y,chr["Right Leg"].Position.Z - 0.5)

local LeftLeg2 = Instance.new("Attachment", chr["Torso"])
LeftLeg2.WorldPosition = Vector3.new(chr["Left Leg"].Position.X,chr["Left Leg"].Position.Y,chr["Left Leg"].Position.Z - 0.5)

--Lerp part 3
local RightLeg3 = Instance.new("Attachment", chr["Torso"])
RightLeg3.WorldPosition = Vector3.new(chr["Right Leg"].Position.X,chr["Right Leg"].Position.Y,chr["Right Leg"].Position.Z + 0.2)

local LeftLeg3 = Instance.new("Attachment", chr["Torso"])
LeftLeg3.WorldPosition = Vector3.new(chr["Left Leg"].Position.X,chr["Left Leg"].Position.Y,chr["Left Leg"].Position.Z + 0.2)

LegsPart = 0

game:GetService("RunService").Heartbeat:connect(function()

--arms
chr["Right Arm"].Orientation = Vector3.new(chr.Torso.Orientation.X - RightHandBlue.Position.Y.Offset,chr.Torso.Orientation.Y - RightHandBlue.Position.X.Offset,chr.Torso.Orientation.Z)
chr["Left Arm"].Orientation = Vector3.new(chr.Torso.Orientation.X - LeftHandRed.Position.Y.Offset,chr.Torso.Orientation.Y + LeftHandRed.Position.X.Offset,chr.Torso.Orientation.Z )

--In First Person Arm
RIGHTARMFIRSTPERSON.CFrame = RIGHTARMFIRSTPERSON.CFrame:Lerp(chr["Right Arm"].CFrame, 0.7)
LEFTARMFIRSTPERSON.CFrame = LEFTARMFIRSTPERSON.CFrame:Lerp(chr["Left Arm"].CFrame, 0.7)

chr.Head.Velocity = Vector3.new(0,3,0)
chr.Torso.Velocity = Vector3.new(0,3,0)
chr["Right Arm"].Velocity = Vector3.new(0,3,0)
chr["Left Arm"].Velocity = Vector3.new(0,3,0)
chr["Right Leg"].Velocity = Vector3.new(0,3,0)
chr["Left Leg"].Velocity = Vector3.new(0,3,0)

if chr.Humanoid.Health < 1 then
LeftHandRedParent.Position = UDim2.new(99, 0, 0.3, 0)
RightHandBlueParent.Position = UDim2.new(99, 0, 0.3, 0)
end

--sit

if chr.Humanoid.Sit == true then
chr["Right Leg"].CFrame = chr["Right Leg"].CFrame:Lerp(RightLeg1.WorldCFrame, 0.7)
chr["Left Leg"].CFrame = chr["Left Leg"].CFrame:Lerp(LeftLeg1.WorldCFrame, 0.65)
end

if chr.Humanoid.Sit == false then

--idle

if chr.Torso.Velocity.Magnitude < 4 then
if chr.Torso.Velocity.Y < 4 then
if chr.Torso.Velocity.Y > -4 then
chr["Right Leg"].CFrame = chr["Right Leg"].CFrame:Lerp(RightLeg0.WorldCFrame, 0.7)
chr["Left Leg"].CFrame = chr["Left Leg"].CFrame:Lerp(LeftLeg0.WorldCFrame, 0.65)
end
end
end

--air

if chr.Torso.Velocity.Y > 4 then
chr["Right Leg"].CFrame = chr["Right Leg"].CFrame:Lerp(RightLeg1.WorldCFrame, 0.7)
chr["Left Leg"].CFrame = chr["Left Leg"].CFrame:Lerp(LeftLeg1.WorldCFrame, 0.65)
end
if chr.Torso.Velocity.Y < -4 then
chr["Right Leg"].CFrame = chr["Right Leg"].CFrame:Lerp(RightLeg1.WorldCFrame, 0.7)
chr["Left Leg"].CFrame = chr["Left Leg"].CFrame:Lerp(LeftLeg1.WorldCFrame, 0.65)
end

--walking

if chr.Torso.Velocity.Magnitude > 4 then
if chr.Torso.Velocity.Y < 4 then
if chr.Torso.Velocity.Y > -4 then

if LegsPart == 0 then
chr["Right Leg"].CFrame = chr["Right Leg"].CFrame:Lerp(RightLeg1.WorldCFrame, 0.35)
chr["Left Leg"].CFrame = chr["Left Leg"].CFrame:Lerp(LeftLeg2.WorldCFrame, 0.35)
wait(0.15)
LegsPart = 1
end

if LegsPart == 1 then
chr["Right Leg"].CFrame = chr["Right Leg"].CFrame:Lerp(RightLeg2.WorldCFrame, 0.35)
chr["Left Leg"].CFrame = chr["Left Leg"].CFrame:Lerp(LeftLeg3.WorldCFrame, 0.35)
wait(0.15)
LegsPart = 2
end

if LegsPart == 2 then
chr["Right Leg"].CFrame = chr["Right Leg"].CFrame:Lerp(RightLeg3.WorldCFrame, 0.36)
chr["Left Leg"].CFrame = chr["Left Leg"].CFrame:Lerp(LeftLeg1.WorldCFrame, 0.35)
wait(0.15)
LegsPart = 0
end
end
end
end
end

wait(0.5)

end)