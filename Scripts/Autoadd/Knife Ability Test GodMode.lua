--Kaid#0001 made this lol
local plr = game:GetService("Players").LocalPlayer
local hum = plr.Character.Humanoid
local c = plr.Character
local Velocity = 200
local parts = {}

settings()['Physics'].AllowSleep = false
settings()['Physics'].PhysicsEnvironmentalThrottle = Enum['EnviromentalPhysicsThrottle'].Disabled

c.Parent = game:GetService("Lighting")
c.HumanoidRootPart.Parent = nil
c.Parent = workspace

for i,v in pairs(plr.Character.CollisionParts:GetChildren()) do
   table.insert(parts,v)
end

for i,v in pairs(parts) do
   v.Weld:Destroy()
end

task.wait(.1)

local root = hum.RootPart

for i,v in pairs(parts) do
   local handle = v
   handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
   local BodyVelocity = Instance.new("BodyVelocity")

   BodyVelocity.MaxForce = Vector3.new(1e6,1e6,1e6)
   BodyVelocity.P = 1e6
   BodyVelocity.Velocity = Vector3.new(0,-Velocity,0)
   BodyVelocity.Parent = handle
   local x,y,z
   local index = 0
   local Twist,Radius,Pry = 0,0,0
   local visualizer
   task.wait(.1)
   setscriptable(plr, "SimulationRadius", true)
   visualizer = game:GetService("RunService").Heartbeat:Connect(function(delta)
       if not v or v == nil or v.Parent ~= plr.Character.CollisionParts then
           visualizer:Disconnect();plr.Character:BreakJoints()
           BodyVelocity:Destroy()
           return
       end
       plr.SimulationRadius = 1000
       index = index + 1
       Pry = math.rad(index + (i*(360/#parts)))
       x,y,z = root.CFrame.p.X,root.CFrame.p.Y-(Velocity/4),root.CFrame.p.Z
       handle.CFrame = handle.CFrame:Lerp(CFrame.new(Vector3.new(x,y,z)) * CFrame.Angles(0,Pry,Pry) * CFrame.new(0,0,6), 1-(0.001)^delta)
       handle.AssemblyLinearVelocity = Vector3.new(0,Velocity,0)
   end)
end