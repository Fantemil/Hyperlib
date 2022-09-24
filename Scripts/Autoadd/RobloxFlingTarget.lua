-- Settings
local Settings = {
   Target = "" -- Target Name (Not display name)
}

-- Objects
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Target = Players:FindFirstChild(Settings.Target)

local BodyAngularVelocity = Instance.new("BodyAngularVelocity")
BodyAngularVelocity.AngularVelocity = Vector3.new(10^6, 10^6, 10^6)
BodyAngularVelocity.MaxTorque = Vector3.new(10^6, 10^6, 10^6)
BodyAngularVelocity.P = 10^6

-- Start
if not Target then return end
BodyAngularVelocity.Parent = LocalPlayer.Character.HumanoidRootPart

while Target.Character.HumanoidRootPart and LocalPlayer.Character.HumanoidRootPart do
   RunService.RenderStepped:Wait()
   LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * LocalPlayer.Character.HumanoidRootPart.CFrame.Rotation
   LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new()
end
   
BodyAngularVelocity.Parent = nil