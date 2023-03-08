-- {<CONVERTED BY CREO>} -- FE Soldier AI
-- Join my discord server for early scripts :)
-- https://discord.gg/SWt5Uzpd

--[[ {<HATS NEEDED>} 
https://web.roblox.com/catalog/6133544919/Retro-SWAT-Helmet

https://web.roblox.com/catalog/7806887000/CR-L-4-Back

https://www.roblox.com/catalog/48474313/Red-Roblox-Cap

https://www.roblox.com/catalog/4391384843/International-Fedora-Russia

https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair

https://www.roblox.com/catalog/62724852/Chestnut-Bun

https://www.roblox.com/catalog/451220849/Lavender-Updo

https://www.roblox.com/catalog/63690008/Pal-Hair

https://www.roblox.com/catalog/62234425/Brown-Hair
                   ]]







FakeLimbs = {["Head"] = nil,["Torso1"] = nil,["Torso2"] = nil,["Right Arm"] = nil,["Left Arm"] = nil,["Right Leg"] = nil,["Left Leg"] = nil}
Accessorys = {}

local ModelsRequire = game:GetObjects("rbxassetid://8005457125")
local MFolder = ModelsRequire[1]


local HumanRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
function StickAcc(Part0,Part1,Angle,Position)
 Part0:FindFirstChildWhichIsA("Weld"):Destroy()
 local AlignPos = Instance.new('AlignPosition', Part1)
 AlignPos.ApplyAtCenterOfMass = true;
 AlignPos.MaxForce = 67752;
 AlignPos.MaxVelocity = math.huge/9e110;
 AlignPos.ReactionForceEnabled = false;
 AlignPos.Responsiveness = 200;
 AlignPos.RigidityEnabled = false;
 local AlignOri = Instance.new('AlignOrientation', Part1)
 AlignOri.MaxAngularVelocity = math.huge/9e110;
 AlignOri.MaxTorque = 67752;
 AlignOri.PrimaryAxisOnly = false;
 AlignOri.ReactionTorqueEnabled = false;
 AlignOri.Responsiveness = 200;
 AlignOri.RigidityEnabled = false;
 local AttachmentA=Instance.new('Attachment',Part1)
 local AttachmentB=Instance.new('Attachment',Part0)
 local AttachmentC=Instance.new('Attachment',Part1)
 local AttachmentD=Instance.new('Attachment',Part0)
 AlignPos.Attachment1 = AttachmentA;
 AlignPos.Attachment0 = AttachmentB;
 AlignOri.Attachment1 = AttachmentC;
 AlignOri.Attachment0 = AttachmentD;
 AttachmentC.Orientation = Angle
 Part0.Parent = FakeCharacter
 if Position then
  AttachmentA.Position = Position
 end
 game:GetService("RunService").Heartbeat:connect(function()
  Part0.Velocity = Vector3.new(0,35,0)
 end)
end

function StickParts(Part0,Part1,Angle,Position)
 Part0:FindFirstChildWhichIsA("Weld"):Destroy()
 Part0:FindFirstChildWhichIsA("SpecialMesh"):Destroy()
 local AlignPos = Instance.new('AlignPosition', Part1)
 AlignPos.ApplyAtCenterOfMass = true;
 AlignPos.MaxForce = 67752;
 AlignPos.MaxVelocity = math.huge/9e110;
 AlignPos.ReactionForceEnabled = false;
 AlignPos.Responsiveness = 200;
 AlignPos.RigidityEnabled = false;
 local AlignOri = Instance.new('AlignOrientation', Part1)
 AlignOri.MaxAngularVelocity = math.huge/9e110;
 AlignOri.MaxTorque = 67752;
 AlignOri.PrimaryAxisOnly = false;
 AlignOri.ReactionTorqueEnabled = false;
 AlignOri.Responsiveness = 200;
 AlignOri.RigidityEnabled = false;
 local AttachmentA=Instance.new('Attachment',Part1)
 local AttachmentB=Instance.new('Attachment',Part0)
 local AttachmentC=Instance.new('Attachment',Part1)
 local AttachmentD=Instance.new('Attachment',Part0)
 AlignPos.Attachment1 = AttachmentA;
 AlignPos.Attachment0 = AttachmentB;
 AlignOri.Attachment1 = AttachmentC;
 AlignOri.Attachment0 = AttachmentD;
 AttachmentC.Orientation = Angle
 AttachmentC.Name = "Orientation"
 Part0.Parent = FakeCharacter
 if Position then
  AttachmentA.Position = Position
 end
 s = game:GetService("RunService").Heartbeat:connect(function()
  Part0.Velocity = Vector3.new(0,50,0)
 end)
 spawn(function()
  while true do
   wait()
   if HumanDied then
    s:Disconnect()
    break
   end
  end
 end)
end


for i, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
 if part:IsA("Accessory") then
  if part.Handle.Size == Vector3.new(1, 1, 2) then
   if FakeLimbs["Right Arm"] == nil then
    FakeLimbs["Right Arm"] = part.Handle
   elseif FakeLimbs["Left Arm"] == nil then
    FakeLimbs["Left Arm"] = part.Handle

   elseif FakeLimbs["Right Leg"] == nil then
    FakeLimbs["Right Leg"] = part.Handle
   elseif FakeLimbs["Left Leg"] == nil then
    FakeLimbs["Left Leg"] = part.Handle
   elseif FakeLimbs["Torso1"] == nil then
    FakeLimbs["Torso1"] = part.Handle
   elseif FakeLimbs["Torso2"] == nil then
    FakeLimbs["Torso2"] = part.Handle
   end
  elseif part.Handle.Size == Vector3.new(1,1,1) then
   FakeLimbs["Head"] = part.Handle
  end
 end
end
game.Players.LocalPlayer.Character.Archivable = true














-- Kill Player
FakeCharacter = MFolder
FakeCharacter.Parent = workspace

local m4 = FakeCharacter.M4












do



 Bypass = "death"
 if not Bypass then Bypass = "limbs" end
 HumanDied = false

 CountSCIFIMOVIELOL = 1
 function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
  local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
  AlignPos.ApplyAtCenterOfMass = true;
  AlignPos.MaxForce = 67752;
  AlignPos.MaxVelocity = math.huge/9e110;
  AlignPos.ReactionForceEnabled = false;
  AlignPos.Responsiveness = 200;
  AlignPos.RigidityEnabled = false;
  local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
  AlignOri.MaxAngularVelocity = math.huge/9e110;
  AlignOri.MaxTorque = 67752;
  AlignOri.PrimaryAxisOnly = false;
  AlignOri.ReactionTorqueEnabled = false;
  AlignOri.Responsiveness = 200;
  AlignOri.RigidityEnabled = false;
  local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "AthP_"..CountSCIFIMOVIELOL
  local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "AthP_"..CountSCIFIMOVIELOL
  local AttachmentC=Instance.new('Attachment',Part1); AttachmentC.Name = "AthO_"..CountSCIFIMOVIELOL
  local AttachmentD=Instance.new('Attachment',Part0); AttachmentD.Name = "AthO_"..CountSCIFIMOVIELOL
  AttachmentC.Orientation = Angle
  AttachmentA.Position = Position
  
  AttachmentC.Name = "Orientation"
  
  AlignPos.Attachment1 = AttachmentA;
  AlignPos.Attachment0 = AttachmentB;
  AlignOri.Attachment1 = AttachmentC;
  AlignOri.Attachment0 = AttachmentD;
  CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
  game:GetService("RunService").Heartbeat:connect(function()
   Part0.Velocity = Vector3.new(0,35,0)
  end)
 end

 coroutine.wrap(function()
  local player = game.Players.LocalPlayer
  local char = player.Character or player.CharacterAdded:wait()
  if sethiddenproperty then
   while true do
    game:GetService("RunService").RenderStepped:Wait()
    settings().Physics.AllowSleep = false
    local TBL = game:GetService("Players"):GetChildren() 
    for _ = 1,#TBL do local Players = TBL[_]
     if Players ~= game:GetService("Players").LocalPlayer then
      Players.MaximumSimulationRadius = 0
      sethiddenproperty(Players,"SimulationRadius",0) 
     end 
    end
    game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.pow(math.huge,math.huge)*math.huge)
    if HumanDied then break end
   end
  else
   while true do
    game:GetService("RunService").RenderStepped:Wait()
    settings().Physics.AllowSleep = false
    local TBL = game:GetService("Players"):GetChildren() 
    for _ = 1,#TBL do local Players = TBL[_]
     if Players ~= game:GetService("Players").LocalPlayer then
      Players.MaximumSimulationRadius = 0
     end 
    end
    game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
    if HumanDied then break end
   end
  end
 end)()

 if game:GetService("Players").LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
  if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
   game:GetService("Players").LocalPlayer["Character"].Archivable = true 
   local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
   CloneChar.Parent = workspace 
   CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)
   wait() 
   CloneChar.Humanoid.BreakJointsOnDeath = false
   workspace.Camera.CameraSubject = CloneChar.Humanoid
   CloneChar.Name = "non" 
   CloneChar.Humanoid.DisplayDistanceType = "None"
   if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
   if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

   local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
   DeadChar.HumanoidRootPart:Destroy()

   local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
   local CONVEC
   local function VECTORUNIT()
    if HumanDied then CONVEC:Disconnect(); return end
    local lookVec = workspace.Camera.CFrame.lookVector
    local Root = CloneChar["HumanoidRootPart"]
    LVecPart.Position = Root.Position
    LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
   end
   CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

   local CONDOWN
   local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
   local function KEYDOWN(_,Processed) 
    if HumanDied then CONDOWN:Disconnect(); return end
    if Processed ~= true then
     local Key = _.KeyCode
     if Key == Enum.KeyCode.W then
      WDown = true end
     if Key == Enum.KeyCode.A then
      ADown = true end
     if Key == Enum.KeyCode.S then
      SDown = true end
     if Key == Enum.KeyCode.D then
      DDown = true end
     if Key == Enum.KeyCode.Space then
      SpaceDown = true end end end
   CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

   local CONUP
   local function KEYUP(_)
    if HumanDied then CONUP:Disconnect(); return end
    local Key = _.KeyCode
    if Key == Enum.KeyCode.W then
     WDown = false end
    if Key == Enum.KeyCode.A then
     ADown = false end
    if Key == Enum.KeyCode.S then
     SDown = false end
    if Key == Enum.KeyCode.D then
     DDown = false end
    if Key == Enum.KeyCode.Space then
     SpaceDown = false end end
   CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

   local function MoveClone(X,Y,Z)
    VEL = 1
    LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
    workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
    wait()
    VEL = 0
   end

   coroutine.wrap(function() 
    while true do game:GetService("RunService").RenderStepped:Wait()
     if HumanDied then break end
     if WDown then MoveClone(0,0,1e4) end
     if ADown then MoveClone(1e4,0,0) end
     if SDown then MoveClone(0,0,-1e4) end
     if DDown then MoveClone(-1e4,0,0) end
     if SpaceDown then CloneChar["Humanoid"].Jump = true end
     if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
      workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
    end 
   end)()

   local con
   function UnCollide()
    if HumanDied then con:Disconnect(); return end
    for _,Parts in next, CloneChar:GetDescendants() do
     if Parts:IsA("BasePart") then
      Parts.CanCollide = false 
     end 
    end
    for _,Parts in next, DeadChar:GetDescendants() do
     if Parts:IsA("BasePart") then
      Parts.CanCollide = false
     end 
    end 
   end
   con = game:GetService("RunService").Stepped:Connect(UnCollide)

   local resetBindable = Instance.new("BindableEvent")
   resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
    resetBindable:Destroy()
    pcall(function()
     CloneChar.Humanoid.Health = 0
     DeadChar.Humanoid.Health = 0
    end)
   end)
   game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

   coroutine.wrap(function()
    while true do
     game:GetService("RunService").RenderStepped:wait()
     if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
      HumanDied = true
      FakeCharacter:Destroy()
      script:Destroy()
      pcall(function()
       game.Players.LocalPlayer.Character = CloneChar
       CloneChar:Destroy()
       game.Players.LocalPlayer.Character = DeadChar
       if resetBindable then
        game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
        resetBindable:Destroy()
       end
       DeadChar.Humanoid.Health = 0
      end)
      break
     end  
    end
   end)()

   SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))

   coroutine.wrap(function()
    while true do
     game:GetService("RunService").RenderStepped:wait()
     if HumanDied then break end
     DeadChar["Torso"].CFrame = CloneChar["Torso"].CFrame
    end
   end)()



   for _,BodyParts in next, CloneChar:GetDescendants() do
    if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
     BodyParts.Transparency = 1 end end

   DeadChar.Torso["Left Shoulder"]:Destroy()
   DeadChar.Torso["Right Shoulder"]:Destroy()
   DeadChar.Torso["Left Hip"]:Destroy()
   DeadChar.Torso["Right Hip"]:Destroy()

  elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
   game:GetService("Players").LocalPlayer["Character"].Archivable = true 
   local CloneChar = game:GetService("Players").LocalPlayer["Character"]:Clone()
   game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
   game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
   game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
   local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
   Instance.new("Part",FalseChar).Name = "Head" 
   Instance.new("Part",FalseChar).Name = "Torso" 
   Instance.new("Humanoid",FalseChar).Name = "Humanoid"
   game:GetService("Players").LocalPlayer["Character"] = FalseChar
   game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
   local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
   Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
   Clone.Name = "Humanoid"
   game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
   game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
   game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 


   StickParts(FakeLimbs["Head"],FakeCharacter.Head,Vector3.new(0,0,0))
   StickParts(FakeLimbs["Right Arm"],FakeCharacter["Right Arm"],Vector3.new(90,0,0))
   StickParts(FakeLimbs["Left Arm"],FakeCharacter["Left Arm"],Vector3.new(90,0,0))
   StickParts(FakeLimbs["Right Leg"],FakeCharacter["Right Leg"],Vector3.new(90,0,0))
   StickParts(FakeLimbs["Left Leg"],FakeCharacter["Left Leg"],Vector3.new(90,0,0))
   StickParts(FakeLimbs["Torso1"],FakeCharacter.Torso,Vector3.new(90,0,0),Vector3.new(0.5,0,0))
   StickParts(FakeLimbs["Torso2"],FakeCharacter.Torso,Vector3.new(90,0,0),Vector3.new(-0.5,0,0))
   FakeCharacter.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

   wait(5.65) 
   game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
   CloneChar.Parent = workspace 
   CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,2,0)
   wait() 
   CloneChar.Humanoid.BreakJointsOnDeath = false
   workspace.Camera.CameraSubject = CloneChar.Humanoid 
   CloneChar.Name = "non" 
   CloneChar.Humanoid.DisplayDistanceType = "None"
   if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
   if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

   FalseChar:Destroy()

   local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

   local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
   local CONVEC
   local function VECTORUNIT()
    if HumanDied then CONVEC:Disconnect(); return end
    local lookVec = workspace.Camera.CFrame.lookVector
    local Root = CloneChar["HumanoidRootPart"]
    LVecPart.Position = Root.Position
    LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
   end
   CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

   local CONDOWN
   local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
   local function KEYDOWN(_,Processed) 
    if HumanDied then CONDOWN:Disconnect(); return end
    if Processed ~= true then
     local Key = _.KeyCode
     if Key == Enum.KeyCode.W then
      WDown = true end
     if Key == Enum.KeyCode.A then
      ADown = true end
     if Key == Enum.KeyCode.S then
      SDown = true end
     if Key == Enum.KeyCode.D then
      DDown = true end
     if Key == Enum.KeyCode.Space then
      SpaceDown = true end end end
   CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

   local CONUP
   local function KEYUP(_)
    if HumanDied then CONUP:Disconnect(); return end
    local Key = _.KeyCode
    if Key == Enum.KeyCode.W then
     WDown = false end
    if Key == Enum.KeyCode.A then
     ADown = false end
    if Key == Enum.KeyCode.S then
     SDown = false end
    if Key == Enum.KeyCode.D then
     DDown = false end
    if Key == Enum.KeyCode.Space then
     SpaceDown = false end end
   CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

   local function MoveClone(X,Y,Z)
    LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
    workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
   end

   coroutine.wrap(function() 
    while true do game:GetService("RunService").RenderStepped:Wait()
     if HumanDied then break end
     if WDown then MoveClone(0,0,1e4) end
     if ADown then MoveClone(1e4,0,0) end
     if SDown then MoveClone(0,0,-1e4) end
     if DDown then MoveClone(-1e4,0,0) end
     if SpaceDown then CloneChar["Humanoid"].Jump = true end
     if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
      CloneChar.Humanoid.WalkToPoint = CloneChar.HumanoidRootPart.Position end
    end 
   end)()

   local con
   function UnCollide()
    if HumanDied then con:Disconnect(); return end
    for _,Parts in next, CloneChar:GetDescendants() do
     if Parts:IsA("BasePart") then
      HumanRoot.CanCollide = false
      Parts.CanCollide = false 
     end 
    end
    for _,Parts in next, DeadChar:GetDescendants() do
     if Parts:IsA("BasePart") then
      Parts.CanCollide = false
      HumanRoot.CanCollide = false
     end 
    end 
   end
   con = game:GetService("RunService").Stepped:Connect(UnCollide)

   local resetBindable = Instance.new("BindableEvent")
   resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
    resetBindable:Destroy()
    CloneChar.Humanoid.Health = 0
   end)
   game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

   coroutine.wrap(function()
    while true do
     game:GetService("RunService").RenderStepped:wait()
     if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
      HumanDied = true
      pcall(function()
       game.Players.LocalPlayer.Character = CloneChar
       CloneChar:Destroy()
       game.Players.LocalPlayer.Character = DeadChar
       if resetBindable then
        game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
        resetBindable:Destroy()
       end
       DeadChar.Humanoid.Health = 0
      end)
      break
     end  
    end
   end)()

   SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(0,0,0))

   
   for _,v in next, DeadChar:GetChildren() do
    if v:IsA("Accessory") then
     if v.Name == "Meshes/CRL4Accessory"  then
      GunHat = v.Handle
      SCIFIMOVIELOL(GunHat,m4,Vector3.new(0,0,0),Vector3.new(0,-90,-90))

     elseif v.Name == "AridBadlanderMkII" then
      SoldierHelm = v.Handle
      SCIFIMOVIELOL(SoldierHelm,FakeCharacter.Head,Vector3.new(0, 0.44308090209961, -0.0026588439941406),Vector3.new(0,0,0))
     print("lol") 
     end
    end
   end
   
   
   
   for _,BodyParts in next, CloneChar:GetDescendants() do
    if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
     BodyParts.Transparency = 1 end end
  elseif Bypass == "hats" then
   game:GetService("Players").LocalPlayer["Character"].Archivable = true 
   local DeadChar = game.Players.LocalPlayer.Character
   DeadChar.Name = "non"
   local HatPosition = Vector3.new(0,0,0)
   local HatName = "MediHood"
   local HatsLimb = {
    Rarm = DeadChar:FindFirstChild("Hat1"),
    Larm = DeadChar:FindFirstChild("Pink Hair"),
    Rleg = DeadChar:FindFirstChild("Robloxclassicred"),
    Lleg = DeadChar:FindFirstChild("Kate Hair"),
    Torso1 = DeadChar:FindFirstChild("Pal Hair"),
    Torso2 = DeadChar:FindFirstChild("LavanderHair")
   }
   HatName = DeadChar:FindFirstChild(HatName)

   coroutine.wrap(function()
    while true do
     game:GetService("RunService").RenderStepped:wait()
     if not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
      HumanDied = true
      pcall(function()
       if resetBindable then
        game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
        resetBindable:Destroy()
       end
       DeadChar.Humanoid.Health = 0
      end)
      break
     end  
    end
   end)()

   local con
   function UnCollide()
    if HumanDied then con:Disconnect(); return end
    for _,Parts in next, DeadChar:GetDescendants() do
     if Parts:IsA("BasePart") then
      Parts.CanCollide = false
     end 
    end 
   end
   local con2
   function UnCollide2()
    if HumanDied then con:Disconnect(); return end
    for _,Parts in next, FakeCharacter:GetDescendants() do
     if Parts:IsA("BasePart") then
      Parts.CanCollide = false
     end 
    end 
   end
   con = game:GetService("RunService").Stepped:Connect(UnCollide)
   con2 = game:GetService("RunService").Stepped:Connect(UnCollide2)

   SCIFIMOVIELOL(HatName.Handle,DeadChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(HatsLimb.Torso1.Handle,DeadChar["Torso"],Vector3.new(0.5,0,0),Vector3.new(90,0,0))
   SCIFIMOVIELOL(HatsLimb.Torso2.Handle,DeadChar["Torso"],Vector3.new(-0.5,0,0),Vector3.new(90,0,0))
   SCIFIMOVIELOL(HatsLimb.Larm.Handle,DeadChar["Left Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
   SCIFIMOVIELOL(HatsLimb.Rarm.Handle,DeadChar["Right Arm"],Vector3.new(0,0,0),Vector3.new(90,0,0))
   SCIFIMOVIELOL(HatsLimb.Lleg.Handle,DeadChar["Left Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))
   SCIFIMOVIELOL(HatsLimb.Rleg.Handle,DeadChar["Right Leg"],Vector3.new(0,0,0),Vector3.new(90,0,0))

   for i,v in pairs(HatsLimb) do
    v.Handle:FindFirstChild("AccessoryWeld"):Destroy()
    if v.Handle:FindFirstChild("Mesh") then v.Handle:FindFirstChild("Mesh"):Destroy() end
    if v.Handle:FindFirstChild("SpecialMesh") then v.Handle:FindFirstChild("SpecialMesh"):Destroy() end
   end
   HatName.Handle:FindFirstChild("AccessoryWeld"):Destroy()
  end
 else
  if Bypass == "limbs" then --------------------------------------------------------------------------------------------------------------------
   game:GetService("Players").LocalPlayer["Character"].Archivable = true 
   local CloneChar = game:GetObjects("rbxassetid://5227463276")[1]
   CloneChar.Parent = workspace 
   CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,0.5,0.1)
   CloneChar.Humanoid.BreakJointsOnDeath = false
   workspace.Camera.CameraSubject = CloneChar.Humanoid 
   CloneChar.Name = "non" 
   CloneChar.Humanoid.DisplayDistanceType = "None"
   if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
   if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

   local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]
   DeadChar.HumanoidRootPart:Destroy()

   local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
   local CONVEC
   local function VECTORUNIT()
    if HumanDied then CONVEC:Disconnect(); return end
    local lookVec = workspace.Camera.CFrame.lookVector
    local Root = CloneChar["HumanoidRootPart"]
    LVecPart.Position = Root.Position
    LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
   end
   CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

   local CONDOWN
   local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
   local function KEYDOWN(_,Processed) 
    if HumanDied then CONDOWN:Disconnect(); return end
    if Processed ~= true then
     local Key = _.KeyCode
     if Key == Enum.KeyCode.W then
      WDown = true end
     if Key == Enum.KeyCode.A then
      ADown = true end
     if Key == Enum.KeyCode.S then
      SDown = true end
     if Key == Enum.KeyCode.D then
      DDown = true end
     if Key == Enum.KeyCode.Space then
      SpaceDown = true end end end
   CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

   local CONUP
   local function KEYUP(_)
    if HumanDied then CONUP:Disconnect(); return end
    local Key = _.KeyCode
    if Key == Enum.KeyCode.W then
     WDown = false end
    if Key == Enum.KeyCode.A then
     ADown = false end
    if Key == Enum.KeyCode.S then
     SDown = false end
    if Key == Enum.KeyCode.D then
     DDown = false end
    if Key == Enum.KeyCode.Space then
     SpaceDown = false end end
   CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

   local function MoveClone(X,Y,Z)
    LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
    workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
   end

   coroutine.wrap(function() 
    while true do game:GetService("RunService").RenderStepped:Wait()
     if HumanDied then break end
     if WDown then MoveClone(0,0,1e4) end
     if ADown then MoveClone(1e4,0,0) end
     if SDown then MoveClone(0,0,-1e4) end
     if DDown then MoveClone(-1e4,0,0) end
     if SpaceDown then CloneChar["Humanoid"].Jump = true end
     if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
      workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
    end 
   end)()

   local con
   function UnCollide()
    if HumanDied then con:Disconnect(); return end
    for _,Parts in next, CloneChar:GetDescendants() do
     if Parts:IsA("BasePart") then
      Parts.CanCollide = false 
     end 
    end
    for _,Parts in next, DeadChar:GetDescendants() do
     if Parts:IsA("BasePart") then
      Parts.CanCollide = false
     end 
    end 
   end
   con = game:GetService("RunService").Stepped:Connect(UnCollide)

   local resetBindable = Instance.new("BindableEvent")
   resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
    resetBindable:Destroy()
    CloneChar.Humanoid.Health = 0
   end)
   game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

   coroutine.wrap(function()
    while true do
     game:GetService("RunService").RenderStepped:wait()
     if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 or not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChild("Humanoid") or DeadChar:FindFirstChild("Humanoid").Health <= 0 then 
      HumanDied = true
      pcall(function()
       game.Players.LocalPlayer.Character = CloneChar
       CloneChar:Destroy()
       game.Players.LocalPlayer.Character = DeadChar
       if resetBindable then
        game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
        resetBindable:Destroy()
       end
       DeadChar.Humanoid.Health = 0
      end)
      break
     end  
    end
   end)()

   for _,v in next, DeadChar:GetChildren() do
    if v:IsA("Accessory") then
     v:Clone().Parent = CloneChar
    end
   end

   for _,v in next, DeadChar:GetDescendants() do
    if v:IsA("Motor6D") and v.Name ~= "Neck" then
     v:Destroy()
    end
   end

   SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["UpperTorso"],CloneChar["Torso"],Vector3.new(0,0.2,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LowerTorso"],CloneChar["Torso"],Vector3.new(0,-0.78,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LeftUpperArm"],CloneChar["Left Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LeftLowerArm"],CloneChar["Left Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LeftHand"],CloneChar["Left Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightUpperArm"],CloneChar["Right Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightLowerArm"],CloneChar["Right Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightHand"],CloneChar["Right Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))

   SCIFIMOVIELOL(DeadChar["LeftUpperLeg"],CloneChar["Left Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LeftLowerLeg"],CloneChar["Left Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LeftFoot"],CloneChar["Left Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightUpperLeg"],CloneChar["Right Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightLowerLeg"],CloneChar["Right Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightFoot"],CloneChar["Right Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))

   coroutine.wrap(function()
    while true do
     game:GetService("RunService").RenderStepped:wait()
     if HumanDied then break end
     DeadChar["UpperTorso"].CFrame = CloneChar["Torso"].CFrame * CFrame.new(0,0.2,0)
    end
   end)()

   for _,v in next, DeadChar:GetChildren() do
    if v:IsA("Accessory") then
     SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
    end
   end

   for _,BodyParts in next, CloneChar:GetDescendants() do
    if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
     BodyParts.Transparency = 1 end end

  elseif Bypass == "death" then --------------------------------------------------------------------------------------------------------------------
   game:GetService("Players").LocalPlayer["Character"].Archivable = true 
   local CloneChar = game:GetObjects("rbxassetid://5227463276")[1]
   game:GetService("Players").LocalPlayer["Character"].Humanoid.WalkSpeed = 0 
   game:GetService("Players").LocalPlayer["Character"].Humanoid.JumpPower = 0 
   game:GetService("Players").LocalPlayer["Character"].Humanoid.AutoRotate = false
   local FalseChar = Instance.new("Model", workspace); FalseChar.Name = ""
   Instance.new("Part",FalseChar).Name = "Head" 
   Instance.new("Part",FalseChar).Name = "UpperTorso"
   Instance.new("Humanoid",FalseChar).Name = "Humanoid"
   game:GetService("Players").LocalPlayer["Character"] = FalseChar
   game:GetService("Players").LocalPlayer["Character"].Humanoid.Name = "FalseHumanoid"
   local Clone = game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Clone()
   Clone.Parent = game:GetService("Players").LocalPlayer["Character"]
   Clone.Name = "Humanoid"
   game:GetService("Players").LocalPlayer["Character"]:FindFirstChild("FalseHumanoid"):Destroy() 
   game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0 
   game:GetService("Players").LocalPlayer["Character"] = workspace[game:GetService("Players").LocalPlayer.Name] 
   wait(5.65) 
   game:GetService("Players").LocalPlayer["Character"].Humanoid.Health = 0
   CloneChar.Parent = workspace 
   CloneChar.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer["Character"].HumanoidRootPart.CFrame * CFrame.new(0,0.5,0.1)
   wait() 
   CloneChar.Humanoid.BreakJointsOnDeath = false
   workspace.Camera.CameraSubject = CloneChar.Humanoid 
   CloneChar.Name = "non" 
   CloneChar.Humanoid.DisplayDistanceType = "None"
   if CloneChar.Head:FindFirstChild("face") then CloneChar.Head:FindFirstChild("face"):Destroy() end
   if workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face") then workspace[game:GetService("Players").LocalPlayer.Name].Head:FindFirstChild("face").Parent = CloneChar.Head end

   FalseChar:Destroy()

   local DeadChar = workspace[game:GetService("Players").LocalPlayer.Name]

   local LVecPart = Instance.new("Part", workspace) LVecPart.CanCollide = false LVecPart.Transparency = 1
   local CONVEC
   local function VECTORUNIT()
    if HumanDied then CONVEC:Disconnect(); return end
    local lookVec = workspace.Camera.CFrame.lookVector
    local Root = CloneChar["HumanoidRootPart"]
    LVecPart.Position = Root.Position
    LVecPart.CFrame = CFrame.new(LVecPart.Position, Vector3.new(lookVec.X * 9999, lookVec.Y, lookVec.Z * 9999))
   end
   CONVEC = game:GetService("RunService").Heartbeat:Connect(VECTORUNIT)

   local CONDOWN
   local WDown, ADown, SDown, DDown, SpaceDown = false, false, false, false, false
   local function KEYDOWN(_,Processed) 
    if HumanDied then CONDOWN:Disconnect(); return end
    if Processed ~= true then
     local Key = _.KeyCode
     if Key == Enum.KeyCode.W then
      WDown = true end
     if Key == Enum.KeyCode.A then
      ADown = true end
     if Key == Enum.KeyCode.S then
      SDown = true end
     if Key == Enum.KeyCode.D then
      DDown = true end
     if Key == Enum.KeyCode.Space then
      SpaceDown = true end end end
   CONDOWN = game:GetService("UserInputService").InputBegan:Connect(KEYDOWN)

   local CONUP
   local function KEYUP(_)
    if HumanDied then CONUP:Disconnect(); return end
    local Key = _.KeyCode
    if Key == Enum.KeyCode.W then
     WDown = false end
    if Key == Enum.KeyCode.A then
     ADown = false end
    if Key == Enum.KeyCode.S then
     SDown = false end
    if Key == Enum.KeyCode.D then
     DDown = false end
    if Key == Enum.KeyCode.Space then
     SpaceDown = false end end
   CONUP = game:GetService("UserInputService").InputEnded:Connect(KEYUP)

   local function MoveClone(X,Y,Z)
    LVecPart.CFrame = LVecPart.CFrame * CFrame.new(-X,Y,-Z)
    workspace["non"].Humanoid.WalkToPoint = LVecPart.Position
   end

   coroutine.wrap(function() 
    while true do game:GetService("RunService").RenderStepped:Wait()
     if HumanDied then break end
     if WDown then MoveClone(0,0,1e4) end
     if ADown then MoveClone(1e4,0,0) end
     if SDown then MoveClone(0,0,-1e4) end
     if DDown then MoveClone(-1e4,0,0) end
     if SpaceDown then CloneChar["Humanoid"].Jump = true end
     if WDown ~= true and ADown ~= true and SDown ~= true and DDown ~= true then
      workspace["non"].Humanoid.WalkToPoint = workspace["non"].HumanoidRootPart.Position end
    end 
   end)()

   local con
   function UnCollide()
    if HumanDied then con:Disconnect(); return end
    for _,Parts in next, CloneChar:GetDescendants() do
     if Parts:IsA("BasePart") then
      Parts.CanCollide = false 
     end 
    end
    for _,Parts in next, DeadChar:GetDescendants() do
     if Parts:IsA("BasePart") then
      Parts.CanCollide = false
     end 
    end 
   end
   con = game:GetService("RunService").Stepped:Connect(UnCollide)

   local resetBindable = Instance.new("BindableEvent")
   resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
    resetBindable:Destroy()
    CloneChar.Humanoid.Health = 0
   end)
   game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

   coroutine.wrap(function()
    while true do
     game:GetService("RunService").RenderStepped:wait()
     if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChild("Humanoid") or CloneChar:FindFirstChild("Humanoid").Health <= 0 then 
      HumanDied = true
      pcall(function()
       game.Players.LocalPlayer.Character = CloneChar
       CloneChar:Destroy()
       game.Players.LocalPlayer.Character = DeadChar
       if resetBindable then
        game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
        resetBindable:Destroy()
       end
       DeadChar.Humanoid.Health = 0
      end)
      break
     end  
    end
   end)()

   for _,v in next, DeadChar:GetChildren() do
    if v:IsA("Accessory") then
     v:Clone().Parent = CloneChar
    end
   end

   SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"],Vector3.new(0,0,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["UpperTorso"],CloneChar["Torso"],Vector3.new(0,0.2,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LowerTorso"],CloneChar["Torso"],Vector3.new(0,-0.78,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LeftUpperArm"],CloneChar["Left Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LeftLowerArm"],CloneChar["Left Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LeftHand"],CloneChar["Left Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightUpperArm"],CloneChar["Right Arm"],Vector3.new(0,0.375,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightLowerArm"],CloneChar["Right Arm"],Vector3.new(0,-0.215,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightHand"],CloneChar["Right Arm"],Vector3.new(0,-0.825,0),Vector3.new(0,0,0))

   SCIFIMOVIELOL(DeadChar["LeftUpperLeg"],CloneChar["Left Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LeftLowerLeg"],CloneChar["Left Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["LeftFoot"],CloneChar["Left Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightUpperLeg"],CloneChar["Right Leg"],Vector3.new(0,0.575,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightLowerLeg"],CloneChar["Right Leg"],Vector3.new(0,-0.137,0),Vector3.new(0,0,0))
   SCIFIMOVIELOL(DeadChar["RightFoot"],CloneChar["Right Leg"],Vector3.new(0,-0.787,0),Vector3.new(0,0,0))

   SCIFIMOVIELOL(DeadChar["HumanoidRootPart"],CloneChar["HumanoidRootPart"],Vector3.new(0,0,0),Vector3.new(0,0,0))

   for _,v in next, DeadChar:GetChildren() do
    if v:IsA("Accessory") then
     SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
    end
   end

   for _,BodyParts in next, CloneChar:GetDescendants() do
    if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
     BodyParts.Transparency = 1 end end
   if DeadChar.Head:FindFirstChild("Neck") then
    game.Players.LocalPlayer.Character:BreakJoints()
   end
  end
 end


end



local CloneChar = workspace.non
game.Players.LocalPlayer.Character.Parent = CloneChar

local MakeNewAnim = function(id)
 local NewAnim = Instance.new("Animation")
 NewAnim.AnimationId = id
 return {NewAnim,id}
end

function CreoFEFakeAnimations(Character)
 spawn(function()
 local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
 local HRP = Character:WaitForChild("HumanoidRootPart")


 local Walk = MakeNewAnim("http://www.roblox.com/asset/?id=180426354")
 local Idle = MakeNewAnim("http://www.roblox.com/asset/?id=180435571")
 local Jump = MakeNewAnim("http://www.roblox.com/asset/?id=125750702")
 local Fall = MakeNewAnim("http://www.roblox.com/asset/?id=180436148")

 local anim = Idle[1]
 local AnimId = Idle[2]
 local Anim = Humanoid:LoadAnimation(anim)
 Anim.Priority = Enum.AnimationPriority.Core

 local rayCast = function(Pos, Dir, Max, Ignore)

  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), (Ignore))
 end



 spawn(function()
  while HumanDied ~= true do
   wait()
   local hitfloor = rayCast(HRP.Position, CFrame.new(HRP.Position, HRP.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
   local oldAnim = Anim
   local oldAnimId = AnimId
   if HRP.Velocity.Y > 0 and hitfloor == nil then
    Anim = Humanoid:LoadAnimation(Jump[1])
    AnimId = Jump[2]
   elseif HRP.Velocity.Y < 0 and hitfloor == nil then
    Anim = Humanoid:LoadAnimation(Fall[1])
    AnimId = Fall[2]
   elseif (HRP.Velocity.X + HRP.Velocity.Z)/2 > 0.1 or (HRP.Velocity.X + HRP.Velocity.Z)/2 < -0.1 then
    Anim = Humanoid:LoadAnimation(Walk[1])
    AnimId = Walk[2]
   else
    Anim = Humanoid:LoadAnimation(Idle[1])
    AnimId = Idle[2]
   end
   if AnimId ~= oldAnimId then
    oldAnim:Stop()
    Anim:Play()
   end

  end
  end)
  end)

end





CreoFEFakeAnimations(CloneChar)
CreoFEFakeAnimations(FakeCharacter)






s = game:GetService("RunService").Heartbeat:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,35,0)
end)
task.spawn(function()
 while true do
  wait()
  if HumanDied == true then
   s:Disconnect()
   break
  end
 end
end)







local SHOW = Instance.new("SelectionBox",workspace)
SHOW.Adornee = game.Players.LocalPlayer.Character.HumanoidRootPart
--- <<Start Soldier>> --



bambam = Instance.new("BodyThrust")
bambam.Parent = HumanRoot
bambam.Force = Vector3.new(0,0,0)
------Body Variables------
local myHuman = FakeCharacter.Humanoid
local myTorso = FakeCharacter.Torso
local myHead = FakeCharacter.Head
local myFace = myHead.face
local neck = myTorso.Neck
local headWeld = myTorso["Head Weld"]
local rArm = FakeCharacter["Right Arm"]
local lArm = FakeCharacter["Left Arm"]
local lShoulder = myTorso["Left Shoulder"]
local rShoulder = myTorso["Right Shoulder"]
local lArmWeld = myTorso["Left Arm Weld"]
local rArmWeld = myTorso["Right Arm Weld"]
local gyro = FakeCharacter.HumanoidRootPart.BodyGyro

------M4 Variables------
local m4 = FakeCharacter.M4
if GunHat then
 GunHat.Parent = FakeCharacter
end
if SoldierHelm then
 SoldierHelm.Parent = FakeCharacter
 FakeCharacter.Mask.Transparency = 1
 FakeLimbs["Head"].Transparency = 1
 FakeCharacter.fasthelmet.Transparency = 1
end


local m4Weld = m4["M4 Weld"]
local barrel = FakeCharacter.Barrel
local aimer = FakeCharacter.Aimer
local aimerWeld = aimer["Aimer Weld"]
local fullMag = 30
local mag = fullMag
local flash = barrel.Attachment.Flash

------Knife variables------
local knife = FakeCharacter.Knife
local knifeWeld = knife["Knife Weld"]

------Grenade variables------
local grenade = FakeCharacter.Grenade

------Sounds------
local equipSound = m4.Equip
local fireSound = m4.Fire
local reloadSound = m4.Reload
local knifeEquipSound = knife.EquipSound
local knifeAttackSound = knife.AttackSound
local knifeStabSound = knife.StabSound
local hurtSound = myHead.Hurt
local pinSound = grenade.Pin

------Animations------
local stabAnimation = myHuman:LoadAnimation(FakeCharacter.Stab)
stabAnimation.Priority = Enum.AnimationPriority.Action
local throwAnimation = myHuman:LoadAnimation(FakeCharacter.ThrowAnimation)
throwAnimation.Priority = Enum.AnimationPriority.Action
throwAnimation.Looped = false
local reloadAnimation = myHuman:LoadAnimation(FakeCharacter.Reload)
reloadAnimation.Priority = Enum.AnimationPriority.Action

------Status------
local reloading = false
local weaponAimed = false
local weaponCool = true
local m4Equipped = false
local knifeEquipped = false
local grenadeCool = true
local currentTarget = nil

local status = "Idle"
spawn(function()
 while  true do
  wait()
  if currentTarget == nil or weaponCool == false then
   HumanRoot.Position = FakeCharacter.Torso.Position
   bambam.Force = Vector3.new(0,0,0)
  end
 end
end)
local faces = {Idle = "http://www.roblox.com/asset/?id=23219775", 
 Attacking = "http://www.roblox.com/asset/?id=286688505", 
 Hunting = "http://www.roblox.com/asset/?id=209715003 ", 
 Hurt = "http://www.roblox.com/asset/?id=258192246",
 Dead = "http://www.roblox.com/asset/?id=15426038"}
local gunPointedAt = nil

------Target/Ally Tracking------
local allies = {"Civilian"}
local potentialTargets = {}
local activeAllies = {}
local team = FakeCharacter.Settings.Team.Value
local attackPlayers = FakeCharacter.Settings.AttackPlayers.Value

function spawner(func,...)
 local co = coroutine.wrap(func)
 co(...)
end

function checkDist(part1,part2)
 return (part1.Position - part2.Position).Magnitude
end

function checkSight(target)
 local ray = Ray.new(barrel.Position, (target.Position - barrel.Position).Unit * 75)
 local part,position = workspace:FindPartOnRayWithIgnoreList(ray, {FakeCharacter})
 local ray2 = Ray.new(myTorso.Position, (target.Position - myTorso.Position).Unit * 75)
 local part2,position2 = workspace:FindPartOnRayWithIgnoreList(ray2, {FakeCharacter})
 if part and part2 then
  if part:IsDescendantOf(target.Parent) and part2:IsDescendantOf(target.Parent) then
   return true
  end
 end
 return false
end

function updateFace()
 if myFace.Texture ~= faces.Dead and myFace.Texture ~= faces.Hurt then
  myFace.Texture = faces[status]
 end
end

function findTarget()
 local dist = FakeCharacter.Settings.DetectionRange.Value
 local target = nil
 potentialTargets = {}
 local seeTargets = {}
 for _,v in ipairs(workspace:GetChildren()) do

  local human = v:FindFirstChild("Humanoid")
  local torso = v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Torso")
  if human and torso and v ~= FakeCharacter and v ~= CloneChar then

   --Check and see if they are on our team, if they are break the loop.
   local targetTeam
   local teammate = false
   if v:FindFirstChild("Team") then
    targetTeam = v.Team.Value
   elseif v:FindFirstChild("Settings") and v.Settings:FindFirstChild("Team") then
    targetTeam = v.Settings.Team.Value   
   end
   if (targetTeam and targetTeam == team) or (not attackPlayers and game.Players:GetPlayerFromCharacter(v)) then
    teammate = true
   end

   if (myTorso.Position - torso.Position).magnitude < dist and human.Health > 0 then
    for i,x in ipairs(allies) do
     if x == v.Name or teammate then
      table.insert(activeAllies,torso)
      break
     elseif i == #allies then
      table.insert(potentialTargets,torso)
     end
    end
   end
  end
 end
 if #potentialTargets > 0 then
  for i,v in ipairs(potentialTargets) do
   if checkSight(v) then
    table.insert(seeTargets,v)
   end
  end
  if #seeTargets > 0 then
   for i,v in ipairs(seeTargets) do
    if (myTorso.Position - v.Position).magnitude < dist then
     target = v
     dist = (myTorso.Position - v.Position).magnitude
    end
   end
  else
   for i,v in ipairs(potentialTargets) do
    if (myTorso.Position - v.Position).magnitude < dist then
     target = v
     dist = (myTorso.Position - v.Position).magnitude
    end
   end
  end
 end
 currentTarget = target 
end

function pathToLocation(target)
 local path = game:GetService("PathfindingService"):CreatePath()
 path:ComputeAsync(myTorso.Position, target.Position)
 local waypoints = path:GetWaypoints()

 for _,waypoint in ipairs(waypoints) do
  if waypoint.Action == Enum.PathWaypointAction.Jump then
   myHuman.Jump = true
  end
  myHuman:MoveTo(waypoint.Position)
  spawner(function()
   wait(0.5)
   if myHuman.WalkToPoint.Y > myTorso.Position.Y then
    myHuman.Jump = true
   end
  end)
  local moveSuccess = myHuman.MoveToFinished:Wait()
  if not moveSuccess or not target.Parent or (checkDist(myTorso,target) < 30 and checkSight(target)) or currentTarget ~= target then
   break
  end
  if checkDist(target,waypoints[#waypoints]) > 30 then
   pathToLocation(target)
  end
 end
end

function walkRandom()
 local randX = math.random(-100,100)
 local randZ = math.random(-100,100)
 local goal = myTorso.Position + Vector3.new(randX, 0, randZ)
 local path = game:GetService("PathfindingService"):CreatePath()
 path:ComputeAsync(myTorso.Position, goal)
 local waypoints = path:GetWaypoints()

 if path.Status == Enum.PathStatus.Success then
  for i,waypoint in ipairs(waypoints) do
   if waypoint.Action == Enum.PathWaypointAction.Jump then
    myHuman.Jump = true
   end
   myHuman:MoveTo(waypoint.Position)
   spawner(function()
    wait(0.5)
    if myHuman.WalkToPoint.Y > myTorso.Position.Y then
     myHuman.Jump = true
    end
   end)
   local moveSuccess = myHuman.MoveToFinished:Wait()
   if not moveSuccess or currentTarget then
    break
   end
  end
 else
  wait(2)
 end
end

function drawM4()
 yieldKnife()
 if m4Equipped == false then
  m4Equipped = true
  equipSound:Play()

  --Right Arm Setup
  rShoulder.Part1 = nil
  rArm.CFrame = aimer.CFrame * CFrame.new(1.25,0.05,-0.65) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(-10))
  rArmWeld.Part1 = rArm

  --Left Arm Setup 
  lShoulder.Part1 = nil
  lArm.CFrame = aimer.CFrame * CFrame.new(-0.35,0.05,-1.48) * CFrame.Angles(math.rad(84),math.rad(-3),math.rad(28))
  lArmWeld.Part1 = lArm

  --M4 Setup
  m4Weld.Part0 = nil
  m4.CFrame = aimer.CFrame * CFrame.new(0.65,0.37,-2.22) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0))
  m4Weld.Part0 = aimer
 end
end

function yieldM4()
 myHuman.AutoRotate = true 
 gyro.MaxTorque = Vector3.new(0,0,0)
 if weaponAimed == true then
  weaponAimed = false
  resetHead()
 end
 if m4Equipped == true then
  m4Equipped = false
  equipSound:Play()

  --Right Arm setup
  rArmWeld.Part1 = nil
  rShoulder.Part1 = rArm

  --Left Arm Setup
  lArmWeld.Part1 = nil
  lShoulder.Part1 = lArm

  --M4 Setup
  m4Weld.Part0 = nil
  m4.CFrame = myTorso.CFrame * CFrame.new(0,0,0.6) * CFrame.Angles(math.rad(-90),math.rad(-60),math.rad(90))
  m4Weld.Part0 = myTorso
 end
end

function drawKnife()
 if knifeEquipped == false then
  yieldM4()
  knifeEquipSound:Play()
  knifeEquipped = true
  knifeWeld.Part0 = nil
  knife.CFrame = rArm.CFrame * CFrame.new(0,-1,-1) * CFrame.Angles(math.rad(90),math.rad(180),math.rad(180))
  knifeWeld.Part0 = rArm
 end
end

function yieldKnife()
 if knifeEquipped == true then
  knifeEquipped = false
  knifeWeld.Part0 = nil
  knife.CFrame = myTorso.CFrame * CFrame.new(-1,-1,0.5) * CFrame.Angles(math.rad(-65),0,math.rad(180))
  knifeWeld.Part0 = myTorso
 end
end

function aim(target)
 if weaponAimed == false then
  game:GetService("TweenService"):Create(neck,TweenInfo.new(0.5),{C0 = neck.C0 * CFrame.Angles(0,math.rad(-15),0)}):Play()
 end

 myHuman.AutoRotate = false

 weaponAimed = true

 gyro.CFrame = CFrame.new(myTorso.Position,target.Position)
 gyro.MaxTorque = Vector3.new(0,math.huge,0)
 if not reloading then

  local aimCFrame = CFrame.new(aimer.Position,target.Position)
  aimCFrame = aimCFrame - aimCFrame.Position
  local negateCFrame = myTorso.CFrame - myTorso.Position
  local newC0 = CFrame.new(0,0.5,0) * negateCFrame:Inverse() * aimCFrame
  local x,y,z = newC0:ToEulerAnglesXYZ()
  x = math.clamp(x,-0.8,0.8) --So his aiming isn't crazy backwards
  newC0 = CFrame.new(0,0.5,0) * CFrame.fromEulerAnglesXYZ(x,0,0)
  local lookDiff = (newC0.LookVector - aimerWeld.C0.LookVector).Magnitude 
  game:GetService("TweenService"):Create(aimerWeld,TweenInfo.new(lookDiff * 0.2),{C0 = newC0}):Play()


  local newC0 = CFrame.new(0,1,0) * CFrame.Angles(-1.5 + math.rad(aimer.Orientation.X),math.rad(15),math.rad(180)) ---1.5 - 
  game:GetService("TweenService"):Create(neck,TweenInfo.new(lookDiff * 0.2),{C0 = newC0}):Play()
  wait(lookDiff*0.2)
 end
end


function resetHead()
 game:GetService("TweenService"):Create(neck,TweenInfo.new(0.5),{C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),0,math.rad(180))}):Play()
end

function shoot(target)
 if weaponCool == true and reloading == false then
  weaponCool = false

  local shot
  if checkDist(target,myTorso) > 60 then
   shot = 1
  else
   shot = 3
  end
  for i = 1, shot do
   wait(0.1)
   mag = mag - 1 

   flash:Emit(1)
   local flash = Instance.new("PointLight",barrel)
   flash.Brightness = 3
   game:GetService("Debris"):AddItem(flash,0.1)

   local bullet = Instance.new("Part")
   bullet.Size = Vector3.new(0.1,0.1,0.3)
   bullet.BrickColor = BrickColor.new("Gold")
   bullet.Material = Enum.Material.Neon
   bullet.CFrame = barrel.CFrame
   bullet.CanCollide = false
   bullet.Touched:Connect(function(obj)
    if not obj:IsDescendantOf(FakeCharacter) then 
     local human = obj.Parent:FindFirstChild("Humanoid")
     if human then
      for i = 1,30 do
       wait()
       HumanRoot.Position = obj.Parent:WaitForChild("HumanoidRootPart").Position
       bambam.Location = obj.Parent:WaitForChild("HumanoidRootPart").Position
       bambam.Force = Vector3.new(1000,0,1000)
       findTarget()
      end
     end
     bullet:Destroy()
    end
   end)
   bullet.Parent = workspace
   fireSound:Play()

   local spread = Vector3.new(math.random(-shot,shot)/100,math.random(-shot,shot)/100,math.random(-shot,shot)/100)

   local bv = Instance.new("BodyVelocity",bullet)
   bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
   bv.Velocity = (aimer.CFrame.LookVector + spread) * 300

   local s = Instance.new("Sound",bullet)
   s.Volume = 0.7
   s.PlaybackSpeed = 7
   s.Looped = true
   s.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
   s:Play()

   local a1 = Instance.new("Attachment",bullet)
   a1.Position = Vector3.new(0,0.05,0)
   local a2 = Instance.new("Attachment",bullet)
   a2.Position = Vector3.new(0,-0.05,0)

   local t = Instance.new("Trail",bullet)
   t.Attachment0 = a1
   t.Attachment1 = a2
   t.Color = ColorSequence.new(bullet.Color)
   t.WidthScale = NumberSequence.new(0.1,0.01)
   t.Lifetime = 0.3

   --TODO ADD KICK

   game:GetService("Debris"):AddItem(bullet, 5)
  end

  if mag <= 0 then
   reload()
  end

  spawner(function()
   wait(1)
   weaponCool = true
  end)
 end
end


function reload()
 if weaponAimed == true then
  resetHead()
  weaponAimed = false
 end
 reloadSound:Play()
 reloading = true

 yieldM4()
 m4Weld.Part0 = nil
 m4.CFrame = lArm.CFrame * CFrame.new(0.6,-1.3,0.2) * CFrame.Angles(math.rad(180),0,0)
 m4Weld.Part0 = lArm

 reloadAnimation:Play()
 reloadAnimation:AdjustSpeed(3)
 reloadAnimation.Stopped:Wait()
 reloading = false 
 mag = fullMag
 drawM4()
end

function stab(target)
 if weaponCool == true then
  weaponCool = false

  knifeStabSound:Play()
  knifeAttackSound:Play()
  stabAnimation:Play()
  local human = target.Parent.Humanoid
  HumanRoot.Position = target.Parent:WaitForChild("HumanoidRootPart").Position
  bambam.Location = target.Parent:WaitForChild("HumanoidRootPart").Position
  bambam.Force = Vector3.new(500,0,500)

  spawner(function()
   wait(0.5)
   weaponCool = true
  end)
 end
end

function yieldWeapons()
 yieldKnife()
 yieldM4()
 if weaponAimed == true then
  weaponAimed = false 
  resetHead()
 end
end

function checkCluster(target)
 --Check for nearby allies
 for i,v in ipairs(activeAllies) do
  if checkDist(target,v) < 30 then
   return false
  end
 end
 --Check if enemies are paired close together
 for i,v in ipairs(potentialTargets) do
  if v ~= target then
   if checkDist(target,v) < 15 then
    return true
   end
  end
 end
 return false
end

function throwGrenade(target)
 if weaponCool == true and grenadeCool == true then
  weaponCool = false
  grenadeCool = false
  yieldWeapons()
  local g = grenade:Clone()
  g.Boom.PlayOnRemove = true
  g.Parent = workspace
  g.CanCollide = true
  g.CFrame = rArm.CFrame * CFrame.new(0,-1.3,0) * CFrame.Angles(0,0,math.rad(90))
  game:GetService("Debris"):AddItem(g,5)

  grenade.Transparency = 1

  local w = Instance.new("WeldConstraint",g)
  w.Part0 = rArm
  w.Part1 = g

  throwAnimation:Play()
  pinSound:Play()

  aim(target)


  wait(0.4)

  if myHuman.Health <= 0 then
   return
  end

  aim(target)

  throwAnimation:Stop()

  w.Part1 = nil
  local dist = checkDist(myTorso,target)
  g.Velocity = (myTorso.CFrame.LookVector + Vector3.new(0,1,0)) * Vector3.new(dist,dist*1.5,dist)

  --Wait until grenade is thrown before it can be primed
  touched = g.Touched:Connect(function(obj)
   if not obj:IsDescendantOf(FakeCharacter) then
    touched:Disconnect()
    g.Pin:Play()
    wait(0.5)
    local x = Instance.new("Explosion",workspace)
    x.Position = g.Position
    x.Hit:Connect(function(obj,dist)
     local human = obj.Parent:FindFirstChild("Humanoid")
     if human then
      human:TakeDamage(20 - dist)
      human:ChangeState(Enum.HumanoidStateType.Ragdoll)
     end
    end)
    g:Destroy()
    game:GetService("Debris"):AddItem(x,2)
   end
  end)

  local attach0 = g.Attach0
  local attach1 = g.Attach1
  local t = Instance.new("Trail",g)
  t.Attachment0 = attach0
  t.Attachment1 = attach1
  t.Lifetime = 0.5
  t.Color = ColorSequence.new(Color3.fromRGB(150,150,150))
  t.WidthScale = NumberSequence.new(1,0)

  spawner(function()
   wait(1)
   weaponCool = true
   wait(5)
   grenadeCool = true
   grenade.Transparency = 0
  end)
 end
end

function movementLoop()
 while myHuman.Health>0 do
  if currentTarget then
   if checkDist(currentTarget,myTorso) > 30 or not checkSight(currentTarget) then
    pathToLocation(currentTarget)
   elseif checkDist(currentTarget,myTorso) > 8 then
    if math.random(0,1) == 1 then
     myHuman:Move(myTorso.CFrame.RightVector)
    else
     myHuman:Move(-myTorso.CFrame.RightVector)
    end
    wait(0.5)
   end
  else
   local randomAction = math.random(4)
   if randomAction == 3 then
    walkRandom()
   elseif randomAction == 2 then
    --print("Look randomly")
   end
   wait(3)
  end
  wait(0.1)
 end
end

function searchTargetLoop()
 while myHuman.Health>0 do
  findTarget()
  wait(3)
 end
end

function aimingLoop()
 while myHuman.Health>0 do
  if currentTarget then
   if checkSight(currentTarget) then
    aim(currentTarget)
    gunPointedAt = currentTarget
   else
    wait(0.5)
   end
  else
   wait(2)
  end
  wait()
 end
end

function attackLoop()
 while myHuman.Health>0 do
  if currentTarget then
   status = "Hunting"
   updateFace()
   if checkSight(currentTarget) then
    status = "Attacking"
    updateFace()
    local distance = checkDist(myTorso,currentTarget)
    if distance > 15 then
     if checkCluster(currentTarget) == true and distance < 100 and distance > 30 and grenadeCool then
      throwGrenade(currentTarget)
     else
      drawM4()
      repeat 
       wait()
      until gunPointedAt == currentTarget
      shoot(currentTarget)
     end
    else
     drawKnife()
     myHuman:MoveTo(currentTarget.Position)
     local canStab = false
     for i,v in pairs(currentTarget.Parent:GetChildren()) do
      if v:IsA("BasePart") and checkDist(v,myTorso) < 7 then
       canStab = true
      end
     end
     if canStab then
      stab(currentTarget)
     end
    end
   else
    if weaponAimed == true then
     weaponAimed = false
     myHuman.AutoRotate = true
     gyro.MaxTorque = Vector3.new(0,0,0)
     resetHead()
     local newC0 = CFrame.new(0,0.5,0) * CFrame.Angles(-0.5,0,0)
     local lookDiff = (newC0.LookVector - aimerWeld.C0.LookVector).Magnitude 
     game:GetService("TweenService"):Create(aimerWeld,TweenInfo.new(lookDiff * 0.2),{C0 = newC0}):Play()
    end
   end
  else
   status = "Idle"
   updateFace()
   yieldWeapons()
   wait(2)
  end
  wait(0.1)
 end
end

function Died()
 FakeCharacter:Destroy()
 CloneChar:Destroy()
 game.Players.LocalPlayer.Character:Destroy()
end

myHuman.Died:Connect(Died)

local oldHealth = myHuman.Health
local soundSpeeds = {0.9,0.95,1,1.05,1.1}
myHuman.HealthChanged:Connect(function(health)
 if health < oldHealth and hurtSound.IsPlaying == false then
  hurtSound.PlaybackSpeed = soundSpeeds[math.random(#soundSpeeds)]
  hurtSound:Play()
  spawner(function()
   myFace.Texture = faces.Hurt
   wait(1)
   if myFace.Texture == faces.Hurt then
    myFace.Texture = faces[status]
   end
  end)
 end
 oldHealth = health
end)

spawner(searchTargetLoop)
spawner(attackLoop)
spawner(movementLoop)
spawner(aimingLoop)

-- {<CONVERTED BY CREO>} -- FE Soldier AI
-- Join my discord server for early scripts :)
-- https://discord.gg/SWt5Uzpd

--[[ {<HATS NEEDED>} 
https://web.roblox.com/catalog/6133544919/Retro-SWAT-Helmet

https://web.roblox.com/catalog/7806887000/CR-L-4-Back

https://www.roblox.com/catalog/48474313/Red-Roblox-Cap

https://www.roblox.com/catalog/4391384843/International-Fedora-Russia

https://www.roblox.com/catalog/48474294/ROBLOX-Girl-Hair

https://www.roblox.com/catalog/62724852/Chestnut-Bun

https://www.roblox.com/catalog/451220849/Lavender-Updo

https://www.roblox.com/catalog/63690008/Pal-Hair

https://www.roblox.com/catalog/62234425/Brown-Hair
                   ]]