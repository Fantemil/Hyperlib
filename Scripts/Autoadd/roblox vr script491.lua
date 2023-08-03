
-- This is an older version of CLOVR, I found that the legs would 'walk' better in this version than the one we released. 

--Controls are a bit different from last release because this is older. Still works good!

--RagDollEnabled is set to true, DON'T set it to false or CLOVR won't work. Feel free to change the other settings though. -Abacaxl





--|| Settings:

local StudsOffset = 0 -- Character height (negative if you're too high)
local Smoothness = .5 -- Character interpolation (0.1 - 1 = smooth - rigid)

local AnchorCharacter = true -- Prevent physics from causing inconsistencies
local HideCharacter = false -- Hide character on a platform
local NoCollision = true -- Disable player collision

local ChatEnabled = true -- See chat on your left hand in-game
 local ChatLocalRange = 75 -- Local chat range

local ViewportEnabled = true -- View nearby players in a frame
 local ViewportRange = 30 -- Maximum distance players are updated

local RagdollEnabled = true -- Use your character instead of hats (NetworkOwner vulnerability)
 local RagdollHeadMovement = true -- Move your head separately from your body (+9 second wait)

local AutoRun = false -- Run script on respawn
local AutoRespawn = true -- Kill your real body when your virtual body dies

local WearAllAccessories = true -- Use all leftover hats for the head
local AccurateHandPosition = true -- Move your Roblox hands according to your real hands

local AccessorySettings = {
	LeftArm		= "";
	RightArm	= "";
	LeftLeg		= "";
	RightLeg	= "";
	Torso		= "";
	Head		= true;
	
	BlockArms	= true;
	BlockLegs	= true;
	BlockTorso	= true;
	
	LimbOffset	= CFrame.Angles(math.rad(90), 0, 0);
}

local FootPlacementSettings = {
	RightOffset = Vector3.new(.5, 0, 0),
	LeftOffset = Vector3.new(-.5, 0, 0),
}

--|| Script:

local Script = nil;

Script = function()

--[[
	Variables
--]]

local Players = game:GetService("Players")
 local Client = Players.LocalPlayer
  local Character = Client.Character or Client.CharacterAdded:Wait()
   local WeldBase = Character:WaitForChild("HumanoidRootPart")
   local ArmBase = Character:FindFirstChild("RightHand") or Character:FindFirstChild("Right Arm") or WeldBase
  local Backpack = Client:WaitForChild("Backpack")
  local Mouse = Client:GetMouse()

local Camera = workspace.CurrentCamera

local VRService = game:GetService("VRService")
 local VRReady = VRService.VREnabled

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")	

local HeadAccessories = {};
local UsedAccessories = {};

local Pointer = false;
local Point1 = false;
local Point2 = false;

local VirtualRig = game:GetObjects("rbxassetid://4468539481")[1]
local VirtualBody = game:GetObjects("rbxassetid://4464983829")[1]

local Anchor = Instance.new("Part")

Anchor.Anchored = true
Anchor.Transparency = 1
Anchor.CanCollide = false
Anchor.Parent = workspace

if RagdollEnabled then
	print("RagdollEnabled, thank you for using CLOVR!")
	local NetworkAccess = coroutine.create(function()
settings().Physics.AllowSleep = false
while true do game:GetService("RunService").RenderStepped:Wait()
for _,Players in next, game:GetService("Players"):GetChildren() do
if Players ~= game:GetService("Players").LocalPlayer then
Players.MaximumSimulationRadius = 0.1 Players.SimulationRadius = 0 end end
game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
game:GetService("Players").LocalPlayer.SimulationRadius = math.huge*math.huge end end)
coroutine.resume(NetworkAccess)
end



--[[
	Character Protection
--]]

local CharacterCFrame = WeldBase.CFrame

if not RagdollEnabled then
	Character.Humanoid.AnimationPlayed:Connect(function(Animation)
		Animation:Stop()
	end)
	
	for _, Track in next, Character.Humanoid:GetPlayingAnimationTracks() do
		Track:Stop()
	end
	
	if HideCharacter then
		local Platform = Instance.new("Part")
		
		Platform.Anchored = true
		Platform.Size = Vector3.new(100, 5, 100)
		Platform.CFrame = CFrame.new(0, 10000, 0)
		Platform.Transparency = 1
		Platform.Parent = workspace
		
		Character:MoveTo(Platform.Position + Vector3.new(0, 5, 0))
		
		wait(.5)
	end
	
	if AnchorCharacter then
		for _, Part in pairs(Character:GetChildren()) do
			if Part:IsA("BasePart") then
				Part.Anchored = true
			end
		end
	end
end

--[[
	Functions
--]]

function Tween(Object, Style, Direction, Time, Goal)
    local tweenInfo = TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction])
    local tween = game:GetService("TweenService"):Create(Object, tweenInfo, Goal)

	tween.Completed:Connect(function()
		tween:Destroy()
	end)
	
    tween:Play()

    return tween
end

local function GetMotorForLimb(Limb)
	for _, Motor in next, Character:GetDescendants() do
		if Motor:IsA("Motor6D") and Motor.Part1 == Limb then
			return Motor
		end
	end
end

local function CreateAlignment(Limb, Part0)
	local Attachment0 = Instance.new("Attachment", Part0 or Anchor)
	local Attachment1 = Instance.new("Attachment", Limb)
	
	local Orientation = Instance.new("AlignOrientation")
	local Position = Instance.new("AlignPosition")
	
	Orientation.Attachment0 = Attachment1
	Orientation.Attachment1 = Attachment0
	Orientation.RigidityEnabled = false
	Orientation.MaxTorque = 20000
	Orientation.Responsiveness = 40
	Orientation.Parent = Character.HumanoidRootPart
	
	Position.Attachment0 = Attachment1
	Position.Attachment1 = Attachment0
	Position.RigidityEnabled = false
	Position.MaxForce = 40000
	Position.Responsiveness = 40
	Position.Parent = Character.HumanoidRootPart
	
	Limb.Massless = false
	
	local Motor = GetMotorForLimb(Limb)
	if Motor then
		Motor:Destroy()
	end
	
	return function(CF, Local)
		if Local then
			Attachment0.CFrame = CF
		else
			Attachment0.WorldCFrame = CF
		end
	end;
end

local function GetExtraTool()
	for _, Tool in next, Character:GetChildren() do
		if Tool:IsA("Tool") and not Tool.Name:match("LIMB_TOOL") then
			return Tool
		end
	end
end

local function GetGripForHandle(Handle)
	for _, Weld in next, Character:GetDescendants() do
		if Weld:IsA("Weld") and (Weld.Part0 == Handle or Weld.Part1 == Handle) then
			return Weld
		end
	end
	
	wait(.2)
	
	for _, Weld in next, Character:GetDescendants() do
		if Weld:IsA("Weld") and (Weld.Part0 == Handle or Weld.Part1 == Handle) then
			return Weld
		end
	end
end

local function CreateRightGrip(Handle)
	local RightGrip = Instance.new("Weld")
	
	RightGrip.Name = "RightGrip"
	RightGrip.Part1 = Handle
	RightGrip.Part0 = WeldBase
	RightGrip.Parent = WeldBase
	
	return RightGrip
end

local function CreateAccessory(Accessory, DeleteMeshes)
	if not Accessory then
		return
	end
	
	local HatAttachment = Accessory.Handle:FindFirstChildWhichIsA("Attachment")
	local HeadAttachment = VirtualRig:FindFirstChild(HatAttachment.Name, true)
	local BasePart = HeadAttachment.Parent
	
	local HatAtt = HatAttachment.CFrame
	local HeadAtt = HeadAttachment.CFrame
	
	if DeleteMeshes then
		if Accessory.Handle:FindFirstChild("Mesh") then
			Accessory.Handle.Mesh:Destroy()
		end
	end
	
	wait()
	
	local Handle = Accessory:WaitForChild("Handle")
	
	if Handle:FindFirstChildWhichIsA("Weld", true) then
		Handle:FindFirstChildWhichIsA("Weld", true):Destroy()
		Handle:BreakJoints()
	else
		Handle:BreakJoints()
	end
	
	Handle.Massless = true
	Handle.Transparency = 0.5
	
	UsedAccessories[Accessory] = true
	
	local RightGrip = CreateRightGrip(Handle)
	
	wait()
	
	for _, Object in pairs(Handle:GetDescendants()) do
		if not Object:IsA("BasePart") then
			pcall(function()
				Object.Transparency = 1
			end)
			
			pcall(function()
				Object.Enabled = false
			end)
		end
	end
	
	return Handle, RightGrip, HatAtt, HeadAtt, BasePart;
end

local function GetHeadAccessories()
	for _, Accessory in next, Character:GetChildren() do
		if Accessory:IsA("Accessory") and not UsedAccessories[Accessory] then
			local Handle, RightGrip, HatAtt, HeadAtt, BasePart = CreateAccessory(Accessory)
			
			table.insert(HeadAccessories, {Handle, RightGrip, HatAtt, HeadAtt, BasePart})
			
			do
				Handle.Transparency = 1
			end
			
			if not WearAllAccessories then
				break
			end
		end
	end
end

--[[
	VR Replication Setup
--]]

if not RagdollEnabled then
	LeftHandle, LeftHandGrip = CreateAccessory(Character:FindFirstChild(AccessorySettings.LeftArm), AccessorySettings.BlockArms)
	RightHandle, RightHandGrip = CreateAccessory(Character:FindFirstChild(AccessorySettings.RightArm), AccessorySettings.BlockArms)
	LeftHipHandle, LeftLegGrip = CreateAccessory(Character:FindFirstChild(AccessorySettings.LeftLeg), AccessorySettings.BlockLegs)
	RightHipHandle, RightLegGrip = CreateAccessory(Character:FindFirstChild(AccessorySettings.RightLeg), AccessorySettings.BlockLegs)
	TorsoHandle, TorsoGrip = CreateAccessory(Character:FindFirstChild(AccessorySettings.Torso), AccessorySettings.BlockTorso)
	GetHeadAccessories()
	
elseif RagdollEnabled then
	if RagdollHeadMovement then
		Permadeath()
		MoveHead = CreateAlignment(Character["Head"])
	end
	
	MoveRightArm = CreateAlignment(Character["Right Arm"])
	MoveLeftArm = CreateAlignment(Character["Left Arm"])
	MoveRightLeg = CreateAlignment(Character["Right Leg"])
	MoveLeftLeg = CreateAlignment(Character["Left Leg"])
	MoveTorso = CreateAlignment(Character["Torso"])
	MoveRoot = CreateAlignment(Character.HumanoidRootPart)
	
	if RagdollHeadMovement then
		for _, Accessory in next, Character:GetChildren() do
			if Accessory:IsA("Accessory") and Accessory:FindFirstChild("Handle") then
				local Attachment1 = Accessory.Handle:FindFirstChildWhichIsA("Attachment")
				local Attachment0 = Character:FindFirstChild(tostring(Attachment1), true)
				
				local Orientation = Instance.new("AlignOrientation")
				local Position = Instance.new("AlignPosition")
				
				print(Attachment1, Attachment0, Accessory)
				
				Orientation.Attachment0 = Attachment1
				Orientation.Attachment1 = Attachment0
				Orientation.RigidityEnabled = false
				Orientation.ReactionTorqueEnabled = true
				Orientation.MaxTorque = 20000
				Orientation.Responsiveness = 40
				Orientation.Parent = Character.Head
				
				Position.Attachment0 = Attachment1
				Position.Attachment1 = Attachment0
				Position.RigidityEnabled = false
				Position.ReactionForceEnabled = true
				Position.MaxForce = 40000
				Position.Responsiveness = 40
				Position.Parent = Character.Head
			end
		end
	end
end

--[[
	Movement
--]]

VirtualRig.Name = "VirtualRig"
VirtualRig.RightFoot.BodyPosition.Position = CharacterCFrame.p
VirtualRig.LeftFoot.BodyPosition.Position = CharacterCFrame.p
VirtualRig.Parent = workspace
VirtualRig:SetPrimaryPartCFrame(CharacterCFrame)

VirtualRig.Humanoid.Health = 0
VirtualRig:BreakJoints()
--

VirtualBody.Parent = workspace
VirtualBody.Name = "VirtualBody"
VirtualBody.Humanoid.WalkSpeed = 8
VirtualBody.Humanoid.CameraOffset = Vector3.new(0, StudsOffset, 0)
VirtualBody:SetPrimaryPartCFrame(CharacterCFrame)

VirtualBody.Humanoid.Died:Connect(function()
	print("Virtual death")
	if AutoRespawn then
		Character:BreakJoints()
		
		if RagdollHeadMovement and RagdollEnabled then
			Network:Unclaim()
			Respawn()
		end
	end
end)
--

Camera.CameraSubject = VirtualBody.Humanoid

Character.Humanoid.WalkSpeed = 0
Character.Humanoid.JumpPower = 1

for _, Part in next, VirtualBody:GetChildren() do
	if Part:IsA("BasePart") then
		Part.Transparency = 1
	end
end

for _, Part in next, VirtualRig:GetChildren() do
	if Part:IsA("BasePart") then
		Part.Transparency = 1
	end
end

if not VRReady then
	VirtualRig.RightUpperArm.ShoulderConstraint.RigidityEnabled = true
	VirtualRig.LeftUpperArm.ShoulderConstraint.RigidityEnabled = true
end


local OnMoving = RunService.Stepped:Connect(function()
	local Direction = Character.Humanoid.MoveDirection
	local Start = VirtualBody.HumanoidRootPart.Position
	local Point = Start + Direction * 6
	
	VirtualBody.Humanoid:MoveTo(Point)
end)

Character.Humanoid.Jumping:Connect(function()
	VirtualBody.Humanoid.Jump = true
end)

UserInputService.JumpRequest:Connect(function()
	VirtualBody.Humanoid.Jump = true
end)

--[[
	VR Replication
--]]

if RagdollEnabled then
	for _, Part in pairs(Character:GetDescendants()) do
		if Part:IsA("BasePart") and Part.Name == "Handle" and Part.Parent:IsA("Accessory") then
			Part.LocalTransparencyModifier = 1
		elseif Part:IsA("BasePart") and Part.Transparency < 0.5 and Part.Name ~= "Head" then
			Part.LocalTransparencyModifier = 0.5
		elseif Part:IsA("BasePart") and Part.Name == "Head" then
			Part.LocalTransparencyModifier = 1
		end
		
		if not Part:IsA("BasePart") and not Part:IsA("AlignPosition") and not Part:IsA("AlignOrientation") then
			pcall(function()
				Part.Transparency = 1
			end)
			
			pcall(function()
				Part.Enabled = false
			end)
		end
	end
end

local FootUpdateDebounce = tick()

local function FloorRay(Part, Distance)
	local Position = Part.CFrame.p
	local Target = Position - Vector3.new(0, Distance, 0)
	local Line = Ray.new(Position, (Target - Position).Unit * Distance)
	
	local FloorPart, FloorPosition, FloorNormal = workspace:FindPartOnRayWithIgnoreList(Line, {VirtualRig, VirtualBody, Character})
	
	if FloorPart then
		return FloorPart, FloorPosition, FloorNormal, (FloorPosition - Position).Magnitude
	else
		return nil, Target, Vector3.new(), Distance
	end
end

local function Flatten(CF)
	local X,Y,Z = CF.X,CF.Y,CF.Z
	local LX,LZ = CF.lookVector.X,CF.lookVector.Z
	
	return CFrame.new(X,Y,Z) * CFrame.Angles(0,math.atan2(LX,LZ),0)
end

local FootTurn = 1

local function FootReady(Foot, Target)
	local MaxDist
	
	if Character.Humanoid.MoveDirection.Magnitude > 0 then
		MaxDist = .5
	else
		MaxDist = 1
	end
	
	local PastThreshold = (Foot.Position - Target.Position).Magnitude > MaxDist
	local PastTick = tick() - FootUpdateDebounce >= 2
	
	if PastThreshold or PastTick then
		FootUpdateDebounce = tick()
	end
	
	return
		PastThreshold
	or
		PastTick
end

local function FootYield()
	local RightFooting = VirtualRig.RightFoot.BodyPosition
	local LeftFooting = VirtualRig.LeftFoot.BodyPosition
	local LowerTorso = VirtualRig.LowerTorso
	
	local Yield = tick()
	
	repeat
		RunService.Stepped:Wait()
		if
			(LowerTorso.Position - RightFooting.Position).Y > 4
		or
			(LowerTorso.Position - LeftFooting.Position).Y > 4
		or
			((LowerTorso.Position - RightFooting.Position) * Vector3.new(1, 0, 1)).Magnitude > 4
		or
			((LowerTorso.Position - LeftFooting.Position) * Vector3.new(1, 0, 1)).Magnitude > 4
		then
			break
		end
	until tick() - Yield >= .17
end

local function UpdateFooting()
	if not VirtualRig:FindFirstChild("LowerTorso") then
		wait()
		return
	end
	
	local Floor, FloorPosition, FloorNormal, Dist = FloorRay(VirtualRig.LowerTorso, 3)
	
	Dist = math.clamp(Dist, 0, 5)
	
	local FootTarget = 
		VirtualRig.LowerTorso.CFrame *
		CFrame.new(FootPlacementSettings.RightOffset) -
		Vector3.new(0, Dist, 0) +
		Character.Humanoid.MoveDirection * (VirtualBody.Humanoid.WalkSpeed / 8) * 2
	
	if FootReady(VirtualRig.RightFoot, FootTarget) then
		VirtualRig.RightFoot.BodyPosition.Position = FootTarget.p
		VirtualRig.RightFoot.BodyGyro.CFrame = Flatten(VirtualRig.LowerTorso.CFrame)
	end
	
	FootYield()
	
	local FootTarget = 
		VirtualRig.LowerTorso.CFrame *
		CFrame.new(FootPlacementSettings.LeftOffset) -
		Vector3.new(0, Dist, 0) +
		Character.Humanoid.MoveDirection * (VirtualBody.Humanoid.WalkSpeed / 8) * 2
	
	if FootReady(VirtualRig.LeftFoot, FootTarget) then
		VirtualRig.LeftFoot.BodyPosition.Position = FootTarget.p
		VirtualRig.LeftFoot.BodyGyro.CFrame = Flatten(VirtualRig.LowerTorso.CFrame)
	end
end

local function UpdateTorsoPosition()
	if not RagdollEnabled then
		if TorsoHandle then
			local Positioning = VirtualRig.UpperTorso.CFrame
			
			if not TorsoGrip or not TorsoGrip.Parent then
				TorsoGrip = CreateRightGrip(TorsoHandle)
			end
			
			local Parent = TorsoGrip.Parent
			
			TorsoGrip.C1 = CFrame.new()
			TorsoGrip.C0 = TorsoGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(Positioning * CFrame.new(0, -0.25, 0) * AccessorySettings.LimbOffset), Smoothness)
			TorsoGrip.Parent = nil
			TorsoGrip.Parent = Parent
		end
	else
		local Positioning = VirtualRig.UpperTorso.CFrame
		
		MoveTorso(Positioning * CFrame.new(0, -0.25, 0))
		MoveRoot(Positioning * CFrame.new(0, -0.25, 0))
	end
end

local function UpdateLegPosition()
	if not RagdollEnabled then
		if RightHipHandle then
			local Positioning =
				VirtualRig.RightLowerLeg.CFrame
				: Lerp(VirtualRig.RightFoot.CFrame, 0.5)
				+ Vector3.new(0, 0.5, 0)
			
			if not RightHipHandle or not RightHipHandle.Parent then
				RightLegGrip = CreateRightGrip(RightHipHandle)
			end
			
			local Parent = RightLegGrip.Parent
			
			RightLegGrip.C1 = CFrame.new()
			RightLegGrip.C0 = RightLegGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(Positioning * AccessorySettings.LimbOffset), Smoothness)
			RightLegGrip.Parent = nil
			RightLegGrip.Parent = Parent
		end
		
		if LeftHipHandle then
			local Positioning =
				VirtualRig.LeftLowerLeg.CFrame
				: Lerp(VirtualRig.LeftFoot.CFrame, 0.5)
				+ Vector3.new(0, 0.5, 0)
			
			if not LeftLegGrip or not LeftLegGrip.Parent then
				LeftLegGrip = CreateRightGrip(LeftHipHandle)
			end
			
			local Parent = LeftLegGrip.Parent
			
			LeftLegGrip.C1 = CFrame.new()
			LeftLegGrip.C0 = LeftLegGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(Positioning * AccessorySettings.LimbOffset), Smoothness)
			LeftLegGrip.Parent = nil
			LeftLegGrip.Parent = Parent
		end
	else
		do
			local Positioning =
				VirtualRig.RightLowerLeg.CFrame
				: Lerp(VirtualRig.RightFoot.CFrame, 0.5)
				* CFrame.Angles(0, math.rad(180), 0)
				+ Vector3.new(0, 0.5, 0)
			
			MoveRightLeg(Positioning)
		end
		
		do
			local Positioning =
				VirtualRig.LeftLowerLeg.CFrame
				: Lerp(VirtualRig.LeftFoot.CFrame, 0.5)
				* CFrame.Angles(0, math.rad(180), 0)
				+ Vector3.new(0, 0.5, 0)
			
			MoveLeftLeg(Positioning)
		end
	end
end

warn("VRReady is", VRReady)

local function OnUserCFrameChanged(UserCFrame, Positioning, IgnoreTorso)
	local Positioning = Camera.CFrame * Positioning
	
	if not IgnoreTorso then
		UpdateTorsoPosition()
		UpdateLegPosition()
	end
	
	if not RagdollEnabled then
		if UserCFrame == Enum.UserCFrame.Head and AccessorySettings.Head then
			for _, Table in next, HeadAccessories do
				local Handle, RightGrip, HatAtt, HeadAtt, BasePart = unpack(Table)
				local LocalPositioning = Positioning
				
				if not RightGrip or not RightGrip.Parent then
					RightGrip = CreateRightGrip(Handle)
					Table[2] = RightGrip
				end
				
				local Parent = RightGrip.Parent
				
				if BasePart then
					LocalPositioning = BasePart.CFrame * HeadAtt
				end
				
				RightGrip.C1 = HatAtt
				RightGrip.C0 = RightGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(LocalPositioning), Smoothness)
				RightGrip.Parent = nil
				RightGrip.Parent = Parent
			end
			
		elseif RightHandle and UserCFrame == Enum.UserCFrame.RightHand and AccessorySettings.RightArm then
			local HandPosition = Positioning
			local LocalPositioning = Positioning
			
			if not RightHandGrip or not RightHandGrip.Parent then
				RightHandGrip = CreateRightGrip(RightHandle)
			end
			
			if AccurateHandPosition then
				HandPosition = HandPosition * CFrame.new(0, 0, 1)
			end
			
			if not VRReady then
				local HeadRotation = Camera.CFrame - Camera.CFrame.p
				
				HandPosition = VirtualRig.RightUpperArm.CFrame:Lerp(VirtualRig.RightLowerArm.CFrame, 0.5) * AccessorySettings.LimbOffset
				
				--LocalPositioning = (HeadRotation + (HandPosition * CFrame.new(0, 0, 1)).p) * CFrame.Angles(math.rad(-45), 0, 0)
				LocalPositioning = HandPosition * CFrame.new(0, 0, 1) * CFrame.Angles(math.rad(-180), 0, 0)
				
				if Point2 then
					VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
					VirtualRig.RightUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
				elseif VirtualRig.RightUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
					VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
				end
			elseif AccurateHandPosition then
				LocalPositioning = HandPosition
			end
			
			local Parent = RightHandGrip.Parent
			
			RightHandGrip.C1 = CFrame.new()
			RightHandGrip.C0 = RightHandGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(HandPosition), Smoothness)
			RightHandGrip.Parent = nil
			RightHandGrip.Parent = Parent
			
			--
			
			local EquippedTool = GetExtraTool()
			
			if EquippedTool and EquippedTool:FindFirstChild("Handle") then
				local EquippedGrip = GetGripForHandle(EquippedTool.Handle)
				local Parent = EquippedGrip.Parent
				
				local ArmBaseCFrame = ArmBase.CFrame
				if ArmBase.Name == "Right Arm" then
					ArmBaseCFrame = ArmBaseCFrame
				end
				
				EquippedGrip.C1 = EquippedTool.Grip
				EquippedGrip.C0 = EquippedGrip.C0:Lerp(ArmBaseCFrame:ToObjectSpace(LocalPositioning), Smoothness)
				EquippedGrip.Parent = nil
				EquippedGrip.Parent = Parent
			end
			
		elseif LeftHandle and UserCFrame == Enum.UserCFrame.LeftHand and AccessorySettings.LeftArm then
			local HandPosition = Positioning
			
			if not LeftHandGrip or not LeftHandGrip.Parent then
				LeftHandGrip = CreateRightGrip(LeftHandle)
			end
			
			if AccurateHandPosition then
				HandPosition = HandPosition * CFrame.new(0, 0, 1)
			end
			
			if not VRReady then
				HandPosition = VirtualRig.LeftUpperArm.CFrame:Lerp(VirtualRig.LeftLowerArm.CFrame, 0.5) * AccessorySettings.LimbOffset
				--warn("Setting HandPosition to hands")
				if Point1 then
					VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
					VirtualRig.LeftUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
				elseif VirtualRig.LeftUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
					VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
				end
			end
			
			local Parent = LeftHandGrip.Parent
			
			LeftHandGrip.C1 = CFrame.new()
			LeftHandGrip.C0 = LeftHandGrip.C0:Lerp(WeldBase.CFrame:ToObjectSpace(HandPosition), Smoothness)
			LeftHandGrip.Parent = nil
			LeftHandGrip.Parent = Parent
			
		end
	end
	
	if RagdollEnabled then
		if UserCFrame == Enum.UserCFrame.Head and RagdollHeadMovement then
			MoveHead(Positioning)
		elseif UserCFrame == Enum.UserCFrame.RightHand then
			local Positioning = Positioning
			
			if not VRReady then
				Positioning = VirtualRig.RightUpperArm.CFrame:Lerp(VirtualRig.RightLowerArm.CFrame, 0.5)
			elseif AccurateHandPosition then
				Positioning = Positioning * CFrame.new(0, 0, 1)
			end
			
			if VRReady then
				Positioning = Positioning * AccessorySettings.LimbOffset
			end
			
			MoveRightArm(Positioning)
			
			if Point2 then
				VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
				VirtualRig.RightUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
			elseif VirtualRig.RightUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
				VirtualRig.RightUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
			end
		elseif UserCFrame == Enum.UserCFrame.LeftHand then
			local Positioning = Positioning
			
			if not VRReady then
				Positioning = VirtualRig.LeftUpperArm.CFrame:Lerp(VirtualRig.LeftLowerArm.CFrame, 0.5)
			elseif AccurateHandPosition then
				Positioning = Positioning * CFrame.new(0, 0, 1)
			end
			
			if VRReady then
				Positioning = Positioning * AccessorySettings.LimbOffset
			end
			
			MoveLeftArm(Positioning)
			
			if Point1 then
				VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
				VirtualRig.LeftUpperArm.Aim.CFrame = Camera.CFrame * AccessorySettings.LimbOffset
			elseif VirtualRig.LeftUpperArm.Aim.MaxTorque ~= Vector3.new(0, 0, 0) then
				VirtualRig.LeftUpperArm.Aim.MaxTorque = Vector3.new(0, 0, 0)
			end
		end
	end
	
	if UserCFrame == Enum.UserCFrame.Head then
		VirtualRig.Head.CFrame = Positioning
		
	elseif UserCFrame == Enum.UserCFrame.RightHand and VRReady then
		VirtualRig.RightHand.CFrame = Positioning
		
	elseif UserCFrame == Enum.UserCFrame.LeftHand and VRReady then
		VirtualRig.LeftHand.CFrame = Positioning
		
	end
	
	if not VRReady and VirtualRig.LeftHand.Anchored then
		VirtualRig.RightHand.Anchored = false
		VirtualRig.LeftHand.Anchored = false
	elseif VRReady and not VirtualRig.LeftHand.Anchored then
		VirtualRig.RightHand.Anchored = true
		VirtualRig.LeftHand.Anchored = true
	end
end

local CFrameChanged = VRService.UserCFrameChanged:Connect(OnUserCFrameChanged)

local OnStepped = RunService.Stepped:Connect(function()
	for _, Part in pairs(VirtualRig:GetChildren()) do
		if Part:IsA("BasePart") then
			Part.CanCollide = false
		end
	end
	
	if RagdollEnabled then
		for _, Part in pairs(Character:GetChildren()) do
			if Part:IsA("BasePart") then
				Part.CanCollide = false
			end
		end
	end
	
	if NoCollision then
		for _, Player in pairs(Players:GetPlayers()) do
			if Player ~= Client and Player.Character then
				local Descendants = Player.Character:GetDescendants()
				for i = 1, #Descendants do
					local Part = Descendants[i]
					if Part:IsA("BasePart") then
						Part.CanCollide = false
						Part.Velocity = Vector3.new()
						Part.RotVelocity = Vector3.new()
					end
				end
			end
		end
	end
end)

local OnRenderStepped = RunService.Stepped:Connect(function()
	Camera.CameraSubject = VirtualBody.Humanoid
	
	if RagdollEnabled then
		Character.HumanoidRootPart.CFrame = VirtualRig.UpperTorso.CFrame
		Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
	end
	
	if not VRReady then
		OnUserCFrameChanged(Enum.UserCFrame.Head, CFrame.new(0, 0, 0))
		
		OnUserCFrameChanged(Enum.UserCFrame.RightHand, CFrame.new(0, 0, 0), true)
		OnUserCFrameChanged(Enum.UserCFrame.LeftHand, CFrame.new(0, 0, 0), true)
	end
end)

spawn(function()
	while Character and Character.Parent do
		FootYield()
		UpdateFooting()
	end
end)

--[[
	Non-VR Support + VR Mechanics
--]]

local OnInput = UserInputService.InputBegan:Connect(function(Input, Processed)
	if not Processed then
		if Input.KeyCode == Enum.KeyCode.LeftControl or Input.KeyCode == Enum.KeyCode.ButtonL2 then
			Tween(VirtualBody.Humanoid, "Elastic", "Out", 1, {
				CameraOffset = Vector3.new(0, StudsOffset - 1.5, 0)
			})
		end
	
		if Input.KeyCode == Enum.KeyCode.X then
			if RagdollEnabled and RagdollHeadMovement then
				Network:Unclaim()
				Respawn()
			end
		end
		
		if Input.KeyCode == Enum.KeyCode.C then
			VirtualBody:MoveTo(Mouse.Hit.p)
			VirtualRig:MoveTo(Mouse.Hit.p)
		end
	end
		
	if Input.KeyCode == Enum.KeyCode.LeftShift or Input.KeyCode == Enum.KeyCode.ButtonR2 then
		Tween(VirtualBody.Humanoid, "Sine", "Out", 1, {
			WalkSpeed = 16
		})
	end
	
	if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton1 then
		Point1 = true
	end
	
	if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton2 then
		Point2 = true
	end
	
	if VRReady and Input.KeyCode == Enum.KeyCode.ButtonY then
		Character:BreakJoints()
		
		if RagdollEnabled and RagdollHeadMovement then
			Network:Unclaim()
			Respawn()
		end
	end
end)

local OnInputEnded = UserInputService.InputEnded:Connect(function(Input, Processed)
	if not Processed then
		if Input.KeyCode == Enum.KeyCode.LeftControl or Input.KeyCode == Enum.KeyCode.ButtonL2 then
			Tween(VirtualBody.Humanoid, "Elastic", "Out", 1, {
				CameraOffset = Vector3.new(0, StudsOffset, 0)
			})
		end
	end
		
	if Input.KeyCode == Enum.KeyCode.LeftShift or Input.KeyCode == Enum.KeyCode.ButtonR2 then
		Tween(VirtualBody.Humanoid, "Sine", "Out", 1, {
			WalkSpeed = 8
		})
	end
	
	if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton1 then
		Point1 = false
	end
	
	if not VRReady and Input.UserInputType == Enum.UserInputType.MouseButton2 then
		Point2 = false
	end
end)

--[[
	Proper Cleanup
--]]

local OnReset

OnReset = Client.CharacterAdded:Connect(function()
	OnReset:Disconnect();
	CFrameChanged:Disconnect();
	OnStepped:Disconnect();
	OnRenderStepped:Disconnect();
	OnMoving:Disconnect();
	OnInput:Disconnect();
	OnInputEnded:Disconnect();
	
	VirtualRig:Destroy();
	VirtualBody:Destroy();
	
	if RagdollEnabled then
		Network:Unclaim();
	end
	
	if AutoRun then
		delay(2, function()
			Script()
		end)
	end
end)

if ChatEnabled then
	spawn(ChatHUDFunc)
end

if ViewportEnabled then
	spawn(ViewHUDFunc)
end

do
	--[[
		Functions
	--]]
	
	local Players = game:GetService("Players")
	 local Client = Players.LocalPlayer
	
	local VRService = game:GetService("VRService")
	 local VRReady = VRService.VREnabled
	
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	
	local Camera = workspace.CurrentCamera
	
	--[[
		Code
	--]]
	
	if VRReady then
		local Pointer = game:GetObjects("rbxassetid://4476173280")[1]
		
		Pointer.Parent = workspace
		Pointer.Beam.Enabled = false
		Pointer.Target.ParticleEmitter.Enabled = false
		
		local RenderStepped = RunService.RenderStepped:Connect(function()
			if Pointer.Beam.Enabled then
				local RightHand = Camera.CFrame * VRService:GetUserCFrame(Enum.UserCFrame.RightHand)
				local Target = RightHand * CFrame.new(0, 0, -10)
				
				local Line = Ray.new(RightHand.p, (Target.p - RightHand.p).Unit * 128)
				local Part, Position = workspace:FindPartOnRayWithIgnoreList(Line, {VirtualRig, VirtualBody, Character, Pointer})
				
				local Distance = (Position - RightHand.p).Magnitude
				
				Pointer.Target.Position = Vector3.new(0, 0, -Distance)
				Pointer.CFrame = RightHand
			end
		end)
		
		local Input = UserInputService.InputBegan:Connect(function(Input)
			if Input.KeyCode == Enum.KeyCode.ButtonB then
				Pointer.Beam.Enabled = not Pointer.Beam.Enabled
				Pointer.Target.ParticleEmitter.Enabled = not Pointer.Target.ParticleEmitter.Enabled
			end
		end)
		
		--
		
		local CharacterAdded
		
		CharacterAdded = Client.CharacterAdded:Connect(function()
			RenderStepped:Disconnect()
			Input:Disconnect()
			CharacterAdded:Disconnect()
			
			Pointer:Destroy()
			Pointer = nil
		end)
	else
		return
	end
end

end;

Permadeath = function()
	local ch = game.Players.LocalPlayer.Character
	local prt=Instance.new("Model", workspace)
	local z1 =  Instance.new("Part", prt)
	z1.Name="Torso"
	z1.CanCollide = false
	z1.Anchored = true
	local z2  =Instance.new("Part", prt)
	z2.Name="Head"
	z2.Anchored = true
	z2.CanCollide = false
	local z3 =Instance.new("Humanoid", prt)
	z3.Name="Humanoid"
	z1.Position = Vector3.new(0,9999,0)
	z2.Position = Vector3.new(0,9991,0)
	game.Players.LocalPlayer.Character=prt
	wait(5)
	warn("50%")
	game.Players.LocalPlayer.Character=ch
	wait(6)
	warn("100%")
end;

Respawn = function()
	local ch = game.Players.LocalPlayer.Character
	
	local prt=Instance.new("Model", workspace)
	local z1 =  Instance.new("Part", prt)
	z1.Name="Torso"
	z1.CanCollide = false
	z1.Anchored = true
	local z2  =Instance.new("Part", prt)
	z2.Name="Head"
	z2.Anchored = true
	z2.CanCollide = false
	local z3 =Instance.new("Humanoid", prt)
	z3.Name="Humanoid"
	z1.Position = Vector3.new(0,9999,0)
	z2.Position = Vector3.new(0,9991,0)
	game.Players.LocalPlayer.Character=prt
	wait(5)
	game.Players.LocalPlayer.Character=ch
end;

ChatHUDFunc = function()
	--[[
		Variables
	--]]
	
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	
	local VRService = game:GetService("VRService")
	 local VRReady = VRService.VREnabled
	
	local Players = game:GetService("Players")
	 local Client = Players.LocalPlayer
	
	local ChatHUD = game:GetObjects("rbxassetid://4476067885")[1]
	 local GlobalFrame = ChatHUD.GlobalFrame
	  local Template = GlobalFrame.Template
	 local LocalFrame = ChatHUD.LocalFrame
	 local Global = ChatHUD.Global
	 local Local = ChatHUD.Local
	
	local Camera = workspace.CurrentCamera
	
	Template.Parent = nil
	ChatHUD.Parent = game:GetService("CoreGui")
	
	--[[
		Code
	--]]
	
	local Highlight = Global.Frame.BackgroundColor3
	local Deselected = Local.Frame.BackgroundColor3
	
	local OpenGlobalTab = function()
		Global.Frame.BackgroundColor3 = Highlight
		Local.Frame.BackgroundColor3 = Deselected
		
		Global.Font = Enum.Font.SourceSansBold
		Local.Font = Enum.Font.SourceSans
		
		GlobalFrame.Visible = true
		LocalFrame.Visible = false
	end
	
	local OpenLocalTab = function()
		Global.Frame.BackgroundColor3 = Deselected
		Local.Frame.BackgroundColor3 = Highlight
		
		Global.Font = Enum.Font.SourceSans
		Local.Font = Enum.Font.SourceSansBold
		
		GlobalFrame.Visible = false
		LocalFrame.Visible = true
	end
	
	Global.MouseButton1Down:Connect(OpenGlobalTab)
	Local.MouseButton1Down:Connect(OpenLocalTab)
	Global.MouseButton1Click:Connect(OpenGlobalTab)
	Local.MouseButton1Click:Connect(OpenLocalTab)
	
	OpenLocalTab()
	
	--
	
	local function GetPlayerDistance(Sender)
		if Sender.Character and Sender.Character:FindFirstChild("Head") then
			return math.floor((Sender.Character.Head.Position - Camera:GetRenderCFrame().p).Magnitude + 0.5)
		end
	end
	
	local function NewGlobal(Message, Sender, Color)
		local Frame = Template:Clone()
		
		Frame.Text = ("[%s]: %s"):format(Sender.Name, Message)
		Frame.User.Text = ("[%s]:"):format(Sender.Name)
		Frame.User.TextColor3 = Color
		Frame.BackgroundColor3 = Color
		Frame.Parent = GlobalFrame
		
		delay(60, function()
			Frame:Destroy()
		end)
	end
	
	local function NewLocal(Message, Sender, Color, Dist)
		local Frame = Template:Clone()
		
		Frame.Text = ("(%s) [%s]: %s"):format(tostring(Dist), Sender.Name, Message)
		Frame.User.Text = ("(%s) [%s]:"):format(tostring(Dist), Sender.Name)
		Frame.User.TextColor3 = Color
		Frame.BackgroundColor3 = Color
		Frame.Parent = LocalFrame
		
		delay(60, function()
			Frame:Destroy()
		end)
	end
	
	local function OnNewChat(Message, Sender, Color)
		if not ChatHUD or not ChatHUD.Parent then return end
		
		NewGlobal(Message, Sender, Color)
		
		local Distance = GetPlayerDistance(Sender)
		
		if Distance and Distance <= ChatLocalRange then
			NewLocal(Message, Sender, Color, Distance)
		end
	end
	
	local function OnPlayerAdded(Player)
		if not ChatHUD or not ChatHUD.Parent then return end
		
		local Color = BrickColor.Random().Color
		
		Player.Chatted:Connect(function(Message)
			OnNewChat(Message, Player, Color)
		end)
	end
	
	Players.PlayerAdded:Connect(OnPlayerAdded)
	
	for _, Player in pairs(Players:GetPlayers()) do
		OnPlayerAdded(Player)
	end
	
	--
	
	local ChatPart = ChatHUD.Part
	
	ChatHUD.Adornee = ChatPart
	
	if VRReady then
		ChatHUD.Parent = game:GetService("CoreGui")
		ChatHUD.Enabled = true
		ChatHUD.AlwaysOnTop = true
		
		local OnInput = UserInputService.InputBegan:Connect(function(Input, Processed)
			if not Processed then
				if Input.KeyCode == Enum.KeyCode.ButtonX then
					ChatHUD.Enabled = not ChatHUD.Enabled
				end
			end
		end)
		
		local RenderStepped = RunService.RenderStepped:Connect(function()
			local LeftHand = VRService:GetUserCFrame(Enum.UserCFrame.LeftHand)
			
			ChatPart.CFrame = Camera.CFrame * LeftHand
		end)
		
		local CharacterAdded
		
		CharacterAdded = Client.CharacterAdded:Connect(function()
			OnInput:Disconnect()
			RenderStepped:Disconnect()
			CharacterAdded:Disconnect()
			
			ChatHUD:Destroy()
			ChatHUD = nil
		end)
	end
	
	wait(9e9)
end;

ViewHUDFunc = function()
	--[[
		Variables
	--]]
	
	local ViewportRange = ViewportRange or 32
	
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	
	local VRService = game:GetService("VRService")
	 local VRReady = VRService.VREnabled
	
	local Players = game:GetService("Players")
	 local Client = Players.LocalPlayer
	  local Mouse = Client:GetMouse()
	
	local Camera = workspace.CurrentCamera
	 local CameraPort = Camera.CFrame
	
	local ViewHUD = script:FindFirstChild("ViewHUD") or game:GetObjects("rbxassetid://4480405425")[1]
	 local Viewport = ViewHUD.Viewport
	  local Viewcam = Instance.new("Camera")
	 local ViewPart = ViewHUD.Part
	
	ViewHUD.Parent = game:GetService("CoreGui")
	
	Viewcam.Parent = Viewport
	Viewcam.CameraType = Enum.CameraType.Scriptable
	Viewport.CurrentCamera = Viewcam
	Viewport.BackgroundTransparency = 1
	
	--[[
		Code
	--]]
	
	local function Clone(Character)
		local Arc = Character.Archivable
		local Clone;
		
		Character.Archivable = true
		Clone = Character:Clone()
		Character.Archivable = Arc
		
		return Clone
	end
	
	local function GetPart(Name, Parent, Descendants)
		for i = 1, #Descendants do
			local Part = Descendants[i]
			
			if Part.Name == Name and Part.Parent.Name == Parent then
				return Part
			end
		end
	end
	
	local function OnPlayerAdded(Player)
		if not ViewHUD or not ViewHUD.Parent then return end
		
		local function CharacterAdded(Character)
			if not ViewHUD or not ViewHUD.Parent then return end
			
			Character:WaitForChild("Head")
			Character:WaitForChild("Humanoid")
			
			wait(3)
			
			local FakeChar = Clone(Character)
			local Root = FakeChar:FindFirstChild("HumanoidRootPart") or FakeChar:FindFirstChild("Head")
			local RenderConnection;
			
			local Descendants = FakeChar:GetDescendants()
			local RealDescendants = Character:GetDescendants()
			local Correspondents = {};
			
			FakeChar.Humanoid.DisplayDistanceType = "None"
			
			for i = 1, #Descendants do
				local Part = Descendants[i]
				local Real = Part:IsA("BasePart") and GetPart(Part.Name, Part.Parent.Name, RealDescendants)
				
				if Part:IsA("BasePart") and Real then
					Part.Anchored = true
					Part:BreakJoints()
					
					if Part.Parent:IsA("Accessory") then
						Part.Transparency = 0
					end
					
					table.insert(Correspondents, {Part, Real})
				end
			end
			
			RenderConnection = RunService.RenderStepped:Connect(function()
				if not Character or not Character.Parent then
					RenderConnection:Disconnect()
					FakeChar:Destroy()
					
					return
				end
				
				if (Root and (Root.Position - Camera.CFrame.p).Magnitude <= ViewportRange) or Player == Client or not Root then
					for i = 1, #Correspondents do
						local Part, Real = unpack(Correspondents[i])
						
						if Part and Real and Part.Parent and Real.Parent then
							Part.CFrame = Real.CFrame
						elseif Part.Parent and not Real.Parent then
							Part:Destroy()
						end
					end
				end
			end)
			
			FakeChar.Parent = Viewcam
		end
		
		Player.CharacterAdded:Connect(CharacterAdded)
		
		if Player.Character then
			spawn(function()
				CharacterAdded(Player.Character)
			end)
		end
	end
	
	local PlayerAdded = Players.PlayerAdded:Connect(OnPlayerAdded)
	
	for _, Player in pairs(Players:GetPlayers()) do
		OnPlayerAdded(Player)
	end
	
	ViewPart.Size = Vector3.new()
	
	if VRReady then
		Viewport.Position = UDim2.new(.62, 0, .89, 0)
		Viewport.Size = UDim2.new(.3, 0, .3, 0)
		Viewport.AnchorPoint = Vector2.new(.5, 1)
	else
		Viewport.Size = UDim2.new(0.3, 0, 0.3, 0)
	end
	
	local RenderStepped = RunService.RenderStepped:Connect(function()
		local Render = Camera.CFrame
		local Scale = Camera.ViewportSize
		
		if VRReady then
			Render = Render * VRService:GetUserCFrame(Enum.UserCFrame.Head)
		end
		
		CameraPort = CFrame.new(Render.p + Vector3.new(5, 2, 0), Render.p)
		
		Viewport.Camera.CFrame = CameraPort
		
		ViewPart.CFrame = Render * CFrame.new(0, 0, -16)
		
		ViewHUD.Size = UDim2.new(0, Scale.X - 6, 0, Scale.Y - 6)
	end)
		
	--
	
	local CharacterAdded
	
	CharacterAdded = Client.CharacterAdded:Connect(function()
		RenderStepped:Disconnect()
		CharacterAdded:Disconnect()
		PlayerAdded:Disconnect()
		
		ViewHUD:Destroy()
		ViewHUD = nil
	end)
	
	wait(9e9)
end;

Script()

wait(9e9)