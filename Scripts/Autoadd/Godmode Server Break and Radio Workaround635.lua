--Kaid#0001 made this lol
FULL GOD
--
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

--

Server Break
--

local c = game:GetService("Players").LocalPlayer.Character
c.Parent = game:GetService("Lighting")
c.HumanoidRootPart.Parent = nil
c.Parent = workspace
c.CollisionParts:Destroy()

while wait(1) do
   for i,v in pairs(c:GetDescendants()) do
       if v.Name == "ToolType" then
           v:Destroy()
       end
   end
end

--

Radio Script
--
local UI = game:GetObjects("rbxassetid://7118181510")[1]
if syn and syn.protect_gui then
   syn.protect_gui(UI)
end
UI.Parent = game:GetService("CoreGui")

wait()

UI.Main.Text.Text = "Custom Radio Gui By Kaid#0001\n\nJoin discord.gg/hatsune"

--Drag Script
local a=game:GetService("UserInputService")local b=UI.Main;local c;local d;local e;local f;local function g(h)local i=h.Position-e;b.Position=UDim2.new(f.X.Scale,f.X.Offset+i.X,f.Y.Scale,f.Y.Offset+i.Y)end;b.InputBegan:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseButton1 then c=true;e=h.Position;f=b.Position;h.Changed:Connect(function()if h.UserInputState==Enum.UserInputState.End then c=false end end)end end)b.InputChanged:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseMovement then d=h end end)a.InputChanged:Connect(function(h)if h==d and c then g(h)end end)

--Close Button
UI.Main.CloseGui.MouseButton1Down:Connect(function()
   UI.Main.Visible = false
   UI.OpenButton.Position = UI.Main.Position
   UI.OpenButton.Visible = true
end)

--Open Button
UI.OpenButton.OpenGui.MouseButton1Down:Connect(function()
   UI.Main.Visible = true
   UI.OpenButton.Visible = false
end)

--Play Button
UI.Main.Play.MouseButton1Down:Connect(function()
   game:GetService("ReplicatedStorage").GameEvents.Gameplay.PlayRadio:FireServer({tonumber(UI.Main.Input.Text),1})
end)