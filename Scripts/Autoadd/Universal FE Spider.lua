--BROUGHT TO YOU BY RSCRIPTS.NET--




setsimulationradius(math.huge, math.huge)

local mouse = game.Players.LocalPlayer:GetMouse()

game.Players.LocalPlayer.Character.Archivable = true
game.Players.LocalPlayer.Character.Animate.Disabled = true
local clonec =  game.Players.LocalPlayer.Character:Clone()
clonec.Parent = workspace
clonec.Name = "POOCLONE"
clonec.Humanoid.HipHeight = -1.2 -- change this to look taller.
game.Players.LocalPlayer.Character = clonec
clonec.Animate.Disabled = false

workspace.Camera.CameraSubject = clonec.Humanoid
game.Players.LocalPlayer.Character = workspace[game.Players.LocalPlayer.Name]
game.Players.LocalPlayer.Character.Animate.Disabled = true
---game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy()

spawn(function()


while true do
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
clonec.Humanoid.Jump = game.Players.LocalPlayer.Character.Humanoid.Jump

local veco = workspace.Camera.CFrame:VectorToObjectSpace(game.Players.LocalPlayer.Character.Humanoid.MoveDirection)
clonec.Humanoid:Move(veco, true)

end
wait()
end

end)

for i,v in pairs(clonec:GetDescendants())do 
    
    if v:IsA("Part") then 
    v.Transparency = 1
    end 
end 





local bodyvelocity = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character["HumanoidRootPart"])
bodyvelocity.MaxForce = Vector3.new(9.9999999805064e+18, 9.999999869911e+14, 9.999999869911e+14)
bodyvelocity.Velocity = Vector3.new(0, 0, 0)
game:GetService("RunService").Stepped:connect(function()
    
    game.Players.LocalPlayer.Character.Torso.CanCollide = false 
    game.Players.LocalPlayer.Character.Head.CanCollide = false 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false 
       game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true  
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (clonec.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90),0,0)) * CFrame.new(0,-0,-1)
           game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
 game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
 
end)




local segments = Instance.new("Folder")
local part = Instance.new("Part")
local part_2 = Instance.new("Part")

segments.Name = "segments"
segments.Parent = workspace
part.Anchored = true
part.CanCollide = false
part.Transparency = 1
part.Size = Vector3.new(1, 1, 2)
part.BottomSurface = Enum.SurfaceType.Smooth
part.BrickColor = BrickColor.new("Alder")
part.TopSurface = Enum.SurfaceType.Smooth
part.Color = Color3.new(0.666667, 0.333333, 1)
part.Parent = segments
part.Name = "seg1"
part.CFrame = CFrame.new(-4.1, 2.1, -37.5)
part_2.Anchored = true
part_2.CanCollide = false
part_2.Size = Vector3.new(1, 1, 2)
part_2.BottomSurface = Enum.SurfaceType.Smooth
part_2.BrickColor = BrickColor.new("Cool yellow")
part_2.TopSurface = Enum.SurfaceType.Smooth
part_2.Color = Color3.new(0.992157, 0.917647, 0.552941)
part_2.Parent = segments
part_2.CFrame = CFrame.new(-4.1, 2.1, -37.5)
part_2.Name = "seg2"
part_2.Transparency = 1

local segments2 = Instance.new("Folder")
local part = Instance.new("Part")
local part_2 = Instance.new("Part")

segments2.Name = "segments2"
segments2.Parent = workspace
part.Anchored = true
part.CanCollide = false
part.Size = Vector3.new(1, 1, 2)
part.BottomSurface = Enum.SurfaceType.Smooth
part.BrickColor = BrickColor.new("Alder")
part.TopSurface = Enum.SurfaceType.Smooth
part.Name = "seg1"
part.Color = Color3.new(0.666667, 0.333333, 1)
part.Parent = segments2
part.CFrame = CFrame.new(-4.1, 2.1, -37.5)
part_2.Anchored = true
part_2.CanCollide = false
part_2.Size = Vector3.new(1, 1, 2)
part_2.BottomSurface = Enum.SurfaceType.Smooth
part_2.BrickColor = BrickColor.new("Alder")
part_2.TopSurface = Enum.SurfaceType.Smooth
part_2.Color = Color3.new(0.666667, 0.333333, 1)
part_2.Parent = segments2
part_2.CFrame = CFrame.new(-4.1, 2.1, -37.5)
part_2.Name = "seg2"
part_2.Transparency = 1
part.Transparency = 1



local leg1 = Instance.new("Part")
leg1.Anchored = true
leg1.Size = Vector3.new(0.5, 0.2, 0.5)
leg1.BottomSurface = Enum.SurfaceType.Smooth
leg1.Color = Color3.new(0, 1, 0)
leg1.BrickColor = BrickColor.new("New Yeller")
leg1.TopSurface = Enum.SurfaceType.Smooth
leg1.Name = "leg1"
leg1.Parent = workspace
leg1.CFrame = CFrame.new(-31.15, 0.1, 8.65)
leg1.CanCollide = false
leg1.Transparency = 1





local leg1 =workspace.leg1:Clone()
leg1.Parent = workspace

local leg2= workspace.leg1:Clone()
leg2.Parent = workspace

local lp = game.Players.LocalPlayer
local head = game.Players.LocalPlayer.Character.Head

function coffset(x,y,z)
 return (head.CFrame * CFrame.new(x,y,z)).Position
end




mouse.KeyDown:connect(function(k)
 
 if k == "z" then
  
  leg1.Position = mouse.Hit.Position
 elseif k == "x" then
  
  
  leg2.Position = mouse.Hit.Position
 end
 
end)

 

  
spawn(function()
--
while true do
 
 
if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude >0.1 then
  wait(1.6/lp.Character.Humanoid.WalkSpeed)
  
 local ray1 =Ray.new(coffset(3,-0,0),Vector3.new(0,-10,0) )
 local hit,pos = workspace:FindPartOnRayWithIgnoreList(ray1,{leg1,leg2,lp.Character})
 if pos then
  leg1.Position = pos
  end
  

 
  wait(1.6/lp.Character.Humanoid.WalkSpeed)
 local ray2 =Ray.new(coffset(-3,-0,0),Vector3.new(0,-10,0) )
 local hit,pos = workspace:FindPartOnRayWithIgnoreList(ray2,{leg1,leg2,lp.Character})
 if pos then
 leg2.Position = pos 
  end
 
 end
 game:GetService("RunService").RenderStepped:wait()
end

end)


  

spawn(function()

local mouse = game.Players.LocalPlayer:GetMouse()



local len  = 2

local offset = Vector3.new(1,-3,0)
 
 local offset = Vector3.new(1,-1,0)
 
local segs = {}

local posn =  game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,-2.5,0)






for i,v in pairs(workspace.segments:GetChildren()) do
 
 
 
 table.insert(segs,v)
 
 
end






function vectorabsy(vec)
 local v = Vector3.new(vec.X,math.abs(vec.Y),vec.Z)
 return v
end


local count = #segs


while true do
 
 for i = 1,5 do
  
 for i = 1,count do
  
  if i == 1 then
   
   local seg = segs[i]
   
   local pos1 =  segs[i].Position - (segs[i].CFrame.LookVector* (len/2) )  -- Calculating position that is on back of the part
   local pos2 =leg1.Position
   local vec = (pos2 - pos1).Unit 
   
   local cframe = CFrame.new(pos2 - (vec*(len/2) ),pos2) 
   
   seg.CFrame = cframe
   
  else
    local seg = segs[i]
   local pos1 =  segs[i].Position - (segs[i].CFrame.LookVector* (len/2) )
   local pos2 =  segs[i-1].Position - (segs[i-1].CFrame.LookVector* (len/2) )
   local vec = (pos2 - pos1).Unit
    local cframe = CFrame.new(pos2 - (vec*(len/2) ),pos2) 
   
   seg.CFrame = cframe
  end

 end 
 
 --Back

 
  for i = 1,count do
  
  local i = ( count - i ) + 1
  if i == count then
   
   local seg = segs[i]
   
   local pos1 =  segs[i].Position + (segs[i].CFrame.LookVector* (len/2) )  -- Calculating position that is on back of the part
   local pos2 =(game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(offset)).Position  
   local vec =(pos2 - pos1).Unit 
   if vec.Y > 0 then
    
   vec = Vector3.new(vec.X, vec.Y-0.01 ,vec.Z) 
    
   end
   
   local cframe = CFrame.new(pos2 - (vec*(len/2) ),pos2) * CFrame.Angles(0,math.rad(-180),0) 
   
   seg.CFrame =cframe
   
  else
    local seg = segs[i]
   local pos1 =  segs[i].Position + (segs[i].CFrame.LookVector* (len/2) )
   
   local pos2 =  segs[i+1].Position + (segs[i+1].CFrame.LookVector* (len/2) )
   local vec = (pos2 - pos1).Unit 
   
    local cframe = CFrame.new(pos2 - (vec*(len/2) ),pos2)  * CFrame.Angles(0,math.rad(-180),0)
   
   seg.CFrame = cframe
  end

  end 
  
 end
 game:GetService("RunService").Heartbeat:wait()
end
 
end)




spawn(function()

local mouse = game.Players.LocalPlayer:GetMouse()



local len  = 2

local offset = Vector3.new(-1,-1,0)

local segs = {}

local posn =  game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,-2.5,0)






for i,v in pairs(workspace.segments2:GetChildren()) do
 
 

 table.insert(segs,v)
 
 
end





function vectorabsy(vec)
 local v = Vector3.new(vec.X,math.abs(vec.Y),vec.Z)
 return v
end


local count = #segs


while true do

 for i = 1,5 do
  
 for i = 1,count do
  
  if i == 1 then
   
   local seg = segs[i]
   
   local pos1 =  segs[i].Position - (segs[i].CFrame.LookVector* (len/2) )  -- Calculating position that is on back of the part
   local pos2 =leg2.Position
   local vec = (pos2 - pos1).Unit 
  
   local cframe = CFrame.new(pos2 - (vec*(len/2) ),pos2) 
   
   seg.CFrame = cframe
   
  else
    local seg = segs[i]
   local pos1 =  segs[i].Position - (segs[i].CFrame.LookVector* (len/2) )
   local pos2 =  segs[i-1].Position - (segs[i-1].CFrame.LookVector* (len/2) )
   local vec = (pos2 - pos1).Unit
    local cframe = CFrame.new(pos2 - (vec*(len/2) ),pos2) 
   
   seg.CFrame = cframe
  end

 end 
 
 --Back

 
  for i = 1,count do
  
  local i = ( count - i ) + 1
  if i == count then
   
   local seg = segs[i]
   
   local pos1 =  segs[i].Position + (segs[i].CFrame.LookVector* (len/2) )  -- Calculating position that is on back of the part
   local pos2 =(game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(offset)).Position  
   local vec =(pos2 - pos1).Unit 
   if vec.Y > 0 then
    
   vec = Vector3.new(vec.X, vec.Y-0.01 ,vec.Z) 
    
   end
   
   local cframe = CFrame.new(pos2 - (vec*(len/2) ),pos2) * CFrame.Angles(0,math.rad(-180),0) 
   
   seg.CFrame =cframe
   
  else
    local seg = segs[i]
   local pos1 =  segs[i].Position + (segs[i].CFrame.LookVector* (len/2) )
   
   local pos2 =  segs[i+1].Position + (segs[i+1].CFrame.LookVector* (len/2) )
   local vec = (pos2 - pos1).Unit 
   
    local cframe = CFrame.new(pos2 - (vec*(len/2) ),pos2)  * CFrame.Angles(0,math.rad(-180),0)
   
   seg.CFrame = cframe
  end

  end 
  
 end
 game:GetService("RunService").Heartbeat:wait()
end
 
end)


game.Players.LocalPlayer.Character.Torso["Right Shoulder"]:Destroy()
game.Players.LocalPlayer.Character.Torso["Left Shoulder"]:Destroy()
game.Players.LocalPlayer.Character.Torso["Right Hip"]:Destroy()
game.Players.LocalPlayer.Character.Torso["Left Hip"]:Destroy()


 
local bodyvelocity = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character["Right Arm"])
bodyvelocity.MaxForce = Vector3.new(9.9999999805064e+18, 9.999999869911e+14, 9.999999869911e+14)
bodyvelocity.Velocity = Vector3.new(0, 200, 0)

local bodyvelocity = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character["Left Arm"])
bodyvelocity.MaxForce = Vector3.new(9.9999999805064e+18, 9.999999869911e+14, 9.999999869911e+14)
bodyvelocity.Velocity = Vector3.new(0, 200, 0)

local bodyvelocity = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character["Left Leg"])
bodyvelocity.MaxForce = Vector3.new(9.9999999805064e+18, 9.999999869911e+14, 9.999999869911e+14)
bodyvelocity.Velocity = Vector3.new(0, 200, 0)

local bodyvelocity = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character["Right Leg"])
bodyvelocity.MaxForce = Vector3.new(9.9999999805064e+18, 9.999999869911e+14, 9.999999869911e+14)
bodyvelocity.Velocity = Vector3.new(0, 200, 0)

spawn(function()
 

 game.Players.LocalPlayer.Character.Humanoid.Died:connect(function()
  
  segments:Destroy()
  segments2:Destroy()
  
 end)
 
 game:GetService("RunService").Stepped:connect(function()
    game.Players.LocalPlayer.Character["Right Arm"].CanCollide = false
 game.Players.LocalPlayer.Character["Left Arm"].CanCollide = false
  
  game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
 game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false

    end)
 
 repeat game:GetService("RunService").Heartbeat:wait()
  
 game.Players.LocalPlayer.Character["Right Arm"].CFrame =  segments.seg1 .CFrame * CFrame.Angles(math.rad(90),0,0 )
 game.Players.LocalPlayer.Character["Left Arm"].CFrame =  segments.seg2.CFrame * CFrame.Angles(math.rad(90),0,0 )
  
  game.Players.LocalPlayer.Character["Right Leg"].CFrame =  segments2.seg1.CFrame * CFrame.Angles(math.rad(90),0,0 )
 game.Players.LocalPlayer.Character["Left Leg"].CFrame =  segments2.seg2.CFrame * CFrame.Angles(math.rad(90),0,0 )
 
 until game.Players.LocalPlayer.Character.Humanoid.Health  < 1

  
  
  
 
 
end)

--thisisascript