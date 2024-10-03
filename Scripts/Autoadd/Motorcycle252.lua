

--[[ Credits:
// Melon - made the rushed bullet thing, fixed and aligned
^ this is where the term reconvert becomes useful lol
// DOZZY DozZza (on YT) - original convert for this
// Emper - created the reanimate used in this script
// MyWorld - optimized empers reanimate

Paid Rig:
 https://www.roblox.com/catalog/14768701869/White-Extended-Left-Arm
  https://www.roblox.com/catalog/14255554762/Extra-Left-White-Arm
    https://www.roblox.com/catalog/14768693948/White-Extended-Right-Arm
     https://www.roblox.com/catalog/14255556501/Extra-Right-White-Arm
      https://www.roblox.com/catalog/14255528083/Torso-Extension
 
Can also be used:
 https://www.roblox.com/catalog/12344545199/Extra-Left-hand-moving-Blocky-white
  https://www.roblox.com/catalog/12344591101/Extra-Right-hand-moving-Blocky-white
   https://www.roblox.com/catalog/13779879140/Black-Fluffy-Fur-Body
    https://www.roblox.com/catalog/17374846953/Extra-Right-Black-Arm
     https://www.roblox.com/catalog/17374851733/Extra-Left-Black-Arm 

Weapons:
 https://www.roblox.com/catalog/14890554305/Green-Rocket-Launcher
  https://www.roblox.com/catalog/15008433643/Slug-Rifle-Red
   https://www.roblox.com/catalog/17465366506/Black-Rider-Motorcycle

Optional Bullet:
 https://www.roblox.com/catalog/4504231783/Elemental-Crystal-Golem-Shoulder-Rock

feel to edit this just pls leave the credits ty ty
]]

local BulletStuff = {
	Speed = 0.155, -- 0.145 Recommended, anything lower might make the bullet spasm
	AttachedTo = "Arm", -- Motor or Arm
}

function Reanimate()
	local OptionsAccessories = nil
	local OptionsRigTransparency = nil
	local OptionsRigR15 = nil
	local OptionsRigSetHumanoidDescription = nil
	local OptionsRigSetCharacter = nil
	local OptionsTeleportXandZoffset = nil
	local OptionsTeleportYoffset = nil
	local OptionsDisableScripts = nil
	local OptionsDisableScreenGUIs = nil
	local OptionsFlingEnabled = nil
	local OptionsFlingToolFling = nil
	local OptionsFlingTimeout = nil
	local OptionsFlingVelocity = nil
	local OptionsFlingHighlightTargets = nil

	local BindableEvent = nil
	local Boolean = false
	local Humanoid = nil
	local Rig = nil
	local RigHumanoid = nil
	local RigHumanoidRootPart = nil
	local Success = false
	local Time = nil
	local DeltaTime = nil
	local LastTime = nil

	local Attachments = { }
	local BaseParts = { }
	local Blacklist = { }
	local Enableds = { }
	local Handles = { }
	local Highlights = { }
	local RBXScriptConnections = { }
	local RigAccessories = { }
	local Tables = { }
	local Targets = { }

	local CFrame = CFrame
	local CFrameAngles = CFrame.Angles
	local CFrameidentity = CFrame.identity
	local CFramenew = CFrame.new

	local coroutine = coroutine
	local coroutinecreate = coroutine.create
	local coroutineclose = coroutine.close
	local coroutineresume = coroutine.resume

	local Enum = Enum
	local HumanoidStateType = Enum.HumanoidStateType
	local Physics = HumanoidStateType.Physics
	local Running = HumanoidStateType.Running
	local Track = Enum.CameraType.Track
	local UserInputType = Enum.UserInputType
	local MouseButton1 = UserInputType.MouseButton1
	local Touch = UserInputType.Touch

	local game = game
	local Clone = game.Clone
	local Destroy = game.Destroy
	local FindFirstAncestorOfClass = game.FindFirstAncestorOfClass
	local FindFirstChildOfClass = game.FindFirstChildOfClass
	local GetPropertyChangedSignal = game.GetPropertyChangedSignal
	local GetChildren = game.GetChildren
	local GetDescendants = game.GetDescendants
	local IsA = game.IsA
	local Players = FindFirstChildOfClass(game, "Players")
	local CreateHumanoidModelFromUserId = Players.CreateHumanoidModelFromUserId
	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()
	local RunService = FindFirstChildOfClass(game, "RunService")
	local PostSimulation = RunService.PostSimulation
	local PreRender = RunService.PreRender
	local PreSimulation = RunService.PreSimulation
	local Connect = PostSimulation.Connect
	local Disconnect = Connect(GetPropertyChangedSignal(game, "Parent"), function() end).Disconnect
	local Wait = PostSimulation.Wait
	local StarterGui = FindFirstChildOfClass(game, "StarterGui")
	local SetCore = StarterGui.SetCore
	local UserInputService = FindFirstChildOfClass(game, "UserInputService")
	local IsMouseButtonPressed = UserInputService.IsMouseButtonPressed
	local Workspace = FindFirstChildOfClass(game, "Workspace")
	local CurrentCamera = Workspace.CurrentCamera

	local Instancenew = Instance.new
	local Humanoid = Instancenew("Humanoid")
	local ApplyDescription = Humanoid.ApplyDescription
	local ChangeState = Humanoid.ChangeState
	local GetAppliedDescription = Humanoid.GetAppliedDescription
	local Move = Humanoid.Move
	Destroy(Humanoid)
	local Part = Instancenew("Part")
	local GetJoints = Part.GetJoints
	Destroy(Part)

	local math = math
	local mathabs = math.abs
	local mathrandom = math.random
	local mathsin = math.sin

	local osclock = os.clock

	local pairs = pairs
	local pcall = pcall

	local script = script

	local string = string
	local stringchar = string.char
	local stringfind = string.find
	local stringrep = string.rep

	local table = table
	local tableclear = table.clear
	local tablefind = table.find
	local tableinsert = table.insert
	local tableremove = table.remove

	local task = task
	local taskdefer = task.defer
	local taskdelay = task.delay
	local taskspawn = task.spawn
	local taskwait = task.wait

	local sethiddenproperty = sethiddenproperty or function() end

	local type = type
	local typeof = typeof

	local Vector3 = Vector3
	local Vector3new = Vector3.new
	local Vector3yAxis = Vector3.yAxis
	local Vector3zero = Vector3.zero

	local CameraCFrame = CFrameidentity

	local LimbSize = Vector3new(1, 2, 1)
	local TorsoSize = Vector3new(2, 2, 1)

	local function BreakJoints(Parent)
		for _, Instance in pairs(GetDescendants(Parent)) do
			if IsA(Instance, "JointInstance") then
				Destroy(Instance)
			end
		end
	end

	local function CameraSubject()
		CurrentCamera.CameraSubject = RigHumanoid
		Wait(PreRender)
		CurrentCamera.CFrame = CameraCFrame
	end

	local function CameraType()
		if CurrentCamera.CameraType ~= Track then
			CurrentCamera.CameraType = Track
		end
	end

	local function Camera()
		local Camera = Workspace.CurrentCamera

		if Camera then
			CameraCFrame = Camera.CFrame
			CurrentCamera = Camera

			CameraSubject()
			CameraType()

			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Camera, "CameraSubject"), CameraSubject))
			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Camera, "CameraType"), CameraType))
		end
	end

	local function FindFirstChildOfClassAndName(Parent, ClassName, Name)
		for Index, Instance in pairs(GetChildren(Parent)) do
			if IsA(Instance, ClassName) and Instance.Name == Name then
				return Instance
			end
		end
	end

	local function WaitForChildOfClassAndName(Parent, ...)
		local Instance = FindFirstChildOfClassAndName(Parent, ...)

		while not Instance and typeof(Parent) == "Instance" do
			Instance = FindFirstChildOfClassAndName(Parent, ...)
			Wait(Parent.ChildAdded)
		end

		return Instance
	end

	local function Invisible(Instance)
		if IsA(Instance, "BasePart") or IsA(Instance, "Decal") then
			Instance.Transparency = OptionsRigTransparency
		elseif IsA(Instance, "ForceField") or IsA(Instance, "Explosion") then
			Instance.Visible = false
		elseif IsA(Instance, "ParticleEmitter") or IsA(Instance, "Fire") or IsA(Instance, "Sparkles") then
			Instance.Enabled = false
		end
	end

	local function DescendantAdded(Instance)
		if IsA(Instance, "Attachment") then
			local Handle = Instance.Parent

			if IsA(Handle, "BasePart") then
				local AttachmentsAttachment = Attachments[Instance.Name]

				if AttachmentsAttachment then
					local MeshId = ""
					local TextureId = ""

					if IsA(Handle, "MeshPart") then
						MeshId = Handle.MeshId
						TextureId = Handle.TextureID
					else
						local SpecialMesh = FindFirstChildOfClass(Handle, "SpecialMesh")

						if SpecialMesh then
							MeshId = SpecialMesh.MeshId
							TextureId = SpecialMesh.TextureId
						end
					end

					for Index, Table in pairs(OptionsAccessories) do
						if stringfind(MeshId, Table.MeshId or "") and stringfind(TextureId, Table.TextureId or "") then
							local Instance = FindFirstChildOfClassAndName(Rig, "BasePart", Table.Name)

							local AlternativeName = Table.AlternativeName
							local AlternativeInstance = false

							if not Instance and AlternativeName then
								Instance = FindFirstChildOfClassAndName(Rig, "BasePart", AlternativeName)
								AlternativeInstance = true
							end

							if Instance and not tablefind(Blacklist, Instance) then
								if Table.Blacklist then
									tableinsert(Blacklist, Instance)
								end
								BreakJoints(Handle)
								tableinsert(Tables, { Part0 = Handle, Part1 = Instance, CFrame = AlternativeInstance and Table.AllowAlternativeCFrame and Table.AlternativeCFrame or Table.CoordinateFrame, LastPosition = Instance.Position })
								return
							end
						end
					end
					for Index, Table in pairs(RigAccessories) do
						local TableHandle = Table.Handle

						if typeof(TableHandle) == "Instance" and Table.MeshId == MeshId and Table.TextureId == TextureId then
							BreakJoints(Handle)
							tableinsert(Tables, { Part0 = Handle, Part1 = TableHandle, LastPosition = TableHandle.Position })
							return
						end
					end

					local Accessory = Handle.Parent

					if IsA(Accessory, "Accessory") then
						local AccessoryClone = Instancenew("Accessory")
						AccessoryClone.Name = Accessory.Name

						local HandleClone = Clone(Handle)
						Invisible(HandleClone)
						BreakJoints(HandleClone)
						HandleClone.Parent = AccessoryClone

						local Weld = Instancenew("Weld")
						Weld.Name = "AccessoryWeld"
						Weld.C0 = Instance.CFrame
						Weld.C1 = AttachmentsAttachment.CFrame
						Weld.Part0 = HandleClone
						Weld.Part1 = AttachmentsAttachment.Parent
						Weld.Parent = HandleClone

						tableinsert(RigAccessories, { Handle = HandleClone, MeshId = MeshId, TextureId = TextureId })
						tableinsert(Tables, { Part0 = Handle, Part1 = HandleClone, LastPosition = HandleClone.Position })

						AccessoryClone.Parent = Rig
					end
				end
			end
		elseif IsA(Instance, "BasePart") then
			Instance.CanQuery = false
			tableinsert(BaseParts, Instance)
		end
	end

	local function ApplyDescriptionRig()
		local Description = GetAppliedDescription(Humanoid)
		Description.HatAccessory = ""
		Description.BackAccessory = ""
		Description.FaceAccessory = ""
		Description.HairAccessory = ""
		Description.NeckAccessory = ""
		Description.FrontAccessory = ""
		Description.WaistAccessory = ""
		Description.ShouldersAccessory = ""
		ApplyDescription(RigHumanoid, Description)

		for Index, Instance in pairs(GetDescendants(Rig)) do
			Invisible(Instance)
		end
	end

	local function SetCharacter()
		taskwait()
		LocalPlayer.Character = Rig
	end
	local Tools = { }
	local function CharacterAdded()
		local Character = LocalPlayer.Character

		if Character and Character ~= Rig then
			if OptionsFlingToolFling then
				for Index, Backpack in pairs(GetChildren(LocalPlayer)) do
					if IsA(Backpack, "Backpack") then
						for Index, Instance in pairs(GetChildren(Backpack)) do
							if IsA(Instance, "Tool") then
								Tools[Instance] = FindFirstChildOfClassAndName(Instance, "BasePart", "Handle")	
								Instance.Parent = Character
							end
						end
					end
				end
			end

			if OptionsRigSetCharacter then
				taskspawn(SetCharacter)
			end

			tableclear(BaseParts)
			tableclear(Blacklist)
			tableclear(Tables)

			if CurrentCamera then
				CameraCFrame = CurrentCamera.CFrame
			end

			for Index, Instance in pairs(GetDescendants(Character)) do
				DescendantAdded(Instance)
			end

			tableinsert(RBXScriptConnections, Connect(Character.DescendantAdded, DescendantAdded))

			Humanoid = WaitForChildOfClassAndName(Character, "Humanoid", "Humanoid")
			local HumanoidRootPart = WaitForChildOfClassAndName(Character, "BasePart", "HumanoidRootPart")

			if Boolean then
				Camera()

				if HumanoidRootPart then
					RigHumanoidRootPart.CFrame = HumanoidRootPart.CFrame
					Boolean = false
				end

				if OptionsRigSetHumanoidDescription and RigHumanoid and Humanoid then
					pcall(ApplyDescriptionRig)
				end
			end

			if HumanoidRootPart then
				for Index, Table in pairs(Targets) do
					if not HumanoidRootPart then
						break
					end

					if Humanoid then
						ChangeState(Humanoid, Physics)
					end

					local Target = Table.Target

					local Timeout = Time + OptionsFlingTimeout
					local LastPosition = Target.Position

					while Target and HumanoidRootPart do
						if Time > Timeout then
							break
						end

						local Position = Target.Position
						local LinearVelocity = ( Position - LastPosition ) / DeltaTime

						if LinearVelocity.Magnitude > 50 then
							break
						end

						LastPosition = Position

						HumanoidRootPart.AssemblyAngularVelocity = OptionsFlingVelocity
						HumanoidRootPart.AssemblyLinearVelocity = OptionsFlingVelocity

						HumanoidRootPart.CFrame = Target.CFrame * CFramenew(0, 0, 4 * mathsin(Time * 30)) * CFrameAngles(mathrandom(- 360, 360), mathrandom(- 360, 360), mathrandom(- 360, 360)) + ( LinearVelocity * 0.5) 
						taskwait()
					end

					local Highlight = Table.Highlight

					if Highlight then
						Destroy(Highlight)
					end

					Targets[Index] = nil
				end

				if Humanoid then
					ChangeState(Humanoid, Running)
				end

				if RigHumanoidRootPart then
					HumanoidRootPart.AssemblyAngularVelocity = Vector3zero
					HumanoidRootPart.AssemblyLinearVelocity = Vector3zero

					HumanoidRootPart.CFrame = RigHumanoidRootPart.CFrame + Vector3new(mathrandom(- OptionsTeleportXandZoffset, OptionsTeleportXandZoffset), OptionsTeleportYoffset, mathrandom(- OptionsTeleportXandZoffset, OptionsTeleportXandZoffset))
				end
			end

			taskwait(0.26 + Wait(PreSimulation))

			if Character then
				BreakJoints(Character)
			end
		end
	end

	local function PostSimulationConnect()
		sethiddenproperty(LocalPlayer, "SimulationRadius", 2147483647)

		Time = osclock()
		DeltaTime = Time - LastTime
		LastTime = Time

		local Integer = 29 + mathsin(Time)
		local Vector3 = Vector3new(0, 0, 0.002 * mathsin(Time * 25))

		for Index, Table in pairs(Tables) do
			local Part0 = Table.Part0
			local Part1 = Table.Part1

			if Part0 and # GetJoints(Part0) == 0 and Part0.ReceiveAge == 0 and Part1 then
				Part0.AssemblyAngularVelocity = Vector3zero

				local Position = Part1.Position
				local LinearVelocity = ( ( Table.LastPosition - Position ) / DeltaTime ) * Integer
				Table.LastPosition = Position

				Part0.AssemblyLinearVelocity = Vector3new(LinearVelocity.X, Integer, LinearVelocity.Z)

				Part0.CFrame = Part1.CFrame * ( Table.CFrame or CFrameidentity ) + Vector3
			end
		end

		local Hit = Mouse.Hit
		local Holding = IsMouseButtonPressed(UserInputService, MouseButton1)

		for Tool, BasePart in pairs(Tools) do
			if BasePart.ReceiveAge == 0 and # GetJoints(BasePart) == 0 then
				BasePart.CanCollide = false
				BasePart.AssemblyAngularVelocity = OptionsFlingVelocity
				BasePart.AssemblyLinearVelocity = OptionsFlingVelocity

				if Holding then
					BasePart.CFrame = Hit
				elseif RigHumanoidRootPart then
					BasePart.CFrame = RigHumanoidRootPart.CFrame * CFramenew(0, OptionsTeleportYoffset, 0) * CFrameAngles(mathrandom(- 360, 360), mathrandom(- 360, 360), mathrandom(- 360, 360))
				else
					BasePart.CFrame = CFrameidentity
				end
			end
		end

		if RigHumanoid and Humanoid then
			RigHumanoid.Jump = Humanoid.Jump
			Move(RigHumanoid, Humanoid.MoveDirection)
		end

		if not Success then
			Success = pcall(SetCore, StarterGui, "ResetButtonCallback", BindableEvent)
		else
			SetCore(StarterGui, "ResetButtonCallback", BindableEvent)
		end
	end

	local function PreSimulationConnect()
		for Index, BasePart in pairs(BaseParts) do
			BasePart.CanCollide = false
		end
	end

	local function Fling(Target)
		if typeof(Target) == "Instance" then
			if IsA(Target, "Humanoid") then
				Target = Target.Parent
			end
			if IsA(Target.Parent, "Accessory") then
				Target = FindFirstAncestorOfClass(Target, "Model")
			end
			if IsA(Target, "Model") then
				Target = FindFirstChildOfClassAndName(Target, "BasePart", "HumanoidRootPart")
			end
			if IsA(Target, "BasePart") then
				for Index, Table in pairs(Targets) do
					if Table.Target == Target then
						return
					end
				end

				local Parent = Target.Parent

				local Highlight = nil

				if OptionsFlingHighlightTargets then
					Highlight = Instancenew("Highlight")
					Highlight.Adornee = Parent
					Highlight.Parent = Parent
					tableinsert(Highlights, Highlight)
				end

				tableinsert(Targets, {Highlight = Highlight, Target = Target})
			end
		end
	end

	local function InputBegan(InputObject)
		local UserInputType = InputObject.UserInputType

		if UserInputType == MouseButton1 or UserInputType == Touch then
			local Target = Mouse.Target

			if Target and not Target.Anchored then
				local Model = Target.Parent

				if IsA(Model, "Model") and FindFirstChildOfClass(Model, "Humanoid") then
					local HumanoidRootPart = FindFirstChildOfClassAndName(Model, "BasePart", "HumanoidRootPart")

					if HumanoidRootPart then
						Fling(HumanoidRootPart)
					end
				else
					Fling(Target)
				end
			end
		end
	end

	local function gameDescendantAdded(Instance)
		if ( OptionsDisableScreenGUIs and IsA(Instance, "ScreenGui") ) or ( OptionsDisableScripts and Instance ~= script and ( IsA(Instance, "LocalScript") or IsA(Instance, "Script") ) ) then
			Enableds[Instance] = Instance.Enabled
			Instance.Enabled = false

			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Instance, "Enabled"), function()
				Enableds[Instance] = Instance.Enabled
				Instance.Enabled = false
			end))
		end
	end

	local function Stop()
		for Index, RBXScriptConnection in pairs(RBXScriptConnections) do
			Disconnect(RBXScriptConnection)
		end
		for Index, Highlight in pairs(Highlights) do
			Destroy(Highlight)
		end
		for Instance, Boolean in pairs(Enableds) do
			Instance.Enabled = Boolean
		end

		tableclear(Attachments)
		tableclear(BaseParts)
		tableclear(Enableds)
		tableclear(Handles)
		tableclear(Highlights)
		tableclear(RBXScriptConnections)
		tableclear(Tables)
		tableclear(Targets)

		if Rig then
			Destroy(Rig)
		end

		Destroy(BindableEvent)
		SetCore(StarterGui, "ResetButtonCallback", true)
	end

	local Emperean = {
		Stop = Stop,
		Start = function(Options)
			Options = Options or { }
			OptionsAccessories = Options.Accessories or {}
			local OptionsRig = Options.Rig
			OptionsRigTransparency = OptionsRig.Transparency
			OptionsRigR15 = OptionsRig.R15
			OptionsRigSetHumanoidDescription = OptionsRig.SetHumanoidDescription
			OptionsRigSetCharacter = OptionsRig.SetCharacter
			local OptionsTeleport = Options.Teleport or {}
			local XandYoffset = OptionsTeleport.XandYoffset
			OptionsTeleportXandZoffset = XandYoffset and mathabs(XandYoffset) or 6
			OptionsTeleportYoffset = OptionsTeleport.Yoffset or 0
			local OptionsDisable = Options.Disable
			OptionsDisableScripts = OptionsDisable.Scripts
			OptionsDisableScreenGUIs = OptionsDisable.GUIs
			local OptionsFling = Options.Fling or {}
			OptionsFlingEnabled = OptionsFling.Enabled
			OptionsFlingToolFling = OptionsFling.ToolFling
			OptionsFlingTimeout = OptionsFling.Timeout or 1.5
			OptionsFlingVelocity = OptionsFling.Velocity or Vector3new(0, 4096, 0)
			OptionsFlingHighlightTargets = OptionsFling.HighlightTargets

			if OptionsDisableScripts or OptionsDisableScreenGUIs then
				for Index, Instance in pairs(GetDescendants(game)) do
					gameDescendantAdded(Instance)
				end

				tableinsert(RBXScriptConnections, Connect(game.DescendantAdded, gameDescendantAdded))
			end

			Boolean = true
			LastTime = osclock()

			Rig = OptionsRigR15 and CreateHumanoidModelFromUserId(Players, 5532894300) or CreateHumanoidModelFromUserId(Players, 5532891747)
			Rig.Name = "non"
			RigHumanoid = Rig.Humanoid
			RigHumanoidRootPart = Rig.HumanoidRootPart
			Rig.Parent = Workspace

			for Index, Instance in pairs(GetDescendants(Rig)) do
				if IsA(Instance, "Attachment") then
					Attachments[Instance.Name] = Instance
				else
					Invisible(Instance)
				end
			end

			BindableEvent = Instancenew("BindableEvent")
			Connect(BindableEvent.Event, Stop)

			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(Workspace, "CurrentCamera"), Camera))

			CharacterAdded()
			tableinsert(RBXScriptConnections, Connect(GetPropertyChangedSignal(LocalPlayer, "Character"), CharacterAdded))

			if OptionsFlingEnabled then
				tableinsert(RBXScriptConnections, Connect(UserInputService.InputBegan, InputBegan))
			end

			tableinsert(RBXScriptConnections, Connect(PreSimulation, PreSimulationConnect))
			tableinsert(RBXScriptConnections, Connect(PostSimulation, PostSimulationConnect))

			return { 
				Rig = Rig,
				Options = Options,
				Fling = Fling,
			},
			taskwait()
		end,
	}

	Emperean.Start({
		Accessories = {
			--  Free Rig
			{ Blacklist = true, Name = "Torso", AlternativeName = "UpperTorso", MeshId = "4819720316", TextureId = "4819722776", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 0, -0.25), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "3030546036", TextureId = "3033903209", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, -1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "3030546036", TextureId = "3360978739", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "3030546036", TextureId = "3033898741", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, -1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "3030546036", TextureId = "3409604993", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(-1.57, 0, 1.57), AlternativeCFrame = CFrameidentity },

			-- Cheap Paid Rig
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "12344206657", TextureId = "12344206675", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(-0.095, 0, 0) * CFrameAngles(- 2, 0, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "12344207333", TextureId = "12344207341", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(0.095, 0, 0) * CFrameAngles(- 2, 0, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "11263221350", TextureId = "11263219250", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, - 1.57, 0), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "11159370334", TextureId = "11159284657", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(1.57, 1.57, 0), AlternativeCFrame = CFrameidentity },

			-- Accurate Paid Rig
			{ Blacklist = true, Name = "Torso", AlternativeName = "UpperTorso", MeshId = "14241018198", TextureId = "14251599953", AllowAlternativeCFrame = false, CoordinateFrame = CFrameidentity, AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Arm", AlternativeName = "RightLowerArm", MeshId = "14255522247", TextureId = "14255543546", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Arm", AlternativeName = "LeftLowerArm", MeshId = "14255522247", TextureId = "14255543546", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "RightLowerLeg", MeshId = "17374767929", TextureId = "17374768001", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerLeg", MeshId = "17374767929", TextureId = "17374768001", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },

			-- White legs below
			{ Blacklist = true, Name = "Left Leg", AlternativeName = "LeftLowerArm", MeshId = "14768684979", TextureId = "14768683674", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Right Leg", AlternativeName = "LeftLowerArm", MeshId = "14768684979", TextureId = "14768683674", AllowAlternativeCFrame = false, CoordinateFrame = CFrameAngles(0, 1.57, 1.57), AlternativeCFrame = CFrameidentity },

			-- Weapons below (alternative names for editing)
			{ Blacklist = true, Name = "Uzi", AlternativeName = "Rifle", MeshId = "15008371412", TextureId = "15008387334", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(0, 0.15, 0.55) * CFrameAngles(1.45, -3.15, -3.15), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Bazooka", AlternativeName = "Rifle", MeshId = "14890477660", TextureId = "14890158533", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(0, 0, 0) * CFrameAngles(0, 1.45, -0.75), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Bullet", AlternativeName = "Bullet", MeshId = "4307568890", TextureId = "4307568951", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(0, 0.15, 0.55) * CFrameAngles(1.45, -3.15, -3.15), AlternativeCFrame = CFrameidentity },
			{ Blacklist = true, Name = "Motor", AlternativeName = "Motorcycle", MeshId = "17465242261", TextureId = "15715146917", AllowAlternativeCFrame = false, CoordinateFrame = CFramenew(0, -0.15, 0.55) * CFrameAngles(0, 0, 0), AlternativeCFrame = CFrameidentity },

		},
		Rig = {
			Transparency = 1,
			R15 = false,
			SetHumanoidDescription = true,
			SetCharacter = false
		},
		Teleport = {
			XandZoffset = 145,
			Yoffset = 0
		},
		Disable = {
			Scripts = true,
			ScreenGUIs = false
		},
		Fling = {
			Enabled = true,
			ToolFling = true,
			Timeout = 0.75,
			Velocity = Vector3new(15250, 16250, 15250),
			HighlightTargets = true
		}
	})
end

Reanimate()

game:GetService("StarterGui"):SetCore("SendNotification", { Title = "Melon's (FE) Converts/Scripts"; Text = "Thanks for using!"; Icon = "rbxthumb://type=Asset&id=13446503788&w=150&h=150"})
game:GetService("StarterGui"):SetCore("SendNotification", { Title = "BananaMan/Diegombv03"; Text = "has extreme skibidi ohio sussy rizz"; Icon = "rbxthumb://type=Asset&id=10034527904&w=150&h=150"})

local script = game:GetObjects("rbxassetid://9532774501")[1]

local MODULE = script
local PLAYER = game.Players.LocalPlayer
local CHARACTER = workspace.non
local HUM = CHARACTER.Humanoid
local REMOTE = MODULE.Event

local m = game.Players.LocalPlayer:GetMouse()
Player = game:GetService("Players").LocalPlayer
Mouse = Player:GetMouse()
local ROOT = HUM.Torso
local HEAD = CHARACTER.Head
local TORSO = CHARACTER.Torso
local RIGHTARM = CHARACTER["Right Arm"]
local LEFTARM = CHARACTER["Left Arm"]
local RIGHTLEG = CHARACTER["Right Leg"]
local LEFTLEG = CHARACTER["Left Leg"]
local ROOTJOINT = ROOT["RootJoint"]
local NECK = TORSO["Neck"]
local MOTOR = MODULE.Motor
MOTOR.Parent = CHARACTER
MOTOR.Transparency = 1
local SMG = MODULE.Uzi
SMG.Parent = CHARACTER
SMG.Transparency = 1

local RIGHTSHOULDER = TORSO["Right Shoulder"]
local LEFTSHOULDER = TORSO["Left Shoulder"]
local RIGHTHIP = TORSO["Right Hip"]
local LEFTHIP = TORSO["Left Hip"]
local MOUSEPOS = m.hit.p
local MOUSEHIT = nil


IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

--//====================================================\\--
--||                       FE CODE
--\\====================================================//--
--nyoom

--//====================================================\\--
--||                  BACKGROUND VALUES
--\\====================================================//--

local ANIM_SPEED = 3
local MOUSE = PLAYER:GetMouse()
local FRAME_SPEED = 1 / 60 -- (1 / 30) OR (1 / 60)
local CHANGE = 2 / ANIM_SPEED
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local KEYHOLD = false
local MOUSEHOLD = false
local SINE = 0
local ATTACKING = false
local Debris = game:GetService("Debris")
local Effects = IT("Folder",CHARACTER)
Effects.Name = "FXFolder"
ROOTJOINT.C1 = CF(0,0,0)
NECK.C1 = CF(0,0,0)
RIGHTSHOULDER.C1 = CF(0,0,0)
LEFTSHOULDER.C1 = CF(0,0,0)
RIGHTHIP.C1 = CF(0,0,0)
LEFTHIP.C1 = CF(0,0,0)
local USEDEFAULTANIMATIONS = true

--//====================================================\\--
--||                     HEARTBEAT
--\\====================================================//--

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = FRAME_SPEED
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

-- bullet thing was inspired by rqz's road rogue convert so you can thank him for the original idea!! --

local PLAYER = game.Players.LocalPlayer
local MOUSE = PLAYER:GetMouse()

local Bullet = Instance.new("Part")
Bullet.Name = "Bullet"
Bullet.Size = Vector3.new(1, 1, 1)
Bullet.Transparency = 0.95
Bullet.CanCollide = false
Bullet.Parent = workspace.non

local BulletWeld = Instance.new("Weld")
BulletWeld.Part0 = workspace.non["Right Arm"]
BulletWeld.Part1 = Bullet

local SHOOTING = false

-- direct .position looks bad on server
-- pretty much a rework of my old bullet system from the elio blasio thing --

function makeafuckingtween(fuckingposition) -- mightve got mad making this lol
	local fuckingtween = game:GetService("TweenService"):Create(Bullet, TweenInfo.new(0.001, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {Position = fuckingposition})
	fuckingtween:Play()
end

MOUSE.Button1Down:Connect(function()
	SHOOTING = true
	repeat
		task.wait()
		makeafuckingtween(MOUSE.Hit.Position)
		task.wait(BulletStuff.BulletSpeed)
		makeafuckingtween(workspace.non["Right Arm"].Position)
		task.wait()
	until SHOOTING == false
end)

MOUSE.Button1Up:Connect(function()
	SHOOTING = false
	repeat task.wait()
		if BulletStuff.AttachedTo == "Motor" then
			makeafuckingtween(workspace.non["Motor"].Position)
		elseif BulletStuff.AttachedTo == "Arm" then
			makeafuckingtween(workspace.non["Right Arm"].Position)
		end
	until SHOOTING == true
end)

--//====================================================\\--
--||                       CLERP
--\\====================================================//--

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end

function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end

function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

--//====================================================\\--
--||                     FUNCTIONS
--\\====================================================//--

function WeldParts(A,B)
	local WLD = IT("ManualWeld")
	WLD.Part0 = A
	WLD.Part1 = B
	WLD.C1 = B.CFrame:inverse() * A.CFrame
	WLD.Parent = A
	return WLD
end

--NewSound({ID = 0,PARENT = ROOT,VOLUME = 0.5,PITCH = 1,LOOP = false,MAXDISTANCE = 1000,EMITTERSIZE = 10,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
function NewSound(TABLE)
	local ID = "rbxassetid://"..(TABLE.ID or 0)
	local PARENT = (TABLE.PARENT or ROOT)
	local VOLUME = (TABLE.VOLUME or 0.5)
	local PITCH = (TABLE.PITCH or 1)
	local LOOP = (TABLE.LOOP or false)
	local MAXDISTANCE = (TABLE.MAXDISTANCE or 100)
	local EMITTERSIZE = (TABLE.EMITTERSIZE or 10)
	local PLAYING = (TABLE.PLAYING or true)
	local PLAYONREMOVE = (TABLE.PLAYONREMOVE or false)
	local DOESDEBRIS = (TABLE.DOESDEBRIS or true)
	if ID ~= "rbxassetid://0" then
		local SOUND = IT("Sound",PARENT)
		SOUND.SoundId = ID
		SOUND.Volume = VOLUME
		SOUND.Pitch = PITCH
		SOUND.Looped = LOOP
		SOUND.MaxDistance = MAXDISTANCE
		SOUND.EmitterSize = EMITTERSIZE
		SOUND.PlayOnRemove = PLAYONREMOVE
		if DOESDEBRIS == true and PLAYING == true and LOOP == false then
			Debris:AddItem(SOUND,SOUND.TimeLength+5)
		end
		if PLAYING == true then
			SOUND:Play()
		end
		return SOUND
	end
end

function OofOuchBlood(LOCATION,TO,AMOUNT)
	local P = CreatePart(3, Effects, "Granite", 0, 1, BRICKC("Pearl"), "Blood", VT(0,0,0), true)
	P.CFrame = CF(LOCATION,TO)
	local BLOOD = MODULE.Blood:Clone()
	BLOOD.Parent = P
	BLOOD:Emit(AMOUNT)
	Debris:AddItem(P,2)
end

function AttachmentCFrame(A)
	return A.Parent.CFrame*CF(A.Position)
end

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function ManSlaughter(MAN)
	if MAN then
		local ROOT = MAN:FindFirstChild("HumanoidRootPart")
		if ROOT then
			ROOT:Remove()
		end
		local MANHUM = MAN:FindFirstChildOfClass("Humanoid")
		if MANHUM then
			MANHUM.BreakJointsOnDeath = false
			MANHUM.Health = 0
		end
		if MAN:FindFirstChild("R6Ragdoll") == nil and MAN:FindFirstChild("R15Ragdoll") == nil then
			if MAN:FindFirstChild("UpperTorso") then
				local SCRIPT = script.R15Ragdoll:Clone()
				SCRIPT.Parent = MAN
				SCRIPT.Disabled = false
			else
				local SCRIPT = script.R6Ragdoll:Clone()
				SCRIPT.Parent = MAN
				SCRIPT.Disabled = false
			end
			local TORSO = MAN:FindFirstChild("Torso") or MAN:FindFirstChild("UpperTorso")
			if TORSO then
				NewSound({ID = 146594648,PARENT = TORSO,VOLUME = 1,PITCH = MRANDOM(8,12)/10,LOOP = false,MAXDISTANCE = 75,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			end
		end
		MAN:BreakJoints()
		if MAN:FindFirstChild("Slaughtered") == nil then
			local MARK = IT("Folder",MAN)
			MARK.Name = "Slaughtered"
		else
			if MAN:FindFirstChild("Slaughtered") then
				local TORSO = MAN:FindFirstChild("Torso") or MAN:FindFirstChild("UpperTorso")
				if TORSO then
					TORSO.RotVelocity = VT(0,MRANDOM(-25,25),0)
				end
			end
		end
	end
end

function ApplyDamageTo(HUM,DAMAGE)
	if HUM.Health >= 0 then
		HUM.Health = HUM.Health 
		if HUM.Health <= 0 then
			--ManSlaughter(HUM.Parent)
		end
	end
end

function AreaOfEffect(AREA,RANGE,MIN,MAX,RETURN)
	local HIT = {}
	for index, CHILD in pairs(workspace:GetChildren()) do
		if CHILD:FindFirstChildOfClass("Humanoid") and CHILD ~= CHARACTER then
			local HUMAN = CHILD:FindFirstChildOfClass("Humanoid")
			local ROOT = HUMAN.Torso
			if ROOT then
				if (ROOT.Position - AREA).Magnitude <= RANGE then
					if RETURN == true then
						table.insert(HIT,{CHILD,HUMAN,ROOT})
					else
						--	ApplyDamageTo(HUMAN,MRANDOM(MIN,MAX))
					end
				end
			end
		end
	end
	if RETURN == true then
		return HIT
	end
end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = ROOT.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

function Raycast(POSITION, DIRECTION, RANGE, TABLE)
	local TABLE = ((type(TABLE) == "table" and TABLE) or {TABLE})
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(POSITION, DIRECTION * RANGE), TABLE)
end

function CameraShake(AREA,RANGE,SHAKE,TIMER)
	for index, CHILD in pairs(workspace:GetChildren()) do
		if CHILD:FindFirstChildOfClass("Humanoid") then
			local HUMAN = CHILD:FindFirstChildOfClass("Humanoid")
			local ROOT = HUMAN.Torso
			if ROOT and game.Players:GetPlayerFromCharacter(CHILD) then
				if (ROOT.Position - AREA).Magnitude <= RANGE then
					if CHILD:FindFirstChild("CamShake") then
						Debris:AddItem(CHILD:FindFirstChild("CamShake"),0.05)
					end
					local CAMSHAKE = script.CamShake:Clone()
					CAMSHAKE.Parent = CHILD
					local TIMER_V = IT("NumberValue",CAMSHAKE)
					TIMER_V.Name = "Timer"
					TIMER_V.Value = TIMER
					local SHAKE_V = IT("NumberValue",CAMSHAKE)
					SHAKE_V.Name = "Shake"
					SHAKE_V.Value = SHAKE
					CAMSHAKE.Disabled = false
					Debris:AddItem(CAMSHAKE,15)
				end
			end
		end
	end
end

--//====================================================\\--
--||                     CHARACTER
--\\====================================================//--

local DIED = false
local TRACKS = {{2598781800,1.75},{373410757,2},{327466331,2.7},{193170682,2.2},{2496169936,2.5},{1703313447,2.3},{2884982022,4.25},{3397313642,3},{601814175,2.2}}
local TRACK = 1
local MOLOTOVPROP = MODULE.Molotov
MOLOTOVPROP.Parent = nil
local MISILEPROP = MODULE.Missile
MISILEPROP.Parent = nil
local BULLETPROP = MODULE.Bullet
BULLETPROP.Parent = nil
local FRONTWHEEL = MODULE.FrontWheel
local BACKWHEEL = MODULE.BackWheel
FRONTWHEEL.Transparency = 1
BACKWHEEL.Transparency = 1
local FRONTC1 = FRONTWHEEL.CFrame:inverse() * MOTOR.CFrame
local BACKC1 = BACKWHEEL.CFrame:inverse() * MOTOR.CFrame
local BACKUPWHEEL = FRONTWHEEL:Clone()
BACKUPWHEEL.Parent = nil
BACKUPWHEEL.CanCollide = true
BACKUPWHEEL.Anchored = false
local WHEELS = {{FRONTWHEEL,FRONTC1},{BACKWHEEL,BACKC1}}
local WHEELJOINTS = {}
local MOTORMODEL = IT("Model",MOTORMODEL)
MOTORMODEL.Name = "MotorThings"
for i = 1, #WHEELS do
	WHEELS[i][1].Anchored = false
	WHEELS[i][1].Parent = CHARACTER
	local JOINT = IT("Motor6D")
	JOINT.Parent = MOTOR
	JOINT.C1 = WHEELS[i][2]
	JOINT.Part0 = MOTOR
	JOINT.Part1 = WHEELS[i][1]
	JOINT.Parent = WHEELS[i][1]
	table.insert(WHEELJOINTS,JOINT)
end
MOTOR.Anchored = false
MOTOR.Parent = CHARACTER



SMG.Anchored = false
local MOTORWELD = IT("Motor6D")
MOTORWELD.Part0 = TORSO
MOTORWELD.Part1 = MOTOR
MOTORWELD.Name = "MotorJoint"
MOTORWELD.Parent = TORSO
local SMGGRIP = IT("Motor6D")
SMGGRIP.Part0 = RIGHTARM
SMGGRIP.Part1 = SMG
SMGGRIP.Name = "SmgGrip"
SMGGRIP.Parent = RIGHTARM
local SMGTIGHTGRIP = IT("Motor6D")
SMGTIGHTGRIP.Part0 = RIGHTARM
SMGTIGHTGRIP.Part1 = SMG
SMGTIGHTGRIP.Name = "SmgGrip"
SMGTIGHTGRIP.C0 = CF(0,-1.1,-0.5)*ANGLES(RAD(90),RAD(0),RAD(-180))*ANGLES(RAD(0),RAD(0),RAD(0))
local MOTORHUM = NewSound({ID = 122292723,PARENT = ROOT,VOLUME = 1.5,PITCH = 1,LOOP = true,MAXDISTANCE = 125,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
MOTORHUM.Name = "MOTORHUM"
local JOINT1 = IT("Attachment",TORSO)
local JOINT2 = IT("Attachment",RIGHTARM)
JOINT1.Position = VT(1.575,0.8,0)
JOINT2.Position = VT(0,1,0)
local SHOULDER = IT("BallSocketConstraint",TORSO)
SHOULDER.Attachment0 = JOINT1
SHOULDER.Attachment1 = JOINT2
SHOULDER.Radius = 0.05
local MOTORHITBOX = CreatePart(3,MOTORMODEL,"Neon",0,1,"Grey","Hitbox",MOTOR.Size*1.5,false)
MOTORHITBOX.Massless = true
MOTORHITBOX.CFrame = MOTOR.CFrame
WeldParts(MOTOR,MOTORHITBOX)
local MOTORHIT = MOTORHITBOX.Touched:Connect(function(HIT)
	if HUM.WalkSpeed > 80 then
		if HIT.Parent:FindFirstChildOfClass("Humanoid") and HIT.Parent ~= CHARACTER then
			if HIT.Parent:FindFirstChildOfClass("Humanoid").Health > 0 and HIT.Parent:FindFirstChild("Roadrogue") == nil then
				CameraShake(HIT.Position,25,5,55)
				local BV = IT("BodyVelocity")
				BV.MaxForce = BV.MaxForce * 500
				BV.Velocity = CF(ROOT.Position-VT(0,2,0),HIT.Position+VT(0,1,0)).lookVector*(HUM.WalkSpeed/2)
				BV.Parent = HIT
				Debris:AddItem(BV,0.5)
				OofOuchBlood(HIT.Position,ROOT.Position,150)
				----ManSlaughter(HIT.Parent)
				NewSound({ID = 314390675,PARENT = ROOT,VOLUME = 5,PITCH = MRANDOM(8,12)/12,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			end
		end
	end
end)
local BOOST = false
local BAZOOKA = MODULE.Bazooka
BAZOOKA.Transparency = 1

BAZOOKA.Parent = CHARACTER
BAZOOKA.Anchored = false
local BAZOOKAWELD = IT("Motor6D")
BAZOOKAWELD.Part0 = TORSO
BAZOOKAWELD.Part1 = BAZOOKA
BAZOOKAWELD.Parent = TORSO
local BC0 = CF(0,0,0.75)*ANGLES(RAD(90),RAD(-40),RAD(90))*ANGLES(RAD(0),RAD(0),RAD(0))
BAZOOKAWELD.C0 = BC0
for _, c in pairs(CHARACTER:GetDescendants()) do
	if c:IsA("BasePart") then
		c.Locked = true
		c.Anchored = false
	end
end
local GUI = MODULE.ControlsGUI
GUI.Parent = game.CoreGui
GUI.ToggleButton.MouseButton1Click:Connect(function()
	if GUI.ToggleButton.Controls.Visible == false then
		GUI.ToggleButton.Controls.Visible = true
	elseif GUI.ToggleButton.Controls.Visible == true then
		GUI.ToggleButton.Controls.Visible = false
	end
end)

local MARKME = IT("Beam",CHARACTER)
MARKME.Name = "Roadrogue"
local LOCKEDSPEED = 150
local HASBAZOOKAEQUIPPED = false

--//====================================================\\--
--||                     ABILITIES
--\\====================================================//--

function Fire()
	local DROPSOUNDS = {3182143803,3182144291,3182144511}
	ATTACKING = true
	RIGHTSHOULDER.Parent = nil
	SMGGRIP.Parent = nil
	SMGTIGHTGRIP.Parent = RIGHTARM
	local DETECTKILL = function(HIT,POS,FORCE)
		if HIT.Parent:FindFirstChildOfClass("Humanoid") then
			if HIT.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then

			else
			end
			----ManSlaughter(HIT.Parent)
			NewSound({ID = 1489924400,PARENT = HIT,VOLUME = 1,PITCH = MRANDOM(9,11)/10,LOOP = false,MAXDISTANCE = 75,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
		elseif HIT.Parent.Parent:FindFirstChildOfClass("Humanoid") then
			if HIT.Parent.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
				if HIT.Parent.Parent:FindFirstChildOfClass("Humanoid").Torso then

				end
			else
			end
			--ManSlaughter(HIT.Parent.Parent)
			NewSound({ID = 1489924400,PARENT = HIT,VOLUME = 1,PITCH = MRANDOM(9,11)/10,LOOP = false,MAXDISTANCE = 75,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
		else
			--Debree({Delay = 1.5,Variant = "Loose",Location = POS,Color = HIT.Color,Size = 0.2,Distance = 1,Material = HIT.Material,Scatter = 60,Amount = 1,DebreeCount = 4})
		end
	end
	local DOFIRE = 0
	local GYRO = IT("BodyGyro")
	GYRO.D = 20
	GYRO.P = 500
	GYRO.MaxTorque = VT(4000000,4000000,4000000)
	GYRO.CFrame = CF(RIGHTARM.CFrame*CF(0,0.8,0).p,m.hit.p)*ANGLES(RAD(90),RAD(45),0)
	GYRO.Parent = RIGHTARM
	repeat
		Swait()
		DOFIRE = DOFIRE + 1
		if DOFIRE > 4 then
			DOFIRE = 0
			local PROP = BULLETPROP:Clone()
			PROP.Anchored = false
			PROP.Parent = workspace
			PROP.CFrame = SMG.CFrame*ANGLES(RAD(90),0,0)
			local BV = IT("BodyVelocity")
			BV.MaxForce = BV.MaxForce * 500
			BV.Velocity = CF(SMG.Position,SMG.CFrame*CF(-1,0,0).p).lookVector*45
			BV.Parent = PROP
			Debris:AddItem(BV,0.1)
			Debris:AddItem(PROP,1)
			NewSound({ID = DROPSOUNDS[MRANDOM(1,#DROPSOUNDS)],PARENT = PROP,VOLUME = 0.35,PITCH = MRANDOM(9,11)/10,LOOP = false,MAXDISTANCE = 65,EMITTERSIZE = 10,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			local HIT,POS = CastProperRay(AttachmentCFrame(SMG.Nuzzle).p,m.hit.p,1000,CHARACTER)
			local DISTANCE = (POS - AttachmentCFrame(SMG.Nuzzle).p).Magnitude
			if HIT then
			end
			SMG.Nuzzle.Flash:Emit(10)
			NewSound({ID = 1583819337,PARENT = SMG,VOLUME = 0.45,PITCH = MRANDOM(9,11)/7.5,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 10,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
		end
		GYRO.CFrame = CF(RIGHTARM.CFrame*CF(0,0.8,0).p,m.hit.p)*ANGLES(RAD(90),RAD(45),0)
	until MOUSEHOLD == false
	wait(0.1)
	GYRO:Remove()
	RIGHTSHOULDER.Parent = TORSO
	SMGGRIP.Parent = RIGHTARM
	SMGTIGHTGRIP.Parent = nil
	ATTACKING = false
end

function Boost()
	if HUM.WalkSpeed > 10 then
		BOOST = true
		USEDEFAULTANIMATIONS = false
		HUM.WalkSpeed = LOCKEDSPEED*2
		MOTOR.RightPipe.Fire.Enabled = true	
		MOTOR.LeftPipe.Fire.Enabled = true
		NewSound({ID = 142472270,PARENT = MOTOR,VOLUME = 10,PITCH = 1,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 10,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
		for i=0, 4, 0.1 / ANIM_SPEED do
			Swait()
			local SPINVELOCITY = -ROOT.RotVelocity.Y/12.5
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,CF(0,1.4,1.5)*ANGLES(RAD(35),RAD(0)-SPINVELOCITY/6,RAD(0)-SPINVELOCITY/2)*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0,CF(0,1.45,-0.3)*ANGLES(RAD(-30),RAD(0)-SPINVELOCITY/2,RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
			MOTORWELD.C0 = Clerp(MOTORWELD.C0,CF(0,-1.7,-0.5)*ANGLES(RAD(0),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.3,0.5,-0.3)*ANGLES(RAD(110),RAD(15),RAD(15))*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
			SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(0.2,-1.1,-0.4)*ANGLES(RAD(90),RAD(0),RAD(-160))*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(-1.5,0.4,-0.1)*ANGLES(RAD(64.6),RAD(-5),RAD(-5))*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0,CF(0.7,-1.4,0.1)*ANGLES(RAD(-50),RAD(0),RAD(10))*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0,CF(-0.7,-1.4,0.1)*ANGLES(RAD(-50),RAD(0),RAD(-10))*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
			if ROOT.Velocity.Magnitude <= 0.5 then
				break

			end
		end
		MOTOR.RightPipe.Fire.Enabled = false	
		MOTOR.LeftPipe.Fire.Enabled = false
		USEDEFAULTANIMATIONS = true
		BOOST = false
	end
end

function Molotov()
	if ATTACKING == false then
		ATTACKING = true		
		USEDEFAULTANIMATIONS = false
		NewSound({ID = 2764683507,PARENT = ROOT,VOLUME = 5,PITCH = 1,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 35,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
		for i=0, 0.1, 0.1 / ANIM_SPEED do
			Swait()
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,CF(0,1.3,-0.5)*ANGLES(RAD(-20),RAD(10),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0,CF(0,1.5,0.1)*ANGLES(RAD(15.2),RAD(-9.7),RAD(2.6))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			MOTORWELD.C0 = Clerp(MOTORWELD.C0,CF(0.1,-2.5,-0.4)*ANGLES(RAD(20.3),RAD(-9.4),RAD(3.5))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.5,1.1,-0.7)*ANGLES(RAD(119.3),RAD(6.7),RAD(13.4))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(0.6,-1.1,-0.5)*ANGLES(RAD(90),RAD(0),RAD(-155))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(-1.5,0.2,-0.1)*ANGLES(RAD(30.4),RAD(-8.6),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0,CF(0.8,-2,-0.2)*ANGLES(RAD(-20.9),RAD(-5.1),RAD(11.1))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0,CF(-0.7,-2,-0.2)*ANGLES(RAD(-29.6),RAD(-3.7),RAD(-8.6))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
		end
		local MOLOTOV = MOLOTOVPROP:Clone()
		MOLOTOV.CanCollide = false
		MOLOTOV.Parent = Effects
		MOLOTOV.CFrame = CF(RIGHTARM.Position,m.hit.p)*ANGLES(RAD(45),0,0)
		MOLOTOV.Anchored = false
		local IMPACT = false
		local FORCE = 15 + (MOLOTOV.Position-m.hit.p).Magnitude
		if FORCE > 300 then
			FORCE = 300
		end
		local BV = IT("BodyVelocity")
		BV.MaxForce = BV.MaxForce * 500
		BV.Velocity = CF(MOLOTOV.Position,m.hit.p+VT(0,6,0)).lookVector*FORCE
		BV.Parent = MOLOTOV
		Debris:AddItem(BV,0.05)
		MOLOTOV.RotVelocity = VT(MRANDOM(-5,5),MRANDOM(-5,5),MRANDOM(-5,5))
		wait(0.1)
		MOLOTOV.CanCollide = true
		local BOOM = function(CHECKMODEL)
			if IMPACT == false then
				IMPACT = true
				local FLOOR,POS = Raycast(MOLOTOV.Position+VT(0,5,0),CF(VT(0,0,0),VT(0,-1,0)).lookVector,12,{CHARACTER,CHECKMODEL})
				if FLOOR then
					CameraShake(POS,35,5,6)
					for i = 1, MRANDOM(3,5) do
						coroutine.resume(coroutine.create(function()
							local FIRE = CreatePart(3,Effects,"Neon",0,1,"Grey","Fire",VT(10,2,10),true)
							FIRE.CFrame = CF(POS)*ANGLES(0,RAD(MRANDOM(0,359)),0)*CF(0,0,(i-1)*5)
							NewSound({ID = 3303579709,PARENT = FIRE,VOLUME = 6,PITCH = MRANDOM(8,12)/10,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 35,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
							local BURN = script.AoEFire:Clone()
							BURN.Parent = FIRE
							BURN.Enabled = true
							local TOUCH = FIRE.Touched:Connect(function(HIT)
								if HIT.Parent:FindFirstChildOfClass("Humanoid") and HIT.Parent ~= CHARACTER and HIT.Parent:FindFirstChild("Roadrogue") == nil then
									if HIT.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
										NewSound({ID = 3303579709,PARENT = HIT,VOLUME = 3,PITCH = 1,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 35,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
										for index, CHILD in pairs(HIT.Parent:GetChildren()) do
											if CHILD:IsA("BasePart") and CHILD:FindFirstChild("Fire") == nil then

											end
										end
									end
									----ManSlaughter(HIT.Parent)
								end
							end)
							wait(MRANDOM(90,175)/10)
							BURN.Enabled = false
							TOUCH:Disconnect()
						end))
					end
				end
				MOLOTOV.Transparency = 1
				MOLOTOV.Anchored = true
				MOLOTOV.CanCollide = false
				MOLOTOV.Head.Fire.Enabled = false
				Debris:AddItem(MOLOTOV,5)
				NewSound({ID = 156444949,PARENT = MOLOTOV,VOLUME = 7.5,PITCH = 1,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 35,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			end
		end
		local HIT = MOLOTOV.Touched:Connect(function(PART)
			if PART.Anchored == true then
				local CHECKMODEL = nil
				if PART.Parent ~= workspace and PART.Anchored == false then
					CHECKMODEL = PART.Parent
				end
				BOOM(CHECKMODEL)
			end
		end)
		for i=0, 0.3, 0.1 / ANIM_SPEED do
			Swait()
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,CF(0,1.3,-0.5)*ANGLES(RAD(-20),RAD(10),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0,CF(0,1.5,0.1)*ANGLES(RAD(15.2),RAD(-9.7),RAD(2.6))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			MOTORWELD.C0 = Clerp(MOTORWELD.C0,CF(0.1,-2.5,-0.4)*ANGLES(RAD(20.3),RAD(-9.4),RAD(3.5))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.5,1.1,-0.7)*ANGLES(RAD(119.3),RAD(6.7),RAD(13.4))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(0.6,-1.1,-0.5)*ANGLES(RAD(90),RAD(0),RAD(-155))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(-1.5,0.2,-0.1)*ANGLES(RAD(30.4),RAD(-8.6),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0,CF(0.8,-2,-0.2)*ANGLES(RAD(-20.9),RAD(-5.1),RAD(11.1))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0,CF(-0.7,-2,-0.2)*ANGLES(RAD(-29.6),RAD(-3.7),RAD(-8.6))*ANGLES(RAD(0),RAD(0),RAD(0)),2.25 / ANIM_SPEED)
		end
		USEDEFAULTANIMATIONS = true
		ATTACKING = false
	end
end

function LooseBike()
	if ROOT.Velocity.Magnitude <= 1 then
		USEDEFAULTANIMATIONS = false
		ATTACKING = true
		BOOST = true
		HUM.WalkSpeed = 0
		HUM.JumpPower = 0
		for i = 1, 60 do
			Swait()
			ROOT.CFrame = ROOT.CFrame*ANGLES(0,RAD(-i/2),0)
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,CF(0.2,-0.6,0.5)*ANGLES(RAD(-3.5),RAD(3.5),RAD(-44.9))*ANGLES(RAD(0),RAD(0),RAD(0)),2 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0,CF(0,1.5,0)*ANGLES(RAD(5),RAD(45),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),2 / ANIM_SPEED)
			MOTORWELD.C0 = Clerp(MOTORWELD.C0,CF(0,-1.7,-0.6)*ANGLES(RAD(5),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),2 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.5,0.8,-0.2)*ANGLES(RAD(95),RAD(50),RAD(60))*ANGLES(RAD(0),RAD(0),RAD(0)),2 / ANIM_SPEED)
			SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(0,-1.1,-0.5)*ANGLES(RAD(90),RAD(0),RAD(180))*ANGLES(RAD(0),RAD(0),RAD(0)),2 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(-1.5,0.4,0)*ANGLES(RAD(60),RAD(-10),RAD(-5))*ANGLES(RAD(0),RAD(0),RAD(0)),2 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0,CF(0.7,-1.6,-0.3)*ANGLES(RAD(-20),RAD(0),RAD(10))*ANGLES(RAD(0),RAD(0),RAD(0)),2 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0,CF(-0.7,-1.6,-0.3)*ANGLES(RAD(-20),RAD(0),RAD(-10))*ANGLES(RAD(0),RAD(0),RAD(0)),2 / ANIM_SPEED)
		end
		ROOT.CFrame = CF(ROOT.Position,VT(m.hit.p.X,ROOT.Position.Y,m.hit.p.Z))
		coroutine.resume(coroutine.create(function()
			local FAKEMOTOR = MOTOR:Clone()
			FAKEMOTOR.ManualWeld:Remove()
			FAKEMOTOR.CFrame = CF(MOTOR.Position,VT(m.hit.p.X,MOTOR.Position.Y+0.5,m.hit.p.Z))
			FAKEMOTOR.Anchored = true
			local DIDHIT = false
			FAKEMOTOR.RightPipe.Fire.Enabled = true
			FAKEMOTOR.LeftPipe.Fire.Enabled = true
			FAKEMOTOR.Dust.Dust.Enabled = true
			FAKEMOTOR.Parent = Effects
			local VROT = NewSound({ID = 122292723,PARENT = FAKEMOTOR,VOLUME = 1.5,PITCH = 3,LOOP = true,MAXDISTANCE = 125,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			NewSound({ID = 142472270,PARENT = FAKEMOTOR,VOLUME = 10,PITCH = 1,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 35,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			for i = 1, 200 do
				Swait()
				local FLOOR,POS = Raycast(FAKEMOTOR.Position,CF(VT(0,0,0),VT(0,-1,0)).lookVector,5.5,CHARACTER)
				if FLOOR then
					FAKEMOTOR.CFrame = CF(FAKEMOTOR.Position.X,POS.Y+FAKEMOTOR.Size.Y/2,FAKEMOTOR.Position.Z)*ANGLES(0,RAD(FAKEMOTOR.Orientation.Y),0) * CF(0,0,-2.5)
					local HIT = Raycast(FAKEMOTOR.Position,FAKEMOTOR.CFrame.lookVector,2.6,CHARACTER)
					if HIT then
						DIDHIT = true
						break
					end
				else
					break
				end
			end
			VROT:Remove()
			if DIDHIT == true then
				FAKEMOTOR.Core.Core.Size = NumberSequence.new(10,25)
				FAKEMOTOR.Core.Dust:Emit(200)
				FAKEMOTOR.Core.Black:Emit(15)
				FAKEMOTOR.Core.Core:Emit(100)
				for index, CHILD in pairs(FAKEMOTOR:GetChildren()) do
					if CHILD.Name ~= "Core" then
						CHILD:Remove()
					end
				end
				local B = IT("Explosion")
				B.BlastPressure = 0
				B.BlastRadius = 50
				B.Parent = workspace
				B.Position = FAKEMOTOR.Position
				B.Hit:Connect(function(PART)
					if PART.Parent:FindFirstChildOfClass("Humanoid") == nil and PART.Parent.Parent:FindFirstChildOfClass("Humanoid") == nil then
						if PART.Anchored == false then
							PART:BreakJoints()
							local BV = IT("BodyVelocity")
							BV.MaxForce = BV.MaxForce * 500
							BV.Velocity = CF(FAKEMOTOR.Position,PART.Position+VT(0,5,0)).lookVector*MRANDOM(35,75)
							BV.Parent = PART
							Debris:AddItem(BV,0.5)
							if MRANDOM(1,3) == 1 then
							end
						end
					end
				end)
				CameraShake(FAKEMOTOR.Position,150,10,75)
				local VICTIMS = AreaOfEffect(FAKEMOTOR.Position,65,0,0,true)
				if #VICTIMS > 0 then
					for E = 1, #VICTIMS do
						local VROOT = VICTIMS[E][1]:FindFirstChild("Torso") or VICTIMS[E][1]:FindFirstChild("LowerTorso")
						if VROOT then
							local BV = IT("BodyVelocity")
							BV.MaxForce = BV.MaxForce * 500
							BV.Velocity = CF(FAKEMOTOR.Position,VROOT.Position+VT(0,5,0)).lookVector*MRANDOM(35,75)
							BV.Parent = VROOT
							Debris:AddItem(BV,0.5)
						end
						--ManSlaughter(VICTIMS[E][1])
						for index, CHILD in pairs(VICTIMS[E][1]:GetChildren()) do
							if CHILD:IsA("BasePart") and MRANDOM(1,3) == 1 then

							end
						end
					end
				end
				NewSound({ID = 243702774,PARENT = FAKEMOTOR,VOLUME = 7.5,PITCH = 1.5,LOOP = false,MAXDISTANCE = 550,EMITTERSIZE = 75,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
				FAKEMOTOR.Transparency = 1
				for i = 1, 2 do
					local WHEEL = BACKUPWHEEL:Clone()
					WHEEL.Parent = workspace
					WHEEL.CFrame = FAKEMOTOR.CFrame*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
					WHEEL.RotVelocity = VT(MRANDOM(-5,5),MRANDOM(-5,5),MRANDOM(-5,5))
					local BV = IT("BodyVelocity")
					BV.MaxForce = BV.MaxForce * 500
					BV.Velocity = WHEEL.CFrame.lookVector*85
					BV.Parent = WHEEL
					Debris:AddItem(BV,0.12)
					Debris:AddItem(WHEEL,15)
				end
				Debris:AddItem(FAKEMOTOR,7.1)
			else
				FAKEMOTOR.CanCollide = true
				FAKEMOTOR.Parent = workspace
				FAKEMOTOR.Anchored = false
				FAKEMOTOR.Dust.Dust.Enabled = false
				FAKEMOTOR.RightPipe.Fire.Enabled = false
				FAKEMOTOR.LeftPipe.Fire.Enabled = false
				Debris:AddItem(FAKEMOTOR,15)
			end
		end))
		MOTOR.Transparency = 1
		FRONTWHEEL.Transparency = 1
		BACKWHEEL.Transparency = 1		
		for i=0, 0.4, 0.1 / ANIM_SPEED do
			Swait()
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,CF(0,1.8,0.5)*ANGLES(RAD(10),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0,CF(0,1.4,-0.4)*ANGLES(RAD(-25),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.4,-0.2,0.2)*ANGLES(RAD(20),RAD(-20),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(0,-1.1,-0.5)*ANGLES(RAD(90),RAD(0),RAD(180))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(-1.5,0.2,0)*ANGLES(RAD(-0.3),RAD(-2.6),RAD(-14.8))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0,CF(0.5,-1.5,-0.1)*ANGLES(RAD(-45),RAD(-5),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0,CF(-0.5,-1.8,0.2)*ANGLES(RAD(-15),RAD(5),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
		end
		ATTACKING = false
		for i=0, 2, 0.1 / ANIM_SPEED do
			Swait()
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,CF(0,-1,0.6)*ANGLES(RAD(-5),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1.35 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0,CF(0,1.5,0)*ANGLES(RAD(5),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1.35 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.5,-0.1,0)*ANGLES(RAD(24.9),RAD(1.7),RAD(4.7))*ANGLES(RAD(0),RAD(0),RAD(0)),1.35 / ANIM_SPEED)
			SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(0,-1.1,-0.5)*ANGLES(RAD(90),RAD(0),RAD(-180))*ANGLES(RAD(0),RAD(0),RAD(0)),1.35 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(-0.4,0.4,-1)*ANGLES(RAD(80.9),RAD(5.7),RAD(48.4))*ANGLES(RAD(0),RAD(0),RAD(0)),1.35 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0,CF(0.5,-0.9,-1.1)*ANGLES(RAD(-10),RAD(-10),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1.35 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0,CF(-0.5,-1.5,0)*ANGLES(RAD(-60),RAD(10),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1.35 / ANIM_SPEED)
		end
		coroutine.resume(coroutine.create(function()
			for i = 1, 10 do
				Swait()
				MOTOR.Transparency = MOTOR.Transparency - 1/10
			end
			MOTOR.Transparency = 1
			FRONTWHEEL.Transparency = 1
			BACKWHEEL.Transparency = 1
		end))
		for i=0, 0.25, 0.1 / ANIM_SPEED do
			Swait()
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,CF(0,1.8,0.5)*ANGLES(RAD(10),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0,CF(0,1.4,-0.4)*ANGLES(RAD(-25),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.4,-0.2,0.2)*ANGLES(RAD(20),RAD(-20),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(0,-1.1,-0.5)*ANGLES(RAD(90),RAD(0),RAD(180))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(-1.5,0.2,0)*ANGLES(RAD(-0.3),RAD(-2.6),RAD(-14.8))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0,CF(0.5,-1.5,-0.1)*ANGLES(RAD(-45),RAD(-5),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0,CF(-0.5,-1.8,0.2)*ANGLES(RAD(-15),RAD(5),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1 / ANIM_SPEED)
		end
		BOOST = false
		USEDEFAULTANIMATIONS = true
		HUM.WalkSpeed = 5
		HUM.JumpPower = 85
	end
end

function GrabBazooka()
	if HASBAZOOKAEQUIPPED == false then
		local ONCOOLDOWN = false
		NewSound({ID = 171140306,PARENT = ROOT,VOLUME = 1,PITCH = MRANDOM(9,11)/15,LOOP = false,MAXDISTANCE = 75,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
		HASBAZOOKAEQUIPPED = true
		BAZOOKAWELD.Part0 = RIGHTARM
		BAZOOKAWELD.C0 = CF(-0.4,-0.9,-0.7)*ANGLES(RAD(-88.7),RAD(4.8),RAD(-15.1))*ANGLES(RAD(0),RAD(0),RAD(0))
		local Fire = function()
			local LOCKONTOPART = nil
			if MOUSEHIT then
				local HUM = MOUSEHIT.Parent:FindFirstChildOfClass("Humanoid") or MOUSEHIT.Parent.Parent:FindFirstChildOfClass("Humanoid")
				if HUM then
					if HUM.Health > 0 and HUM.Torso then
						LOCKONTOPART = HUM.Torso
					end
				end
			end
			local GOTO = m.hit.p
			local ROCKET = MISILEPROP:Clone()
			ROCKET.Parent = Effects
			ROCKET.CFrame = CF(BAZOOKA.CFrame*CF(0,0,-2).p,GOTO)
			NewSound({ID = 440145223,PARENT = BAZOOKA,VOLUME = 5,PITCH = MRANDOM(9,11)/10,LOOP = false,MAXDISTANCE = 80,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			NewSound({ID = 440145223,PARENT = ROCKET,VOLUME = 5,PITCH = MRANDOM(9,11)/10,LOOP = false,MAXDISTANCE = 80,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			for i = 1, 200 do
				Swait()
				local HIT,POS = Raycast(ROCKET.Position,ROCKET.CFrame.lookVector,4,CHARACTER)
				if HIT then
					ROCKET.CFrame = CF(POS)
					break
				end
				if LOCKONTOPART then
					ROCKET.CFrame = Clerp(ROCKET.CFrame,CF(ROCKET.Position,LOCKONTOPART.Position),0.2)*CF(0,0,-2.25)
				else
					ROCKET.CFrame = ROCKET.CFrame*CF(0,0,-3)
				end
			end
			ROCKET.Transparency = 1
			ROCKET.Hind:Remove()
			ROCKET.CFrame = CF(ROCKET.Position)
			ROCKET.Size = VT(0,0,0)
			NewSound({ID = 142070127,PARENT = ROCKET,VOLUME = 7,PITCH = MRANDOM(8,12)/10,LOOP = false,MAXDISTANCE = 300,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			local B = IT("Explosion")
			B.BlastPressure = 0
			B.BlastRadius = 15
			B.Position = ROCKET.Position
			B.Parent = workspace
			CameraShake(ROCKET.Position,55,2,7)
			Debris:AddItem(ROCKET,2)
		end
		wait(0.5)
		game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
			if KeyPressed == "v" and ATTACKING == false and USEDEFAULTANIMATIONS == true and HASBAZOOKAEQUIPPED == true then
				wait(0.1)
				NewSound({ID = 171140306,PARENT = ROOT,VOLUME = 1,PITCH = MRANDOM(9,11)/15,LOOP = false,MAXDISTANCE = 75,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
				HASBAZOOKAEQUIPPED = false
				BAZOOKAWELD.Part0 = TORSO
				BAZOOKAWELD.C0 = BC0
			end
		end)
		game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function(KeyPressed)
			if ATTACKING == false then
				if HASBAZOOKAEQUIPPED == true and ONCOOLDOWN == false then
					ONCOOLDOWN = true
					RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.5,0.4,0.7)*ANGLES(RAD(90),RAD(15),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),2.5 / ANIM_SPEED)
					LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(0.5,0.3,-0.9)*ANGLES(RAD(91.4),RAD(-16.9),RAD(19.9))*ANGLES(RAD(0),RAD(0),RAD(0)),2.5 / ANIM_SPEED)
					coroutine.resume(coroutine.create(function()
						wait(0.25)
						ONCOOLDOWN = false
					end))
					Fire()
				end
			end
		end)
	end
end

--//====================================================\\--
--||                       WRAP
--\\====================================================//--

game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function(KeyPressed)
	if ATTACKING == false then
		if HASBAZOOKAEQUIPPED == false then
			MOUSEHOLD = true
			Fire()
		end
	end
end)

game.Players.LocalPlayer:GetMouse().Button1Up:Connect(function(KeyPressed)
	MOUSEHOLD = false
end)
 
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
	if KeyPressed == "v" and ATTACKING == false and USEDEFAULTANIMATIONS == true and HASBAZOOKAEQUIPPED == false then
		GrabBazooka()
	elseif KeyPressed == "c" and ATTACKING == false and HASBAZOOKAEQUIPPED == false then
		LooseBike()
	elseif KeyPressed == "x" and ATTACKING == false and HASBAZOOKAEQUIPPED == false then
		Molotov()
	elseif KeyPressed == "z" and ATTACKING == false and HASBAZOOKAEQUIPPED == false then
		Boost()
	end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
	if KeyPressed == "t" then
		NewSound({ID = 159882462,PARENT = ROOT,VOLUME = 10,PITCH = 1,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 50,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
	elseif KeyPressed == "y" then
		NewSound({ID = 463770058,PARENT = ROOT,VOLUME = 10,PITCH = 1,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 50,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
	elseif KeyPressed == "u" then
		NewSound({ID = 159882546,PARENT = ROOT,VOLUME = 10,PITCH = 1,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 50,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
	elseif KeyPressed == "g" then
		NewSound({ID = 159882441,PARENT = ROOT,VOLUME = 10,PITCH = 1,LOOP = false,MAXDISTANCE = 125,EMITTERSIZE = 50,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
	end
end)


game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
	if KeyPressed == "e" then
		if ROOT:FindFirstChild("BGM_MUSIC") then
			ROOT:FindFirstChild("BGM_MUSIC"):Remove()
		else
			local M = NewSound({ID = TRACKS[TRACK][1],PARENT = ROOT,VOLUME = TRACKS[TRACK][2],PITCH = 1,LOOP = true,MAXDISTANCE = 300,EMITTERSIZE = 300,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
			M.Name = "BGM_MUSIC"
		end
	end
end)

--==============================================

local M = NewSound({ID = 2598781800,PARENT = ROOT,VOLUME = 2.75,PITCH = 1,LOOP = true,MAXDISTANCE = 300,EMITTERSIZE = 300,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
M.Name = "BGM_MUSIC"

HUM.PlatformStand = false
script.Parent = PLAYER.Backpack
HUM.WalkSpeed = 5
HUM.JumpPower = 85
while true do
	Swait()
	SINE = SINE + CHANGE
	if CHARACTER:FindFirstChild("Animate") then
		CHARACTER:FindFirstChild("Animate"):Destroy()
	end
	if CHARACTER:FindFirstChild("Sound") then
		CHARACTER:FindFirstChild("Sound"):Destroy()
	end
	for _,v in next, HUM:GetPlayingAnimationTracks() do
		v:Stop();
	end
	local TORSOVELOCITY = (ROOT.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = ROOT.Velocity.y
	local HITFLOOR = Raycast(ROOT.Position, (CF(ROOT.Position, ROOT.Position + VT(0, -1, 0))).lookVector, 4+HUM.HipHeight, CHARACTER)
	local WALKSPEEDVALUE = 4 / (HUM.WalkSpeed / 16)
	if ROOT:FindFirstChild("MOTORHUM") == nil then
		MOTORHUM = NewSound({ID = 122292723,PARENT = ROOT,VOLUME = 1.5,PITCH = 1,LOOP = true,MAXDISTANCE = 125,EMITTERSIZE = 15,PLAYING = true,PLAYONREMOVE = false,DOESDEBRIS = true})
		MOTORHUM.Name = "MOTORHUM"
	else
		if ROOT:FindFirstChild("MOTORHUM").Playing == false then
			ROOT:FindFirstChild("MOTORHUM").Playing = true
		end
	end
	local SPINVELOCITY = -ROOT.RotVelocity.Y/12.5
	if HASBAZOOKAEQUIPPED == true then
		RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.5,0.4,0.3)*ANGLES(RAD(90),RAD(15),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
		SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(0,-1.1,0.2)*ANGLES(RAD(10),RAD(0),RAD(-180))*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
		LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(0.5,0.3,-1.3)*ANGLES(RAD(91.4),RAD(-16.9),RAD(19.9))*ANGLES(RAD(0),RAD(0),RAD(0)),0.5 / ANIM_SPEED)
	end
	if TORSOVELOCITY > 0.5 then
		ANIM = "Drive"
	else
		ANIM = "Idle"
	end
	if HITFLOOR then
		if TORSOVELOCITY < 1 and HITFLOOR ~= nil then
			MOTOR.Dust.Dust.Enabled = false
			if USEDEFAULTANIMATIONS == true then
				ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,CF(-0.6,0.2,0.6)*ANGLES(RAD(0),RAD(15),RAD(10))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
				NECK.C0 = Clerp(NECK.C0,CF(0,1.5,0)*ANGLES(RAD(0),RAD(-15),RAD(-5))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
				MOTORWELD.C0 = Clerp(MOTORWELD.C0,CF(0.5,-1.5,-0.5)*ANGLES(RAD(-2.7),RAD(-14.8),RAD(-5.3))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
				if HASBAZOOKAEQUIPPED == false then
					RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.4,0.3,0.4)*ANGLES(RAD(31.3),RAD(-39.9),RAD(55.5))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
					SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(-0.1,-1.1,-0.4)*ANGLES(RAD(98.3),RAD(-4.8),RAD(-168.1))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
					LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(-1.5,0.3,-0.65)*ANGLES(RAD(89.9),RAD(-4.8),RAD(15))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
				end
				RIGHTHIP.C0 = Clerp(RIGHTHIP.C0,CF(1.2,-1.6,0.1)*ANGLES(RAD(-14.6),RAD(-11.9),RAD(-14.6))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
				LEFTHIP.C0 = Clerp(LEFTHIP.C0,CF(-0.7,-2.2,0)*ANGLES(RAD(3.7),RAD(-1.1),RAD(-14.5))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
			end
		elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
			MOTOR.Dust.Dust.Enabled = true
			if USEDEFAULTANIMATIONS == true then
				ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,CF(0,0.5,0.5)*ANGLES(RAD(-15),RAD(0)-SPINVELOCITY/6,RAD(0)-SPINVELOCITY/2)*ANGLES(RAD(0),RAD(0),RAD(0)),0.4 / ANIM_SPEED)
				NECK.C0 = Clerp(NECK.C0,CF(0,1.425,0.1)*ANGLES(RAD(15),RAD(0)-SPINVELOCITY/2,RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),0.4 / ANIM_SPEED)
				MOTORWELD.C0 = Clerp(MOTORWELD.C0,CF(0,-1.5,-0.9)*ANGLES(RAD(15),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),0.4 / ANIM_SPEED)
				if HASBAZOOKAEQUIPPED == false then
					RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.7,0.1,-0.1)*ANGLES(RAD(47.7),RAD(-32.8),RAD(49.9))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
					SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(0,-1.1,-0.5)*ANGLES(RAD(90),RAD(0),RAD(-180))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
					LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(-1.5,0.3,0)*ANGLES(RAD(89.9),RAD(-4.8),RAD(-1.3))*ANGLES(RAD(0),RAD(0),RAD(0)),0.4 / ANIM_SPEED)
				end
				RIGHTHIP.C0 = Clerp(RIGHTHIP.C0,CF(0.7,-1.5,-0.6)*ANGLES(RAD(-15),RAD(0),RAD(10))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
				LEFTHIP.C0 = Clerp(LEFTHIP.C0,CF(-0.7,-1.5,-0.6)*ANGLES(RAD(-15),RAD(0),RAD(-10))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
			end
		end
	else
		MOTOR.Dust.Dust.Enabled = false
		if USEDEFAULTANIMATIONS == true then
			ROOTJOINT.C0 = Clerp(ROOTJOINT.C0,CF(0,0.5,0.6)*ANGLES(RAD(10.2),RAD(9.8),RAD(-1.8))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
			NECK.C0 = Clerp(NECK.C0,CF(0,1.5,-0.3)*ANGLES(RAD(-15.1),RAD(-10),RAD(-0.9))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
			MOTORWELD.C0 = Clerp(MOTORWELD.C0,CF(0.1,-1.5,-0.3)*ANGLES(RAD(0.2),RAD(-9.8),RAD(1.8))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
			if HASBAZOOKAEQUIPPED == false then
				RIGHTSHOULDER.C0 = Clerp(RIGHTSHOULDER.C0,CF(1.3,0.4,-0.2)*ANGLES(RAD(146),RAD(32.6),RAD(13.5))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
				SMGGRIP.C0 = Clerp(SMGGRIP.C0,CF(0,-0.9,-0.4)*ANGLES(RAD(103.5),RAD(6.2),RAD(-178.6))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
				LEFTSHOULDER.C0 = Clerp(LEFTSHOULDER.C0,CF(-1.4,0.3,0)*ANGLES(RAD(75),RAD(0),RAD(0))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
			end
			RIGHTHIP.C0 = Clerp(RIGHTHIP.C0,CF(0.8,-1.6,0.1)*ANGLES(RAD(-40.2),RAD(-16.1),RAD(8))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
			LEFTHIP.C0 = Clerp(LEFTHIP.C0,CF(-0.8,-1.6,0)*ANGLES(RAD(-33.9),RAD(-1.7),RAD(-17.1))*ANGLES(RAD(0),RAD(0),RAD(0)),1.2 / ANIM_SPEED)
		end
	end
	for i = 1, #WHEELJOINTS do
		WHEELJOINTS[i].C1 = ANGLES(RAD((HUM.WalkSpeed-5)),0,0) * WHEELJOINTS[i].C1
	end
	if LOCKEDSPEED == 75 then
		MOTOR.Safelock.Light.Enabled = true
	else
		MOTOR.Safelock.Light.Enabled = false
	end
	if BOOST == false then
		if ANIM == "Drive" then
			if HUM.WalkSpeed < LOCKEDSPEED then
				HUM.WalkSpeed = HUM.WalkSpeed + 0.75
			else
				HUM.WalkSpeed = LOCKEDSPEED
			end
		else
			if HUM.WalkSpeed > 5 then
				HUM.WalkSpeed = HUM.WalkSpeed - 3.75
			else
				HUM.WalkSpeed = 5
			end
		end
	end
	MOTORHUM.Pitch = HUM.WalkSpeed/10
	if MOTORHUM.Pitch > 3.25 then
		MOTORHUM.Pitch = 3.25
	end
	HUM.Sit = false
	HUM.PlatformStand = false
end