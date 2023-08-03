-- hats https://www.roblox.com/catalog?Category=1&CreatorName=DuckXander&CreatorType=Group&salesTypeFilter=1

-- script below
-- | Made by GROUD

function Align(Part0,Part1,Position,Angle)
    local AlignPos = Instance.new('AlignPosition', Part1);
    AlignPos.Parent.CanCollide = false;
    AlignPos.ApplyAtCenterOfMass = true;
    AlignPos.MaxForce = 67752;
    AlignPos.MaxVelocity = math.huge/9e110;
    AlignPos.ReactionForceEnabled = false;
    AlignPos.Responsiveness = 200;
    AlignPos.RigidityEnabled = false;
    local AlignOri = Instance.new('AlignOrientation', Part1);
    AlignOri.MaxAngularVelocity = math.huge/9e110;
    AlignOri.MaxTorque = 67752;
    AlignOri.PrimaryAxisOnly = false;
    AlignOri.ReactionTorqueEnabled = false;
    AlignOri.Responsiveness = 200;
    AlignOri.RigidityEnabled = false;
    local AttachmentA=Instance.new('Attachment',Part1);
    local AttachmentB=Instance.new('Attachment',Part0);
    AttachmentA.Name = "BruhA"
    AttachmentB.Name = "BruhB"
    AttachmentB.Orientation = Angle
    AttachmentB.Position = Position
    AlignPos.Attachment0 = AttachmentA;
    AlignPos.Attachment1 = AttachmentB;
    AlignOri.Attachment0 = AttachmentA;
    AlignOri.Attachment1 = AttachmentB;
end

User = game:GetService("Players").LocalPlayer
Body = User.Character
Soul = Body.Humanoid

FakeLeg = Body.RightUpperLeg:Clone()
FakeLeg.Transparency = 1
Body.RightUpperLeg:Destroy()
FakeLeg.Parent = Body
Body.RightUpperLeg.RightUpperLeg:Destroy()

local Korblox = Body["Recolor (For Korblox)"]
Korblox.Handle.Massless = true
Korblox.Handle:BreakJoints()

Align(FakeLeg,Korblox.Handle,Vector3.new(0,.25,0),Vector3.new(0,0,0))

game:GetService("RunService").Heartbeat:connect(function(t)
    if Korblox:FindFirstChild("Handle", true) then
        Korblox.Handle.Velocity = Vector3.new(0, 30,0)
    end;
end)