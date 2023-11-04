local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Char2 = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local h = Char2:FindFirstChildOfClass("Humanoid") or Char2:WaitForChild("Humanoid")

if h.RigType ~= Enum.HumanoidRigType.R6 then return end

LocalPlayer.Character:BreakJoints()
LocalPlayer.Character=nil
repeat task.wait() until LocalPlayer.Character
Char = LocalPlayer.Character
task.wait(.1)
LocalPlayer.Character:BreakJoints()
       
LocalPlayer.CharacterAdded:Connect(function(c)
Char = c
function waitForChild(parent, childName)
local child = parent:FindFirstChild(childName)
if child then return child end
while true do
child = parent.ChildAdded:Wait()
if child.Name == childName then return child end
end
end

waitForChild(Char, "Animate").Disabled = true

task.wait(1)

-- ANIMATION

-- declarations

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Figure = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Torso = waitForChild(Figure, "Torso")
local RightShoulder = waitForChild(Torso, "Right Shoulder")
local LeftShoulder = waitForChild(Torso, "Left Shoulder")
local RightHip = waitForChild(Torso, "Right Hip")
local LeftHip = waitForChild(Torso, "Left Hip")
local Neck = waitForChild(Torso, "Neck")
local Humanoid = waitForChild(Figure, "Humanoid")
local pose = "Standing"

local toolAnim = "None"
local toolAnimTime = 0

local jumpMaxLimbVelocity = 0.75

-- functions

function onRunning(speed)
if speed>0 then
pose = "Running"
else
pose = "Standing"
end
end

function onDied()
pose = "Dead"
end

function onJumping()
pose = "Jumping"
end

function onClimbing()
pose = "Climbing"
end

function onGettingUp()
pose = "GettingUp"
end

function onFreeFall()
pose = "FreeFall"
end

function onFallingDown()
pose = "FallingDown"
end

function onSeated()
pose = "Seated"
end

function onPlatformStanding()
pose = "PlatformStanding"
end

function onSwimming(speed)
if speed>0 then
pose = "Climbing"
else
pose = "Running"
end
end

function moveJump()
RightShoulder.MaxVelocity = 0.5
LeftShoulder.MaxVelocity = 0.5
RightShoulder:SetDesiredAngle(3.14)
LeftShoulder:SetDesiredAngle(-3.14)
RightHip:SetDesiredAngle(0)
LeftHip:SetDesiredAngle(0)
end


-- same as jump for now

function moveFreeFall()
RightShoulder.MaxVelocity = 0.5
LeftShoulder.MaxVelocity = 0.5
RightShoulder:SetDesiredAngle(3.14)
LeftShoulder:SetDesiredAngle(-3.14)
RightHip:SetDesiredAngle(0)
LeftHip:SetDesiredAngle(0)
end

function moveSit()
RightShoulder.MaxVelocity = 0.5
LeftShoulder.MaxVelocity = 0.5
RightShoulder:SetDesiredAngle(3.14 /2)
LeftShoulder:SetDesiredAngle(-3.14 /2)
RightHip:SetDesiredAngle(3.14 /2)
LeftHip:SetDesiredAngle(-3.14 /2)
end

function getTool()
for _, kid in ipairs(Figure:GetChildren()) do
if kid.className == "Tool" then return kid end
end
return nil
end

function getToolAnim(tool)
for _, c in ipairs(tool:GetChildren()) do
if c.Name == "toolanim" and c.className == "StringValue" then
return c
end
end
return nil
end

function animateTool()

if (toolAnim == "None") then
RightShoulder:SetDesiredAngle(1.57)
return
end

if (toolAnim == "Slash") then
RightShoulder.MaxVelocity = 0.5
RightShoulder:SetDesiredAngle(0)
return
end

if (toolAnim == "Lunge") then
RightShoulder.MaxVelocity = 0.5
LeftShoulder.MaxVelocity = 0.5
RightHip.MaxVelocity = 0.5
LeftHip.MaxVelocity = 0.5
RightShoulder:SetDesiredAngle(1.57)
LeftShoulder:SetDesiredAngle(1.0)
RightHip:SetDesiredAngle(1.57)
LeftHip:SetDesiredAngle(1.0)
return
end
end

function move(time)
local amplitude
local frequency

if (pose == "Jumping") then
moveJump()
return
end

if (pose == "FreeFall") then
moveFreeFall()
return
end

if (pose == "Seated") then
moveSit()
return
end

local climbFudge = 0

if (pose == "Running") then
RightShoulder.MaxVelocity = 0.08
LeftShoulder.MaxVelocity = 0.08
amplitude = 0.66
frequency = 8
elseif (pose == "Climbing") then
RightShoulder.MaxVelocity = 0.4
LeftShoulder.MaxVelocity = 0.4
amplitude = 0.66
frequency = 9
climbFudge = 3.14
else
amplitude = 0.07
frequency = 1
end

desiredAngle = amplitude * math.sin(time*frequency)

RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
RightHip:SetDesiredAngle(-desiredAngle)
LeftHip:SetDesiredAngle(-desiredAngle)


local tool = getTool()

if tool then

animStringValueObject = getToolAnim(tool)

if animStringValueObject then
toolAnim = animStringValueObject.Value
-- message recieved, delete StringValue
animStringValueObject.Parent = nil
toolAnimTime = time + .3
end

if time > toolAnimTime then
toolAnimTime = 0
toolAnim = "None"
end

animateTool()

else
toolAnim = "None"
toolAnimTime = 0
end
end


-- connect events

Humanoid.Died:Connect(onDied)
Humanoid.Running:Connect(onRunning)
Humanoid.Jumping:Connect(onJumping)
Humanoid.Climbing:Connect(onClimbing)
Humanoid.GettingUp:Connect(onGettingUp)
Humanoid.FreeFalling:Connect(onFreeFall)
Humanoid.FallingDown:Connect(onFallingDown)
Humanoid.Seated:Connect(onSeated)
Humanoid.PlatformStanding:Connect(onPlatformStanding)
Humanoid.Swimming:Connect(onSwimming)
-- main program

local runService = game:service("RunService");

while Figure.Parent~=nil do
local _, time = wait(0.1)
move(time)
end
end)