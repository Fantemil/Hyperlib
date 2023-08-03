
--made by someone idk
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
Sound2 = Instance.new("Sound")
SpecialMesh3 = Instance.new("SpecialMesh")
Sound4 = Instance.new("Sound")
Sound5 = Instance.new("Sound")
Sound6 = Instance.new("Sound")
Sound7 = Instance.new("Sound")
Sound8 = Instance.new("Sound")
Sound9 = Instance.new("Sound")
Sound10 = Instance.new("Sound")
SpecialMesh11 = Instance.new("SpecialMesh")
SpecialMesh12 = Instance.new("SpecialMesh")
Script13 = Instance.new("Script")
Tool0.Name = "Chainsaw"
Tool0.Parent = mas
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.CFrame = CFrame.new(-3.48895264, 1.97499847, -15.9500732, -0.999999523, -1.49018888e-07, 8.4659348e-08, 8.4659348e-08, -2.68221868e-07, -0.999999881, -1.49018888e-07, -0.999999762, -2.68221868e-07)
Part1.Orientation = Vector3.new(89.97000122070312, 162.47999572753906, 162.47999572753906)
Part1.Position = Vector3.new(-3.48895263671875, 1.9749984741210938, -15.9500732421875)
Part1.Rotation = Vector3.new(90, 0, 180)
Part1.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part1.Size = Vector3.new(0.20000000298023224, 0.8800003528594971, 3.9499998092651367)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Dark stone grey")
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Dark stone grey")
Part1.FormFactor = Enum.FormFactor.Custom
Part1.formFactor = Enum.FormFactor.Custom
Sound2.Name = "Hit"
Sound2.Parent = Part1
Sound2.SoundId = "rbxassetid://3848646775"
Sound2.Volume = 0.10000000149011612
SpecialMesh3.Name = "KnifeMesh"
SpecialMesh3.Parent = Sound2
SpecialMesh3.MeshId = "rbxassetid://536945307"
SpecialMesh3.Offset = Vector3.new(0, -0.20000000298023224, 0)
SpecialMesh3.Scale = Vector3.new(0.11100000143051147, 0.11100000143051147, 0.11100000143051147)
SpecialMesh3.TextureId = "rbxassetid://536945378"
SpecialMesh3.MeshType = Enum.MeshType.FileMesh
Sound4.Name = "Charge"
Sound4.Parent = Part1
Sound4.Looped = true
Sound4.SoundId = "rbxassetid://3848643367"
Sound4.Volume = 0.10000000149011612
Sound5.Name = "Idle"
Sound5.Parent = Part1
Sound5.Looped = true
Sound5.SoundId = "rbxassetid://3848642339"
Sound5.Volume = 0.10000000149011612
Sound6.Name = "Equip"
Sound6.Parent = Part1
Sound6.SoundId = "rbxassetid://3848640975"
Sound6.Volume = 0.10000000149011612
Sound7.Name = "Crush"
Sound7.Parent = Part1
Sound7.SoundId = "rbxassetid://4459571342"
Sound7.Volume = 0.10000000149011612
Sound8.Name = "Swoosh"
Sound8.Parent = Part1
Sound8.SoundId = "rbxassetid://3755636438"
Sound8.Volume = 0.10000000149011612
Sound9.Name = "Crush2"
Sound9.Parent = Part1
Sound9.SoundId = "rbxassetid://4459573786"
Sound9.Volume = 0.10000000149011612
Sound10.Name = "Crush3"
Sound10.Parent = Part1
Sound10.SoundId = "rbxassetid://4459571443"
Sound10.Volume = 0.10000000149011612
SpecialMesh11.Parent = Part1
SpecialMesh11.MeshId = "http://roblox.com/asset/?id=2766469"
SpecialMesh11.TextureId = "http://www.roblox.com/asset/?id=184182370"
SpecialMesh11.MeshType = Enum.MeshType.FileMesh
SpecialMesh12.Name = "KnifeMesh"
SpecialMesh12.Parent = Part1
SpecialMesh12.MeshId = "rbxassetid://536945307"
SpecialMesh12.Offset = Vector3.new(0, -0.20000000298023224, 0)
SpecialMesh12.Scale = Vector3.new(0.11100000143051147, 0.11100000143051147, 0.11100000143051147)
SpecialMesh12.TextureId = "rbxassetid://536945378"
SpecialMesh12.MeshType = Enum.MeshType.FileMesh
Script13.Parent = Tool0
table.insert(cors,sandbox(Script13,function()
--By Rufus14
canattack = true
cananimate = false
equipped = false
tool = script.Parent
handle = tool.Handle
equipsound = handle.Equip
charge = handle.Charge
swishsound = handle.Swoosh
hitsound = handle.Hit
idlesound = handle.Idle
goresound = handle.Crush
goresound3 = handle.Crush3
goresound2 = handle.Crush2
goreplaying = false
owner = nil
character = nil
mouseclick = false
attacknumber = 1
swingspeed = 0.03
counter = 0
gotsomeone = false
runservice = game:GetService("RunService")
--
tool.Activated:connect(function()
	mouseclick = true
end)
tool.Deactivated:connect(function()
	mouseclick = false
end)
--
function ragdollkill(character)
	local victimshumanoid = character:findFirstChildOfClass("Humanoid")
	local checkragd = character:findFirstChild("ragded")
	if not checkragd then
		local boolvalue = Instance.new("BoolValue", character)
		boolvalue.Name = "ragded"
		if not character:findFirstChild("UpperTorso") then
			local ragdollmodel = Instance.new("Model", workspace)
			ragdollmodel.Name = character.Name
			character.Archivable = true
			for i,v in pairs(character:GetChildren()) do
				if v.ClassName == "Sound" then
					v:remove()
				end
				for q,w in pairs(v:GetChildren()) do
					if w.ClassName == "Sound" then
						w:remove()
					end
				end
			end
			local ragdollright = character:Clone()
			local ragdollleft = character:Clone()
			for i,v in pairs(ragdollright:GetDescendants()) do
				if v.ClassName == "Motor" or v.ClassName == "Motor6D" then
					v:destroy()
				end
			end
			ragdollright:findFirstChildOfClass("Humanoid").BreakJointsOnDeath = false
			ragdollright:findFirstChildOfClass("Humanoid").Health = 0
			if ragdollright:findFirstChild("Health") then
				if ragdollright:findFirstChild("Health").ClassName == "Script" then
					ragdollright:findFirstChild("Health").Disabled = true
				end
			end
			--
			for i,v in pairs(ragdollleft:GetDescendants()) do
				if v.ClassName == "Motor" or v.ClassName == "Motor6D" then
					v:destroy()
				end
			end
			ragdollleft:findFirstChildOfClass("Humanoid").BreakJointsOnDeath = false
			ragdollleft:findFirstChildOfClass("Humanoid").Health = 0
			if ragdollleft:findFirstChild("Health") then
				if ragdollleft:findFirstChild("Health").ClassName == "Script" then
					ragdollright:findFirstChild("Health").Disabled = true
				end
			end
			for i,v in pairs(character:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "ForceField" or v.ClassName == "Accessory" or v.ClassName == "Hat" then
					v:destroy()
				end
			end
			for i,v in pairs(character:GetChildren()) do
				if v.ClassName == "Accessory" then
					local attachment1 = v.Handle:findFirstChildOfClass("Attachment")
					if attachment1 then
						for q,w in pairs(character:GetChildren()) do
							if w.ClassName == "Part" then
								local attachment2 = w:findFirstChild(attachment1.Name)
								if attachment2 then
									local hinge = Instance.new("HingeConstraint", v.Handle)
									hinge.Attachment0 = attachment1
									hinge.Attachment1 = attachment2
									hinge.LimitsEnabled = true
									hinge.LowerAngle = 0
									hinge.UpperAngle = 0
								end
							end
						end
					end
				end
			end
			ragdollright.Parent = ragdollmodel
			ragdollleft.Parent = ragdollmodel
			--
			ragdollleft.Torso.Transparency = 0.01
			ragdollright.Torso.Transparency = 0.01
			if ragdollleft:findFirstChild("HumanoidRootPart") then
				ragdollleft:findFirstChild("HumanoidRootPart").Transparency = 1
			end
			--
			local leftinvisible = Instance.new("Part", ragdollmodel)
			leftinvisible.Size = Vector3.new(1.1,2.1,1.1)
			leftinvisible.Material = "Glass"
			leftinvisible.CanCollide = false
			leftinvisible.Transparency = 0.999
			local leftweld = Instance.new("Weld", leftinvisible)
			leftweld.Part0 = ragdollleft.Torso
			leftweld.Part1 = leftinvisible
			leftweld.C0 = CFrame.new(0.5,0,0)
			local leftred = Instance.new("Part", ragdollleft.Torso)
			leftred.Size = Vector3.new(0.925,1.925,0.925)
			leftred.Material = "Pebble"
			leftred.CanCollide = false
			leftred.BrickColor = BrickColor.new("Maroon")
			local leftredweld = Instance.new("Weld", leftred)
			leftredweld.Part0 = ragdollleft.Torso
			leftredweld.Part1 = leftred
			leftredweld.C0 = CFrame.new(-0.5,0,0)
			--
			local rightinvisible = Instance.new("Part", ragdollmodel)
			rightinvisible.Size = Vector3.new(1.1,2.1,1.1)
			rightinvisible.Material = "Glass"
			rightinvisible.CanCollide = false
			rightinvisible.Transparency = 0.999
			local rightweld = Instance.new("Weld", rightinvisible)
			rightweld.Part0 = ragdollright.Torso
			rightweld.Part1 = rightinvisible
			rightweld.C0 = CFrame.new(-0.5,0,0)
			local rightred = Instance.new("Part", ragdollright.Torso)
			rightred.Size = Vector3.new(0.925,1.925,0.925)
			rightred.Material = "Pebble"
			rightred.CanCollide = false
			rightred.BrickColor = BrickColor.new("Maroon")
			local rightredweld = Instance.new("Weld", rightred)
			rightredweld.Part0 = ragdollright.Torso
			rightredweld.Part1 = rightred
			rightredweld.C0 = CFrame.new(0.5,0,0)
			--
			if ragdollleft:findFirstChild("Right Arm") then
				ragdollleft["Right Arm"]:destroy()
			end
			if ragdollright:findFirstChild("Right Arm") then
				local glue = Instance.new("Glue", ragdollright.Torso)
				glue.Part0 = ragdollright.Torso
				glue.Part1 = ragdollright:findFirstChild("Right Arm")
				glue.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
				glue.C1 = CFrame.new(0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
				local limbcollider = Instance.new("Part", ragdollright:findFirstChild("Right Arm"))
				limbcollider.Size = Vector3.new(1.4,1,1)
				limbcollider.Shape = "Cylinder"
				limbcollider.Transparency = 1
				limbcollider.Name = "LimbCollider"
				local limbcolliderweld = Instance.new("Weld", limbcollider)
				limbcolliderweld.Part0 = ragdollright:findFirstChild("Right Arm")
				limbcolliderweld.Part1 = limbcollider
				limbcolliderweld.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.pi/2) * CFrame.new(-0.3,0,0)
			end
			if ragdollright:findFirstChild("Left Arm") then
				ragdollright["Left Arm"]:destroy()
			end
			if ragdollleft:findFirstChild("Left Arm") then
				local glue = Instance.new("Glue", ragdollleft.Torso)
				glue.Part0 = ragdollleft.Torso
				glue.Part1 = ragdollleft:findFirstChild("Left Arm")
				glue.C0 = CFrame.new(-1.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				glue.C1 = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local limbcollider = Instance.new("Part", ragdollleft:findFirstChild("Left Arm"))
				limbcollider.Size = Vector3.new(1.4,1,1)
				limbcollider.Shape = "Cylinder"
				limbcollider.Name = "LimbCollider"
				limbcollider.Transparency = 1
				local limbcolliderweld = Instance.new("Weld", limbcollider)
				limbcolliderweld.Part0 = ragdollleft:findFirstChild("Left Arm")
				limbcolliderweld.Part1 = limbcollider
				limbcolliderweld.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.pi/2) * CFrame.new(-0.3,0,0)
			end
			if ragdollright:findFirstChild("Left Leg") then
				ragdollright["Left Leg"]:destroy()
			end
			if ragdollleft:findFirstChild("Left Leg") then
				local glue = Instance.new("Glue", ragdollleft.Torso)
				glue.Part0 = ragdollleft.Torso
				glue.Part1 = ragdollleft:findFirstChild("Left Leg")
				glue.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				glue.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				local limbcollider = Instance.new("Part", ragdollleft:findFirstChild("Left Leg"))
				limbcollider.Size = Vector3.new(1.4,1,1)
				limbcollider.Shape = "Cylinder"
				limbcollider.Name = "LimbCollider"
				limbcollider.Transparency = 1
				local limbcolliderweld = Instance.new("Weld", limbcollider)
				limbcolliderweld.Part0 = ragdollleft:findFirstChild("Left Leg")
				limbcolliderweld.Part1 = limbcollider
				limbcolliderweld.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.pi/2) * CFrame.new(-0.3,0,0)
			end
			if ragdollleft:findFirstChild("Right Leg") then
				ragdollleft["Right Leg"]:destroy()
			end
			if ragdollright:findFirstChild("Right Leg") then
				local glue = Instance.new("Glue", ragdollright.Torso)
				glue.Part0 = ragdollright.Torso
				glue.Part1 = ragdollright:findFirstChild("Right Leg")
				glue.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				glue.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				local limbcollider = Instance.new("Part", ragdollright:findFirstChild("Right Leg"))
				limbcollider.Size = Vector3.new(1.4,1,1)
				limbcollider.Shape = "Cylinder"
				limbcollider.Name = "LimbCollider"
				limbcollider.Transparency = 1
				local limbcolliderweld = Instance.new("Weld", limbcollider)
				limbcolliderweld.Part0 = ragdollright:findFirstChild("Right Leg")
				limbcolliderweld.Part1 = limbcollider
				limbcolliderweld.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.pi/2) * CFrame.new(-0.3,0,0)
			end
			if ragdollleft:findFirstChild("Head") then
				ragdollleft["Head"]:destroy()
			end
			if ragdollright:findFirstChild("Head") and ragdollright.Torso:findFirstChild("NeckAttachment") then
				local HeadAttachment = Instance.new("Attachment", ragdollright["Head"])
				HeadAttachment.Position = Vector3.new(0, -0.5, 0)
				local connection = Instance.new('HingeConstraint', ragdollright["Head"])
				connection.LimitsEnabled = true
				connection.Attachment0 = ragdollright.Torso.NeckAttachment
				connection.Attachment1 = HeadAttachment
				connection.UpperAngle = 60
				connection.LowerAngle = -60
			elseif ragdollright:findFirstChild("Head") and not ragdollright.Torso:findFirstChild("NeckAttachment") then
				local hedweld = Instance.new("Weld", ragdollright.Torso)
				hedweld.Part0 = ragdollright.Torso
				hedweld.Part1 = ragdollright.Head
				hedweld.C0 = CFrame.new(0,1.5,0)
			end
			game.Debris:AddItem(ragdollmodel, 30)
			local function aaaalol()
				wait(0.2)
				local function searchforvelocity(wot)
					for i,v in pairs(wot:GetChildren()) do
						searchforvelocity(v)
						if v.ClassName == "BodyPosition" or v.ClassName == "BodyVelocity" then
							v:destroy()
						end
					end
				end
				searchforvelocity(ragdollleft)
				searchforvelocity(ragdollright)
				wait(0.5)
				if ragdollleft:findFirstChildOfClass("Humanoid") then
					ragdollleft:findFirstChildOfClass("Humanoid").PlatformStand = true
				end
				if ragdollleft:findFirstChild("HumanoidRootPart") then
					ragdollleft:findFirstChild("HumanoidRootPart"):destroy()
				end
				if ragdollright:findFirstChildOfClass("Humanoid") then
					ragdollright:findFirstChildOfClass("Humanoid").PlatformStand = true
				end
				if ragdollright:findFirstChild("HumanoidRootPart") then
					ragdollright:findFirstChild("HumanoidRootPart"):destroy()
				end
			end
			spawn(aaaalol)
		elseif character:findFirstChild("UpperTorso") then
			character.Archivable = true
			for i,v in pairs(character:GetChildren()) do
				if v.ClassName == "Sound" then
					v:remove()
				end
				for q,w in pairs(v:GetChildren()) do
					if w.ClassName == "Sound" then
						w:remove()
					end
				end
			end
			local ragdoll = character:Clone()
			ragdoll:findFirstChildOfClass("Humanoid").BreakJointsOnDeath = false
			for i,v in pairs(ragdoll:GetDescendants()) do
				if v.ClassName == "Motor" or v.ClassName == "Motor6D" then
					v:destroy()
				end
			end
			ragdoll:BreakJoints()
			ragdoll:findFirstChildOfClass("Humanoid").Health = 0
			if ragdoll:findFirstChild("Health") then
				if ragdoll:findFirstChild("Health").ClassName == "Script" then
					ragdoll:findFirstChild("Health").Disabled = true
				end
			end
			for i,v in pairs(character:GetChildren()) do
				if v.ClassName == "Part" or v.ClassName == "ForceField" or v.ClassName == "Accessory" or v.ClassName == "Hat" or v.ClassName == "MeshPart" then
					v:destroy()
				end
			end
			for i,v in pairs(character:GetChildren()) do
				if v.ClassName == "Accessory" then
					local attachment1 = v.Handle:findFirstChildOfClass("Attachment")
					if attachment1 then
						for q,w in pairs(character:GetChildren()) do
							if w.ClassName == "Part" or w.ClassName == "MeshPart" then
								local attachment2 = w:findFirstChild(attachment1.Name)
								if attachment2 then
									local hinge = Instance.new("HingeConstraint", v.Handle)
									hinge.Attachment0 = attachment1
									hinge.Attachment1 = attachment2
									hinge.LimitsEnabled = true
									hinge.LowerAngle = 0
									hinge.UpperAngle = 0
								end
							end
						end
					end
				end
			end
			ragdoll.Parent = workspace
			local Humanoid = ragdoll:findFirstChildOfClass("Humanoid")
			Humanoid.PlatformStand = true
			local function makeballconnections(limb, attachementone, attachmenttwo, twistlower, twistupper)
				local connection = Instance.new('BallSocketConstraint', limb)
				connection.LimitsEnabled = true
				connection.Attachment0 = attachementone
				connection.Attachment1 = attachmenttwo
				connection.TwistLimitsEnabled = true
				connection.TwistLowerAngle = twistlower
				connection.TwistUpperAngle = twistupper
				local limbcollider = Instance.new("Part", limb)
				limbcollider.Size = Vector3.new(0.1,1,1)
				limbcollider.Shape = "Cylinder"
				limbcollider.Transparency = 1
				limbcollider:BreakJoints()
				local limbcolliderweld = Instance.new("Weld", limbcollider)
				limbcolliderweld.Part0 = limb
				limbcolliderweld.Part1 = limbcollider
				limbcolliderweld.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.pi/2)
			end
			local function makehingeconnections(limb, attachementone, attachmenttwo, lower, upper)
				local connection = Instance.new('HingeConstraint', limb)
				connection.LimitsEnabled = true
				connection.Attachment0 = attachementone
				connection.Attachment1 = attachmenttwo
				connection.LimitsEnabled = true
				connection.LowerAngle = lower
				connection.UpperAngle = upper
				local limbcollider = Instance.new("Part", limb)
				limbcollider.Size = Vector3.new(0.1,1,1)
				limbcollider.Shape = "Cylinder"
				limbcollider.Transparency = 1
				limbcollider:BreakJoints()
				local limbcolliderweld = Instance.new("Weld", limbcollider)
				limbcolliderweld.Part0 = limb
				limbcolliderweld.Part1 = limbcollider
				limbcolliderweld.C0 = CFrame.fromEulerAnglesXYZ(0,0,math.pi/2)
			end
			local HeadAttachment = Instance.new("Attachment", Humanoid.Parent.Head)
			HeadAttachment.Position = Vector3.new(0, -0.5, 0)
			if ragdoll.UpperTorso:findFirstChild("NeckAttachment") then
				makehingeconnections(Humanoid.Parent.Head, HeadAttachment, ragdoll.UpperTorso.NeckAttachment, -50, 50)
			end
			makehingeconnections(Humanoid.Parent.LowerTorso, Humanoid.Parent.LowerTorso.WaistRigAttachment, Humanoid.Parent.UpperTorso.WaistRigAttachment, -50, 50)
			makeballconnections(Humanoid.Parent.LeftUpperArm, Humanoid.Parent.LeftUpperArm.LeftShoulderRigAttachment, Humanoid.Parent.UpperTorso.LeftShoulderRigAttachment, -200, 200, 180)
			makehingeconnections(Humanoid.Parent.LeftLowerArm, Humanoid.Parent.LeftLowerArm.LeftElbowRigAttachment, Humanoid.Parent.LeftUpperArm.LeftElbowRigAttachment, 0, -60)
			makehingeconnections(Humanoid.Parent.LeftHand, Humanoid.Parent.LeftHand.LeftWristRigAttachment, Humanoid.Parent.LeftLowerArm.LeftWristRigAttachment, -20, 20)
			--
			makeballconnections(Humanoid.Parent.RightUpperArm, Humanoid.Parent.RightUpperArm.RightShoulderRigAttachment, Humanoid.Parent.UpperTorso.RightShoulderRigAttachment, -200, 200, 180)
			makehingeconnections(Humanoid.Parent.RightLowerArm, Humanoid.Parent.RightLowerArm.RightElbowRigAttachment, Humanoid.Parent.RightUpperArm.RightElbowRigAttachment, 0, -60)
			makehingeconnections(Humanoid.Parent.RightHand, Humanoid.Parent.RightHand.RightWristRigAttachment, Humanoid.Parent.RightLowerArm.RightWristRigAttachment, -20, 20)
			--
			makeballconnections(Humanoid.Parent.RightUpperLeg, Humanoid.Parent.RightUpperLeg.RightHipRigAttachment, Humanoid.Parent.LowerTorso.RightHipRigAttachment, -80, 80, 80)
			makehingeconnections(Humanoid.Parent.RightLowerLeg, Humanoid.Parent.RightLowerLeg.RightKneeRigAttachment, Humanoid.Parent.RightUpperLeg.RightKneeRigAttachment, 0, 60)
			makehingeconnections(Humanoid.Parent.RightFoot, Humanoid.Parent.RightFoot.RightAnkleRigAttachment, Humanoid.Parent.RightLowerLeg.RightAnkleRigAttachment, -20, 20)
			--
			makeballconnections(Humanoid.Parent.LeftUpperLeg, Humanoid.Parent.LeftUpperLeg.LeftHipRigAttachment, Humanoid.Parent.LowerTorso.LeftHipRigAttachment, -80, 80, 80)
			makehingeconnections(Humanoid.Parent.LeftLowerLeg, Humanoid.Parent.LeftLowerLeg.LeftKneeRigAttachment, Humanoid.Parent.LeftUpperLeg.LeftKneeRigAttachment, 0, 60)
			makehingeconnections(Humanoid.Parent.LeftFoot, Humanoid.Parent.LeftFoot.LeftAnkleRigAttachment, Humanoid.Parent.LeftLowerLeg.LeftAnkleRigAttachment, -20, 20)
			for i,v in pairs(Humanoid.Parent:GetChildren()) do
				if v.ClassName == "Accessory" then
					local attachment1 = v.Handle:findFirstChildOfClass("Attachment")
					if attachment1 then
						for q,w in pairs(Humanoid.Parent:GetChildren()) do
							if w.ClassName == "Part" then
								local attachment2 = w:findFirstChild(attachment1.Name)
								if attachment2 then
									local hinge = Instance.new("HingeConstraint", v.Handle)
									hinge.Attachment0 = attachment1
									hinge.Attachment1 = attachment2
									hinge.LimitsEnabled = true
									hinge.LowerAngle = 0
									hinge.UpperAngle = 0
								end
							end
						end
					end
				end
			end
			for i,v in pairs(ragdoll:GetChildren()) do
				for q,w in pairs(v:GetChildren()) do
					if w.ClassName == "Motor6D"--[[ and w.Name ~= "Neck"--]] and w.Name ~= "ouch_weld" then
						w:destroy()
					end
				end
			end
			if ragdoll:findFirstChild("HumanoidRootPart") then
				ragdoll.HumanoidRootPart:destroy()
			end
			if ragdoll:findFirstChildOfClass("Humanoid") then
				ragdoll:findFirstChildOfClass("Humanoid").PlatformStand = true
			end
			local function waitfordatmoment()
				wait(0.2)
				local function searchforvelocity(wot)
					for i,v in pairs(wot:GetChildren()) do
						searchforvelocity(v)
						if v.ClassName == "BodyPosition" or v.ClassName == "BodyVelocity" then
							v:destroy()
						end
					end
				end
				searchforvelocity(ragdoll)
			end
			spawn(waitfordatmoment)
			game.Debris:AddItem(ragdoll, 30)
		end
	end
end
function damage(dmg)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName == "Model" and v ~= character then
			local headdude = v:findFirstChild("Head")
			if headdude then
				if (headdude.Position - handle.Position).magnitude < 3.25 then
					if headdude.Parent ~= nil then
						local humm = v:findFirstChildOfClass("Humanoid")
						if humm then
							if humm.Parent ~= character then
								if humm.Health > 0 then
									gotsomeone = true
									charge.TimePosition = 1
									charge:Play()
									character.HumanoidRootPart.CFrame = CFrame.new(character.HumanoidRootPart.Position, Vector3.new(headdude.Position.x,character.HumanoidRootPart.Position.y,headdude.Position.z))
									humm.Health = humm.Health - dmg
									coroutine.wrap(function()
										wait()
										damage(dmg)
									end)()
									local rightarmweld = character.Torso:findFirstChild("RightArmWeldsaw")
									local leftarmweld = character.Torso:findFirstChild("LeftArmWeldsaw")
									local grip = character["Right Arm"]:WaitForChild("RightGrip")
									local headweld = character.Torso:findFirstChild("HeadWeldsaw")
									local rootweld = character.HumanoidRootPart:findFirstChild("HumanoidRootPartWeldsaw")
									local random = math.random(-10,10)/100
									grip.C0 = CFrame.new(-0.0732569695, -1.92370892, -0.641631603, 0.969727159, 0.0133714303, -0.243824616, 0.238927066, 0.154250577, 0.95870775, 0.050429374, -0.987941206, 0.146386176)
									headweld.C0 = CFrame.new(-0.0150766373, 1.49240398, 0.0855045319, 0.984807789, -0.0301536527, -0.171009883, -8.14907253e-10, 0.98480773, -0.173648179, 0.173647955, 0.171010077, 0.969846368)
									rootweld.C0 = CFrame.new(0, 0, 0, 0.984807789, -0.0301536173, 0.171009868, 0, 0.984807789, 0.17364797, -0.17364797, -0.171009868, 0.969846368)
									rightarmweld.C0 =  CFrame.new(1.23043251, 0.356081486, -0.816204071, 0.939692616, 0.342020154, -6.33299351e-08, -0.0593911633, 0.163175702, -0.98480767, -0.336824059, 0.925416589, 0.17364797) * CFrame.fromEulerAnglesXYZ(random,0,0)
									leftarmweld.C0 = CFrame.new(-0.310541153, 1.13866043, -1.10306931, 0.49999997, -0.813797772, 0.2961981, 0.15038377, -0.25523603, -0.95511198, 0.852868557, 0.522099376, -0.00523606688) * CFrame.fromEulerAnglesXYZ(random,0,0)
									if not goreplaying then
										goreplaying = true
										hitsound:Play()
										local goresounds = {goresound, goresound2, goresound3}
										local pickedsound = goresounds[math.random(1,#goresounds)]
										pickedsound:Play()
										coroutine.wrap(function()
											wait(pickedsound.TimeLength)
											goreplaying = false
										end)()
									end
								else
									ragdollkill(humm.Parent)
									counter = 0
									goreplaying = false
									gotsomeone = false
									canattack = false
									cananimate = false
									local grip = character["Right Arm"]:WaitForChild("RightGrip")
									local rightarmweld = character.Torso:findFirstChild("RightArmWeldsaw")
									local leftarmweld = character.Torso:findFirstChild("LeftArmWeldsaw")
									local headweld = character.Torso:findFirstChild("HeadWeldsaw")
									local rootweld = character.HumanoidRootPart:findFirstChild("HumanoidRootPartWeldsaw")
									for i = 0,1 , 0.07 do
										grip.C0 = grip.C0:lerp(CFrame.new(0.338353157, -2.24114323, -0.897329807, 0.928362608, 0.214593962, -0.303466737, 0.149478868, 0.531971872, 0.833463669, 0.340291977, -0.819118381, 0.461785525),i)
										rightarmweld.C0 = rightarmweld.C0:lerp(CFrame.new(1.18301249, 0.158493519, -0.591506004, 0.866025269, 0.49999994, -1.49011612e-08, -0.24999994, 0.433012664, -0.866025388, -0.433012694, 0.74999994, 0.499999851),i)
										leftarmweld.C0 = leftarmweld.C0:lerp(CFrame.new(-0.33951664, 0.407286167, -1.21828938, 0.649518967, -0.759164333, 0.0423575863, 0.0593911484, -0.00488249958, -0.998222709, 0.75802207, 0.650880337, 0.0419163257),i)
										rootweld.C0 = rootweld.C0:lerp(CFrame.new(0, 0, 0, 0.939692676, -0.0593911223, 0.336823821, 0, 0.98480773, 0.173648149, -0.342019886, -0.163175881, 0.925416589) * CFrame.fromEulerAnglesXYZ(0,math.rad(20),0),i)
										headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.939692497, -3.7252903e-09, -0.342020094, 1.97906047e-09, 0.999999881, 1.49011612e-08, 0.342020035, 1.49011612e-08, 0.939692438),i)
										runservice.Stepped:wait()
									end
									charge:Stop()
									canattack = true
									cananimate = true
								end
							end
						end
					end
				end
			end
		end
	end
end
tool.Unequipped:connect(function()
	equipped = false
	mouseclick = false
	cananimate = false
	idlesound:Stop()
	charge:Stop()
	if character.Torso:findFirstChild("LeftArmWeldsaw") then
		character.Torso:findFirstChild("LeftArmWeldsaw"):destroy()
	end
	if character.Torso:findFirstChild("RightArmWeldsaw") then
		character.Torso:findFirstChild("RightArmWeldsaw"):destroy()
	end
	if character.Torso:findFirstChild("HeadWeldsaw") then
		character.Torso:findFirstChild("HeadWeldsaw"):destroy()
	end
	if character:findFirstChild("HumanoidRootPart") then
		if character.HumanoidRootPart:findFirstChild("HumanoidRootPartWeldsaw") then
			character.HumanoidRootPart:findFirstChild("HumanoidRootPartWeldsaw"):destroy()
		end
	end
end)
tool.Equipped:connect(function()
	equipped = true
	cananimate = true
	canattack = false
	equipsound:Play()
	idlesound:Play()
	owner = game:GetService("Players"):GetPlayerFromCharacter(tool.Parent)
	character = owner.Character
	local grip = character["Right Arm"]:WaitForChild("RightGrip")
	local rightarm = Instance.new("Weld", character.Torso)
	rightarm.Part0 = character.Torso
	rightarm.Part1 = character["Right Arm"]
	rightarm.C0 = CFrame.new(1.5,0,0)
	rightarm.Name = "RightArmWeldsaw"
	local leftarm = Instance.new("Weld", character.Torso)
	leftarm.Part0 = character.Torso
	leftarm.Part1 = character["Left Arm"]
	leftarm.C0 = CFrame.new(-1.5,0,0)
	leftarm.Name = "LeftArmWeldsaw"
	local head = Instance.new("Weld", character.Torso)
	head.Part0 = character.Torso
	head.Part1 = character.Head
	head.C0 = CFrame.new(0,1.5,0)
	head.Name = "HeadWeldsaw"
	local humanoidrootpart = Instance.new("Weld", character.HumanoidRootPart)
	humanoidrootpart.Part0 = character.HumanoidRootPart
	humanoidrootpart.Part1 = character.Torso
	humanoidrootpart.Name = "HumanoidRootPartWeldsaw"
	for i = 0,1 , 0.07 do
		grip.C0 = grip.C0:lerp(CFrame.new(-1.05606174, -2.31819725, 0.326734543, 0.737709045, -0.431000441, 0.519638062, -0.593709648, -0.0477490723, 0.803261399, -0.321393758, -0.901087344, -0.291114032),i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.18301249, 0.266395807, -0.641820908, 0.866025329, 0.49999994, -2.98023224e-08, -0.171010047, 0.29619807, -0.939692497, -0.469846189, 0.813797653, 0.342020094),i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-0.961470604, 0.328989744, -0.685032845, 0.642787576, -0.719846189, -0.262002558, 0, 0.342020094, -0.939692497, 0.766044378, 0.604022741, 0.219846293),i)
		humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.342020094, 0, -0.939692616, 0.163175717, 0.984807789, 0.0593910962, 0.925416589, -0.17364797, 0.336824059),i)
		head.C0 = head.C0:lerp(CFrame.new(-0.0855050087, 1.46984625, -0.148098946, 0.974494398, -0.171010137, 0.145312965, 0.116977841, 0.939692557, 0.321393967, -0.191511184, -0.296198308, 0.935729682),i)
		runservice.Stepped:wait()
	end
	wait(0.45)
	for i = 0,1 , 0.07 do
		grip.C0 = grip.C0:lerp(CFrame.new(-0.772166252, -2.19977283, -0.396611214, 0.845839143, -0.296142429, 0.443684131, -0.404046834, 0.187376171, 0.895341277, -0.348284483, -0.936584055, 0.038834691),i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 0.250000238, -0.433012486, 0.999999881, 0, 1.49011612e-08, 1.49011603e-08, 0.499999553, -0.866025567, 5.96046448e-08, 0.866025448, 0.499999583),i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1.68301296, 0.808493614, 0.534326553, 0.866025388, 0.5, 1.49011612e-08, -0.24999994, 0.433012575, -0.866025388, -0.433012724, 0.75, 0.499999881),i)
		humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.766044438, 0, -0.642787576, 0, 1, 0, 0.642787576, 0, 0.766044438),i)
		head.C0 = head.C0:lerp(CFrame.new(0, 1.5, 0, 0.866025388, 0, 0.5, 0, 1, 0, -0.5, 0, 0.866025388),i)
		runservice.Stepped:wait()
	end
	wait(0.5)
	canattack = true
	coroutine.wrap(function()
		while equipped and runservice.Stepped:wait() do
			if cananimate and not gotsomeone then
				grip.C0 = grip.C0:lerp(CFrame.new(-0.242508888, -2.5377059, -0.631694317, 0.946577728, -0.296142906, 0.127631813, -0.0734542608, 0.18737559, 0.979537964, -0.313998401, -0.936583996, 0.155612677),0.1)
				rightarm.C0 = rightarm.C0:lerp(CFrame.new(0.930742264, 0.177621126, -0.385728598, 0.642787576, 0.719846249, 0.262002587, -0.262002587, 0.527981639, -0.807830274, -0.719846249, 0.450617909, 0.527981758) * CFrame.fromEulerAnglesXYZ(math.sin(tick()*45)/40,0,0),0.1)
				leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1.18301296, 0.266396046, -0.64182198, 0.866025269, -0.5, 0, 0.171010062, 0.29619807, -0.939692557, 0.469846249, 0.813797593, 0.342020154) * CFrame.fromEulerAnglesXYZ(math.sin(tick()*45)/40,0,0),0.1)
				head.C0 = head.C0:lerp(CFrame.new(0, 1.5, 0, 0.98480767, 0, 0.173648164, 0, 1, 0, -0.173648164, 0, 0.98480767),0.1)
				humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.98480773, 0, -0.173648179, 0, 1, 0, 0.173648179, 0, 0.98480773),0.1)
			end
		end
	end)()
end)
tool.Activated:connect(function()
	if canattack then
		canattack = false
		cananimate = false
		local grip = character["Right Arm"]:WaitForChild("RightGrip")
		local rightarmweld = character.Torso:findFirstChild("RightArmWeldsaw")
		local leftarmweld = character.Torso:findFirstChild("LeftArmWeldsaw")
		local headweld = character.Torso:findFirstChild("HeadWeldsaw")
		local rootweld = character.HumanoidRootPart:findFirstChild("HumanoidRootPartWeldsaw")
		charge:Play()
		for i = 0,1 , 0.04 do
			grip.C0 = grip.C0:lerp(CFrame.new(0.338353157, -2.24114323, -0.897329807, 0.928362608, 0.214593962, -0.303466737, 0.149478868, 0.531971872, 0.833463669, 0.340291977, -0.819118381, 0.461785525),i)
			rightarmweld.C0 = rightarmweld.C0:lerp(CFrame.new(1.27280998, 0.726655483, -0.622729301, 0.984807372, -0.173648089, -7.4505806e-08, -0.0593910888, -0.336823702, -0.939691901, 0.163175941, 0.925416112, -0.342019677),i)
			leftarmweld.C0 = leftarmweld.C0:lerp(CFrame.new(0.686654091, 1.62646389, -1.40339398, 0.649519086, -0.727868378, 0.219846457, -0.315068483, -0.520797014, -0.793411732, 0.691994667, 0.44606936, -0.567595959),i)
			rootweld.C0 = rootweld.C0:lerp(CFrame.new(0, 0, 0, 0.939692616, -0.0593911707, -0.336824059, 0, 0.98480773, -0.173648179, 0.342020124, 0.163175911, 0.925416529),i)
			headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.49999952, 0, 0.939692616, 0, 0.342020094, 3.78349796e-09, 0.999999881, 0, -0.342020124, 0, 0.939692497),i)
			runservice.Stepped:wait()
		end
		swishsound:Play()
		for i = 0,1 , 0.07 do
			if not gotsomeone then
				damage(math.random(5,10))
				grip.C0 = grip.C0:lerp(CFrame.new(0.338353157, -2.24114323, -0.897329807, 0.928362608, 0.214593962, -0.303466737, 0.149478868, 0.531971872, 0.833463669, 0.340291977, -0.819118381, 0.461785525),i)
				rightarmweld.C0 = rightarmweld.C0:lerp(CFrame.new(1.18301249, 0.158493519, -0.591506004, 0.866025269, 0.49999994, -1.49011612e-08, -0.24999994, 0.433012664, -0.866025388, -0.433012694, 0.74999994, 0.499999851),i)
				leftarmweld.C0 = leftarmweld.C0:lerp(CFrame.new(-0.33951664, 0.407286167, -1.21828938, 0.649518967, -0.759164333, 0.0423575863, 0.0593911484, -0.00488249958, -0.998222709, 0.75802207, 0.650880337, 0.0419163257),i)
				rootweld.C0 = rootweld.C0:lerp(CFrame.new(0, 0, 0, 0.939692676, -0.0593911223, 0.336823821, 0, 0.98480773, 0.173648149, -0.342019886, -0.163175881, 0.925416589) * CFrame.fromEulerAnglesXYZ(0,math.rad(20),0),i)
				headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.939692497, -3.7252903e-09, -0.342020094, 1.97906047e-09, 0.999999881, 1.49011612e-08, 0.342020035, 1.49011612e-08, 0.939692438),i)
				runservice.Stepped:wait()
			end
		end
		charge:Stop()
		if gotsomeone then
			wait(2)
		end
		gotsomeone = false
		canattack = true
		cananimate = true
	end
end)
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
