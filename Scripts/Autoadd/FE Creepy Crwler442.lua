--The following section was auto-generated because this script isn't verified. If you have full trust in this script, you may pay no attention to it and remove it. Otherwise, it's best to to keep it in for additional protection
if not game:IsLoaded() then game.Loaded:Wait() end
if identifyexecutor()~="Codex" then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))()
else
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))()
end
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
-- END OF AUTO-GENERATED CONTENTS. THE SCRIPT BEGINS HERE:
--[[
    Fe Creepy Crawler
    by MyWorld#4430
    discord.gg/pYVHtSJmEY
]]

if "MyWorld reanimate cool" then
    --reanimate by MyWorld#4430 discord.gg/pYVHtSJmEY
    local netboost = Vector3.new(0, 45, 0) --velocity 
    --netboost usage: 
    --set to false to disable
    --set to a vector3 value if you dont want the velocity to change
    --set to a number to change the velocity in real time with magnitude equal to the number
    local idleMag = 0.01 --used only in case netboost is set to a number value
    --if magnitude of the real velocity of a part is lower than this
    --then the fake velocity is being set to Vector3.new(0, netboost, 0)
    local noRotVel = true --parts rotation velocity set to Vector3.new(0, 0, 0)
    local simradius = "shp" --simulation radius (net bypass) method
    --"shp" - sethiddenproperty
    --"ssr" - setsimulationradius
    --false - disable
    local antiragdoll = true --removes hingeConstraints and ballSocketConstraints from your character
    local newanimate = true --disables the animate script and enables after reanimation
    local discharscripts = true --disables all localScripts parented to your character before reanimation
    local R15toR6 = true --tries to convert your character to r6 if its r15
    local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
    local hedafterneck = true --disable aligns for head and enable after neck is removed
    local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
    local method = 3 --reanimation method
    --methods:
    --0 - breakJoints (takes [loadtime] seconds to laod)
    --1 - limbs
    --2 - limbs + anti respawn
    --3 - limbs + breakJoints after [loadtime] seconds
    --4 - remove humanoid + breakJoints
    --5 - remove humanoid + limbs
    local alignmode = 2 --AlignPosition mode
    --modes:
    --1 - AlignPosition rigidity enabled true
    --2 - 2 AlignPositions rigidity enabled both true and false
    --3 - AlignPosition rigidity enabled false
    
    local lp = game:GetService("Players").LocalPlayer
    local rs = game:GetService("RunService")
    local stepped = rs.Stepped
    local heartbeat = rs.Heartbeat
    local renderstepped = rs.RenderStepped
    local sg = game:GetService("StarterGui")
    local ws = game:GetService("Workspace")
    local cf = CFrame.new
    local v3 = Vector3.new
    local v3_0 = v3(0, 0, 0)
    local inf = math.huge
    
    local c = lp.Character
    
    if not (c and c.Parent) then
     return
    end
    
    c.Destroying:Connect(function()
     c = nil
    end)
    
    local function gp(parent, name, className)
     if typeof(parent) == "Instance" then
      for i, v in pairs(parent:GetChildren()) do
       if (v.Name == name) and v:IsA(className) then
        return v
       end
      end
     end
     return nil
    end
    
    local function align(Part0, Part1)
     Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)
    
     local att0 = Instance.new("Attachment", Part0)
     att0.Orientation = v3_0
     att0.Position = v3_0
     att0.Name = "att0_" .. Part0.Name
     local att1 = Instance.new("Attachment", Part1)
     att1.Orientation = v3_0
     att1.Position = v3_0
     att1.Name = "att1_" .. Part1.Name
    
     if (alignmode == 1) or (alignmode == 2) then
      local ape = Instance.new("AlignPosition", att0)
      ape.ApplyAtCenterOfMass = false
      ape.MaxForce = inf
      ape.MaxVelocity = inf
      ape.ReactionForceEnabled = false
      ape.Responsiveness = 200
      ape.Attachment1 = att1
      ape.Attachment0 = att0
      ape.Name = "AlignPositionRtrue"
      ape.RigidityEnabled = true
     end
    
     if (alignmode == 2) or (alignmode == 3) then
      local apd = Instance.new("AlignPosition", att0)
      apd.ApplyAtCenterOfMass = false
      apd.MaxForce = inf
      apd.MaxVelocity = inf
      apd.ReactionForceEnabled = false
      apd.Responsiveness = 200
      apd.Attachment1 = att1
      apd.Attachment0 = att0
      apd.Name = "AlignPositionRfalse"
      apd.RigidityEnabled = false
     end
    
     local ao = Instance.new("AlignOrientation", att0)
     ao.MaxAngularVelocity = inf
     ao.MaxTorque = inf
     ao.PrimaryAxisOnly = false
     ao.ReactionTorqueEnabled = false
     ao.Responsiveness = 200
     ao.Attachment1 = att1
     ao.Attachment0 = att0
     ao.RigidityEnabled = false
    
     if netboost then
            local steppedcon = nil
            local heartbeatcon = nil
            Part0.Destroying:Connect(function()
                Part0 = nil
                steppedcon:Disconnect()
                heartbeatcon:Disconnect()
            end)
            local vel = v3_0
            local rotvel = noRotVel and v3_0
            if typeof(netboost) == "Vector3" then
                steppedcon = stepped:Connect(function()
                    Part0.Velocity = vel
                    if rotvel then
                        Part0.RotVelocity = rotvel
                    end
                end)
                heartbeatcon = heartbeat:Connect(function()
                    vel = Part0.Velocity
                    Part0.Velocity = netboost
                    if rotvel then
                        rotvel = Part0.RotVelocity
                        Part0.RotVelocity = v3_0
                    end
                end)
            elseif typeof(netboost) == "number" then
             steppedcon = stepped:Connect(function()
                    Part0.Velocity = vel
                    if rotvel then
                        Part0.RotVelocity = rotvel
                    end
                end)
                heartbeatcon = heartbeat:Connect(function()
                    vel = Part0.Velocity
                    local newvel = vel
                    local mag = newvel.Magnitude
                    if mag < idleMag xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed bv.Name = "bv_" xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed xss=removed> 0) then
      model:BreakJoints()
      hum0.Health = 0
     end
     if antirespawn then
         respawnrequest()
     end
    end)
    sg:SetCore("ResetButtonCallback", rb)
    
    spawn(function()
     while c do
      if hum0 and hum1 then
       hum1.Jump = hum0.Jump
      end
      wait()
     end
     sg:SetCore("ResetButtonCallback", true)
    end)
    
    R15toR6 = R15toR6 and hum1 and (hum1.RigType == Enum.HumanoidRigType.R15)
    if R15toR6 then
        local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "LowerTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
     if part then
         local cfr = part.CFrame
      local R6parts = { 
       head = {
        Name = "Head",
        Size = v3(2, 1, 1),
        R15 = {
         Head = 0
        }
       },
       torso = {
        Name = "Torso",
        Size = v3(2, 2, 1),
        R15 = {
         UpperTorso = 0.2,
         LowerTorso = -0.8
        }
       },
       root = {
        Name = "HumanoidRootPart",
        Size = v3(2, 2, 1),
        R15 = {
         HumanoidRootPart = 0
        }
       },
       leftArm = {
        Name = "Left Arm",
        Size = v3(1, 2, 1),
        R15 = {
         LeftHand = -0.85,
         LeftLowerArm = -0.2,
         LeftUpperArm = 0.4
        }
       },
       rightArm = {
        Name = "Right Arm",
        Size = v3(1, 2, 1),
        R15 = {
         RightHand = -0.85,
         RightLowerArm = -0.2,
         RightUpperArm = 0.4
        }
       },
       leftLeg = {
        Name = "Left Leg",
        Size = v3(1, 2, 1),
        R15 = {
         LeftFoot = -0.85,
         LeftLowerLeg = -0.15,
         LeftUpperLeg = 0.6
        }
       },
       rightLeg = {
        Name = "Right Leg",
        Size = v3(1, 2, 1),
        R15 = {
         RightFoot = -0.85,
         RightLowerLeg = -0.15,
         RightUpperLeg = 0.6
        }
       }
      }
      for i, v in pairs(c:GetChildren()) do
       if v:IsA("BasePart") then
        for i1, v1 in pairs(v:GetChildren()) do
         if v1:IsA("Motor6D") then
          v1.Part0 = nil
         end
        end
       end
      end
      part.Archivable = true
      for i, v in pairs(R6parts) do
       local part = part:Clone()
       part:ClearAllChildren()
       part.Name = v.Name
       part.Size = v.Size
       part.CFrame = cfr
       part.Anchored = false
       part.Transparency = 1
       part.CanCollide = false
       for i1, v1 in pairs(v.R15) do
        local R15part = gp(c, i1, "BasePart")
        local att = gp(R15part, "att1_" .. i1, "Attachment")
        if R15part then
         local weld = Instance.new("Weld", R15part)
         weld.Name = "Weld_" .. i1
         weld.Part0 = part
         weld.Part1 = R15part
         weld.C0 = cf(0, v1, 0)
         weld.C1 = cf(0, 0, 0)
         R15part.Massless = true
         R15part.Name = "R15_" .. i1
         R15part.Parent = part
         if att then
          att.Parent = part
          att.Position = v3(0, v1, 0)
         end
        end
       end
       part.Parent = c
       R6parts[i] = part
      end
      local R6joints = {
       neck = {
        Parent = R6parts.torso,
        Name = "Neck",
        Part0 = R6parts.torso,
        Part1 = R6parts.head,
        C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
        C1 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
       },
       rootJoint = {
        Parent = R6parts.root,
        Name = "RootJoint" ,
        Part0 = R6parts.root,
        Part1 = R6parts.torso,
        C0 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
        C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
       },
       rightShoulder = {
        Parent = R6parts.torso,
        Name = "Right Shoulder",
        Part0 = R6parts.torso,
        Part1 = R6parts.rightArm,
        C0 = cf(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
        C1 = cf(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
       },
       leftShoulder = {
        Parent = R6parts.torso,
        Name = "Left Shoulder",
        Part0 = R6parts.torso,
        Part1 = R6parts.leftArm,
        C0 = cf(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
        C1 = cf(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
       },
       rightHip = {
        Parent = R6parts.torso,
        Name = "Right Hip",
        Part0 = R6parts.torso,
        Part1 = R6parts.rightLeg,
        C0 = cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
        C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
       },
       leftHip = {
        Parent = R6parts.torso,
        Name = "Left Hip" ,
        Part0 = R6parts.torso,
        Part1 = R6parts.leftLeg,
        C0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
        C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
       }
      }
      for i, v in pairs(R6joints) do
       local joint = Instance.new("Motor6D")
       for prop, val in pairs(v) do
        joint[prop] = val
       end
       R6joints[i] = joint
      end
      hum1.RigType = Enum.HumanoidRigType.R6
      hum1.HipHeight = 0
     end
    end
end

local lp = game:GetService("Players").LocalPlayer

local c = lp.Character
if not (c and c.Parent) then
 return print("character not found")
end
c:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (c and c.Parent) then
        c = nil
    end
end)

--getPart function

local function gp(parent, name, className)
 local ret = nil
 pcall(function()
  for i, v in pairs(parent:GetChildren()) do
   if (v.Name == name) and v:IsA(className) then
    ret = v
    break
   end
  end
 end)
 return ret
end

--check if reanimate loaded

local model = gp(c, "Model", "Model")
if not model then return print("model not found") end

--find body parts

local head = gp(c, "Head", "BasePart")
if not head then return print("head not found") end

local torso = gp(c, "Torso", "BasePart")
if not torso then return print("torso not found") end

local humanoidRootPart = gp(c, "HumanoidRootPart", "BasePart")
if not humanoidRootPart then return print("humanoid root part not found") end

local leftArm = gp(c, "Left Arm", "BasePart")
if not leftArm then return print("left arm not found") end

local rightArm = gp(c, "Right Arm", "BasePart")
if not rightArm then return print("right arm not found") end

local leftLeg = gp(c, "Left Leg", "BasePart")
if not leftLeg then return print("left leg not found") end

local rightLeg = gp(c, "Right Leg", "BasePart")
if not rightLeg then return print("right leg not found") end

--find rig joints

local neck = gp(torso, "Neck", "Motor6D")
if not neck then return print("neck not found") end

local rootJoint = gp(humanoidRootPart, "RootJoint", "Motor6D")
if not rootJoint then return print("root joint not found") end

local leftShoulder = gp(torso, "Left Shoulder", "Motor6D")
if not leftShoulder then return print("left shoulder not found") end

local rightShoulder = gp(torso, "Right Shoulder", "Motor6D")
if not rightShoulder then return print("right shoulder not found") end

local leftHip = gp(torso, "Left Hip", "Motor6D")
if not leftHip then return print("left hip not found") end

local rightHip = gp(torso, "Right Hip", "Motor6D")
if not rightHip then return print("right hip not found") end

--humanoid

local hum = c:FindFirstChildOfClass("Humanoid")
if not hum then return print("humanoid not found") end

local animate = gp(c, "Animate", "LocalScript")
if animate then
 animate.Disabled = true
end

for i, v in pairs(hum:GetPlayingAnimationTracks()) do
 v:Stop()
end

--60 fps

local fps = 60
local event = Instance.new("BindableEvent", c)
event.Name = "60 fps"
local floor = math.floor
fps = 1 / fps
local tf = 0
local con = nil
con = game:GetService("RunService").RenderStepped:Connect(function(s)
 if not c then
  con:Disconnect()
  return
 end
 tf += s
 if tf >= fps then
  for i=1, floor(tf / fps) do
   event:Fire(c)
  end
  tf = 0
 end
end)
local event = event.Event

local function stopIfRemoved(instance)
    if not (instance and instance.Parent) then
        c = nil
        return
    end
    instance:GetPropertyChangedSignal("Parent"):Connect(function()
        if not (instance and instance.Parent) then
            c = nil
        end
    end)
end
stopIfRemoved(c)
stopIfRemoved(hum)
for i, v in pairs({head, torso, leftArm, rightArm, leftLeg, rightLeg, humanoidRootPart}) do
    stopIfRemoved(v)
end
for i, v in pairs({neck, rootJoint, leftShoulder, rightShoulder, leftHip, rightHip}) do
    stopIfRemoved(v)
end
if not c then
    return
end
hum.WalkSpeed = 10
local cf, v3, euler, sin, sine, abs = CFrame.new, Vector3.new, CFrame.fromEulerAnglesXYZ, math.sin, 0, math.abs
while event:Wait() do
    sine += 1
    local vel = humanoidRootPart.Velocity
    if (vel*v3(1, 0, 1)).Magnitude > 2 then -- walk
  neck.C0 = neck.C0:Lerp(cf(0, 0, 0.5) * euler(0.17453292519943295, 0.03490658503988659 * sin((sine + 2.5) * 0.2), 3.141592653589793 + -0.17453292519943295 * sin((sine + -10) * 0.2)), 0.2) 
  rootJoint.C0 = rootJoint.C0:Lerp(cf(0, -1.5, 0) * euler(3.0543261909900767, 0.08726646259971647 * sin((sine + 7.5) * 0.2), -3.1590459461097367 + -0.08726646259971647 * sin(sine * 0.2)), 0.2) 
  leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1, 1.5 + 0.5 * sin((sine + 10) * 0.2), 0.3 + 0.2 * sin((sine + -10) * 0.2)) * euler(1.6580627893946132 + 0.17453292519943295 * sin((sine + 15) * 0.2), 0, -0.08726646259971647 * sin(sine * 0.2)), 0.2) 
  rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1, 1.5 + 0.5 * sin((sine + -7.5) * 0.2), 0.3 + 0.2 * sin((sine + 5) * 0.2)) * euler(1.6580627893946132 + 0.17453292519943295 * sin(sine * 0.2), 0, -0.08726646259971647 * sin(sine * 0.2)), 0.2) 
  leftHip.C0 = leftHip.C0:Lerp(cf(-1, -1.5 + 0.5 * sin((sine + -7.5) * 0.2), 0.5 + 0.2 * sin((sine + 5) * 0.2)) * euler(1.6580627893946132 + 0.17453292519943295 * sin(sine * 0.2), 0, -0.08726646259971647 * sin(sine * 0.2)), 0.2) 
  rightHip.C0 = rightHip.C0:Lerp(cf(1, -1.5 + 0.5 * sin((sine + 10) * 0.2), 0.5 + 0.2 * sin((sine + -7.5) * 0.2)) * euler(1.6580627893946132 + -0.17453292519943295 * sin(sine * 0.2), 0, -0.08726646259971647 * sin(sine * 0.2)), 0.2) 
    elseif abs(vel.Y) > 2 then -- fall
  neck.C0 = neck.C0:Lerp(cf(0, 0, 0.5) * euler(0, 0, 3.141592653589793), 0.2) 
  rootJoint.C0 = rootJoint.C0:Lerp(cf(0, -1.4, 0) * euler(3.141592653589793, 0, -3.141592653589793), 0.2) 
  leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1, 1.5, 0.3) * euler(1.7453292519943295, 0, -0.17453292519943295), 0.2) 
  rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1, 1.5, 0.3) * euler(1.7453292519943295, 0, 0.17453292519943295), 0.2) 
  leftHip.C0 = leftHip.C0:Lerp(cf(-1, -1.5, 0.8) * euler(1.3962634015954636, 0, -0.17453292519943295), 0.2) 
  rightHip.C0 = rightHip.C0:Lerp(cf(1, -1.5, 0.8) * euler(1.3962634015954636, 0, 0.17453292519943295), 0.2) 
    else -- idle
  neck.C0 = neck.C0:Lerp(cf(0, 0, 0.5) * euler(0.08726646259971647 * sin((sine + 20) * 0.05), 0, 3.141592653589793 + 0.3490658503988659 * sin((sine + -30) * 0.025)), 0.2) 
  rootJoint.C0 = rootJoint.C0:Lerp(cf(0, -1.5 + 0.1 * sin(sine * 0.05), 0) * euler(3.141592653589793, 0, -3.1590459461097367 + 0.05235987755982989 * sin(sine * 0.025)), 0.2) 
  leftShoulder.C0 = leftShoulder.C0:Lerp(cf(-1, 1.5, -0.1 * sin(sine * 0.05)) * euler(1.5707963267948966, 0, 0.08726646259971647 * sin(sine * 0.025)), 0.2) 
  rightShoulder.C0 = rightShoulder.C0:Lerp(cf(1, 1.5, -0.1 * sin(sine * 0.05)) * euler(1.5707963267948966, 0, 0.08726646259971647 * sin(sine * 0.025)), 0.2) 
  leftHip.C0 = leftHip.C0:Lerp(cf(-1, -1.5, 0.5 + -0.1 * sin((sine + 10) * 0.05)) * euler(1.5707963267948966, 0, 0.08726646259971647 * sin(sine * 0.025)), 0.2) 
  rightHip.C0 = rightHip.C0:Lerp(cf(1, -1.5, 0.5 + -0.1 * sin((sine + 10) * 0.05)) * euler(1.5707963267948966, 0, 0.08726646259971647 * sin(sine * 0.025)), 0.2) 
    end
end