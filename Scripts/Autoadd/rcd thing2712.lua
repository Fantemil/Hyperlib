local ct = {}
local te = table.insert
local ps = settings():GetService("PhysicsSettings")
ps.AllowSleep = false
ps.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
    if v:IsA("BasePart") then 
        te(ct,game:GetService("RunService").Heartbeat:connect(function()
            v.Velocity = Vector3.new(0,1000,0)
sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",1000)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999)
            
        end))
    end
end

_G.Velocity = Vector3.new(35,0,0)

local function Align(P0,P1,Position,Rotate)
local AlignPosition = Instance.new("AlignPosition", P0)
local AlignOrientation = Instance.new("AlignOrientation", P0)
local Attachment1 = Instance.new("Attachment", P0)
local Attachment2 = Instance.new("Attachment", P1)
-- Main Attach Thingy:
AlignPosition.Attachment0,AlignPosition.Attachment1 = Attachment1,Attachment2 -- Shortcut
AlignOrientation.Attachment0,AlignOrientation.Attachment1 = Attachment1,Attachment2 -- Shortcut
-- Properties:
AlignPosition.RigidityEnabled = true
AlignOrientation.RigidityEnabled = true
-- Rotate/Position
Attachment1.Position = Position or Vector3.new(0,0,0)
Attachment1.Rotation = Rotate or Vector3.new(0,0,0)
end

local Character = workspace[game.Players.LocalPlayer.Name]
local Humanoid = Character:FindFirstChild("Humanoid")
Character.Archivable = true

local Reanim = Character:Clone()
Reanim.Parent = game.workspace
Reanim.Name = "TalentlessDumbass" -- fox*

for i,v in pairs(Reanim:GetChildren()) do 
	if v:IsA("BasePart") then v.Transparency = 1
		elseif v:IsA("Accessory") then v:Destroy()
	end
end

game:GetService("RunService").Stepped:Connect(function()
    Humanoid.Died:Connect(function()
        return -- Breaks the script, function 'break' will not work on runservices idk why.
    end)
    for i,v in pairs(Character:GetChildren()) do
        if v:IsA("BasePart") then
            v.CanCollide = false
        end
    end
end)

game.Players.LocalPlayer.CharacterAppearanceLoaded:Connect(function(Character)
Character.Animate.Disabled = true
Reanim.Animate.Disabled = true

for i,v in pairs(Character:GetChildren()) do
Reanim.Humanoid:Move(Character.Humanoid.MoveDirection)
game:GetService("UserInputService").JumpRequest:Connect(function()
	Reanim.Humanoid.Jump = true
	Reanim.Humanoid.Sit = false
end)
end

Character.Torso['Right Shoulder']:Destroy()
Character.Torso['Left Shoulder']:Destroy()
Character.Torso['Right Hip']:Destroy()
Character.Torso['Left Hip']:Destroy()
Character.Torso.Neck:Destroy()
Character.HumanoidRootPart:Destroy()
Character.Humanoid:Destroy()
function InstantAttach(P0)
    Align(Character[P0],Reanim[P0])
end
Character.Head.CFrame = Reanim.Head.CFrame
Character.Torso.CFrame = Reanim.Torso.CFrame
Character["Right Arm"].CFrame = Reanim["Right Arm"].CFrame
Character["Left Arm"].CFrame = Reanim["Left Arm"].CFrame
Character["Right Leg"].CFrame = Reanim["Right Leg"].CFrame
Character["Left Leg"].CFrame = Reanim["Left Leg"].CFrame

InstantAttach("Right Arm")
InstantAttach("Left Arm")
InstantAttach("Right Leg")
InstantAttach("Left Leg")
InstantAttach("Torso")
InstantAttach("Head")


game.Players.LocalPlayer.Character = Reanim

workspace:FindFirstChildOfClass("Camera").CameraSubject = Reanim.Humanoid
Character.Animate.Disabled = false
Reanim.Animate.Disabled = false
end)

game.Players.LocalPlayer.Character.Humanoid.Health = 0
wait(game.Players.RespawnTime + 0.5)