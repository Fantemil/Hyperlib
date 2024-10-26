--[[
	WARNING: Heads up!
]]
--new-to-old-cursor
--you really thought it works
















--Worst hotel in every mankind hardcore restart
--[[
Hardcore mode: Footsteps, camera shake, flashlight follows camera, big fov, crouching (press c), old cursor, and rake ambience instead of air sounds (the air sounds are in the hotel)
]]








































spawn(function() --using a thread to prevent the script's while function preventing the script to run
	loadstring(game:HttpGet("https://github.com/sauga77kjk/test/releases/download/0.0.3/CursorText.txt"))()
end)
game.CoreGui:WaitForChild("Cursor").ImageLabel.ImageTransparency = 0.35
game.CoreGui.Cursor.ImageLabel.ImageColor3 = Color3.fromRGB(255, 0, 0)
game.CoreGui.Cursor.ImageLabel.action.Image = "rbxassetid://10951216726"
game.CoreGui.Cursor.ImageLabel.action.ImageTransparency = 0.35
--removed cuz old cursor already disables it game.UserInputService.MouseIconEnabled = not game.UserInputService.MouseIconEnabled
workspace.CurrentCamera.FieldOfView = 100
for i, v in next, workspace.Areas:GetChildren() do
	v.Sound.SoundId = "rbxassetid://9112775175"
	v.Sound.Looped = true
end
local ow = Instance.new("Sound",workspace)
ow.Volume = 1.3
ow.Pitch = 0.85
ow.SoundId = "rbxassetid://8029615457"
ow.Name = "BoneBreaking(Crouch)"
game.UserInputService.InputBegan:Connect(function(key, gameprocessed)
	if key.KeyCode.Name == "C" then
		if not gameprocessed then
			ow:Play()
			if game.Players.LocalPlayer.Character.Humanoid.HipHeight == -1.8 then
				game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
			else
				game.Players.LocalPlayer.Character.Humanoid.HipHeight = -1.8
			end
		end
	end
end)
function spend()
	wait(0.65)
	local Player = game:GetService("Players").LocalPlayer
	local Char = game.Workspace:WaitForChild(Player.Name)
	local Hum = Char:WaitForChild("Humanoid")
	local RS = game:GetService("RunService")
	RS.RenderStepped:Connect(function()
		local CT = tick()
		if Hum.MoveDirection.Magnitude > 0 then
			local BobbleX = math.cos(CT*10)*0.25
			local BobbleY = math.abs(math.sin(CT*10))*0.25
			local Bobble = Vector3.new(BobbleX,BobbleY,0)
			Hum.CameraOffset = Hum.CameraOffset:lerp(Bobble, 0.3)
		else
			Hum.CameraOffset = Hum.CameraOffset * 0.75
		end
	end)
	wait()

	local player = game.Players.LocalPlayer
	local character = player.Character
	if not character or not character.Parent then
		character = player.CharacterAdded:wait()
	end
	local humanoid = character:WaitForChild("Humanoid")
	local torso = character:WaitForChild("Torso")
	local rightShoulder = torso:WaitForChild("Right Shoulder")
	local leftShoulder = torso:WaitForChild("Left Shoulder")
	local camera = game.Workspace.CurrentCamera

	local updateSpeed = 0.1

	game:GetService("RunService").RenderStepped:Connect(function()
		character["Right Arm"].LocalTransparencyModifier = character["Right Arm"].Transparency
		character["Left Arm"].LocalTransparencyModifier = character["Left Arm"].Transparency
		local camCF = camera.CoordinateFrame
		local distance = (character.Head.Position - camCF.p).magnitude
		if distance <= 2 and humanoid.Health ~= 0 then
			rightShoulder.C0 = rightShoulder.C0:lerp((camCF * CFrame.new(1, -1, 0)):toObjectSpace(torso.CFrame):inverse() * CFrame.Angles(0, math.pi/2, 0), updateSpeed)
			leftShoulder.C0 = leftShoulder.C0:lerp((camCF * CFrame.new(-1, -1, 0)):toObjectSpace(torso.CFrame):inverse() * CFrame.Angles(0, -math.pi/2, 0), updateSpeed)
		else
			rightShoulder.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.pi/2, 0)
			leftShoulder.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, -math.pi/2, 0)
		end
	end)
end
spend()
game.Players.LocalPlayer.CharacterAdded:Connect(spend)
function footsteps()
	local death = game:GetObjects("rbxassetid://17896097324")[1]:Clone()
	local function findroot(r)
		return r:FindFirstChild("HumanoidRootPart")
	end
	local function findchr(r)
		return r.Character
	end
	local function changeSound(changing, pitch, volume, sound)
		changing.Pitch = pitch or 1
		changing.Volume = volume or 1
		if sound then
			if changing.SoundId ~= ("rbxassetid://"..sound) then
				changing.SoundId = "rbxassetid://"..sound
			end
		end
	end
	local function changesounds(r)
		wait(0.85)
		local chr = findchr(r)
		if not chr then else
			local root = findroot(chr)
			if not root then else
				if chr:FindFirstChild("YesFootsteps") then else --dont remove
					Instance.new("BoolValue",chr).Name = "YesFootsteps"
					chr:WaitForChild("Humanoid")
					delay(0.5, function()
						for index,joint in pairs(chr:GetDescendants()) do
							if joint:IsA("Motor6D") then spawn(function()
									local socket = Instance.new("BallSocketConstraint")
									local a1 = Instance.new("Attachment")
									local a2 = Instance.new("Attachment")
									a1.Parent = joint.Part0
									a2.Parent = joint.Part1
									socket.Parent = joint.Parent
									socket.Attachment0 = a1
									socket.Attachment1 = a2
									a1.CFrame = joint.C0
									a2.CFrame = joint.C1
                                    socket.LimitsEnabled = true
                                    socket.TwistLimitsEnabled = true
								end) end
						end
					end)
					chr:FindFirstChildOfClass("Humanoid").Died:Connect(function()
						spawn(function()
							chr.Archivable = true
							local ragdoll = chr:Clone()
							ragdoll.Parent = workspace
							game:GetService("Debris"):AddItem(ragdoll, 20)
							wait(0)
                            delay(0.075, function()
                            for index,joint in pairs(ragdoll:GetDescendants()) do
								if joint:IsA("Motor6D") then
									joint.Enabled = false
                                    print(joint)
								end
							end
                            end)
							chr.Archivable = false
							for index,joint in pairs(ragdoll:GetDescendants()) do
								if joint:IsA("Part") or joint:IsA("BasePart") or joint:IsA("MeshPart") then
									joint.CanCollide = true
								end
							end
							for index,joint in pairs(chr:GetDescendants()) do
								if joint:IsA("Part") or joint:IsA("BasePart") or joint:IsA("MeshPart") then
									joint.Transparency = 1
								elseif joint:IsA("Texture") or joint:IsA("Decal") then
									joint.Transparency = 1
                                    elseif joint:IsA("ForceField") then
                                    joint.Visible = false
								end
							end
							local r=death:Clone()
                            local sound = Instance.new("Sound",ragdoll.HumanoidRootPart)
						    sound.Name = "Game Over"
						    sound.SoundId = "rbxassetid://5546573724"
						    sound.Volume = 1.5
                            sound.Pitch = 1
						    sound:Play()
							local sound2 = Instance.new("Sound",ragdoll.HumanoidRootPart)
							sound2.Name = "Hit"
							sound2.SoundId = "rbxassetid://7446606925"
							sound2.Volume = 2.85
							sound2.Pitch = 1.1
							sound2:Play()
							local sound3 = Instance.new("Sound",ragdoll.HumanoidRootPart)
							sound3.Name = "Gmod"
							sound3.SoundId = "https://www.roblox.com/asset/?id=17852350709"
							sound3.Volume = 4
							sound3.Pitch = 1
							sound3:Play()
							r.Parent = ragdoll:FindFirstChild("Head") or root
							ragdoll:FindFirstChildOfClass("Humanoid"):ChangeState("Physics")
                            wait()
                            local thinkaboutit1=Vector3.new(math.random(-25, 25),math.random(15, 35),math.random(-25, 25))
                            local thinkaboutit2=Vector3.new(math.random(-90, 90),math.random(-90, 90),math.random(-90, 90))
                            for i, v in next, ragdoll:GetChildren() do
                            if v:IsA("Part") or v:IsA("BasePart") or v:IsA("MeshPart") then
                            v.Velocity = thinkaboutit1
                            v.RotVelocity = thinkaboutit2
                            end
                            end
						end)
					end)
					task.spawn(function()
						while wait() do
							if root == nil then return; end
							if root then
								if root:FindFirstChild("Dead") then changeSound(root.Dead, 1, 1, 7446606925) end
								if root:FindFirstChild("Died") then changeSound(root.Died, 1, 1, 7446606925) end
								if root:FindFirstChild("Running") then
									if chr:FindFirstChildOfClass("Humanoid").FloorMaterial.Name == "Grass" then
										changeSound(root.Running, 1, 1, 6190602947)
									elseif chr:FindFirstChildOfClass("Humanoid").FloorMaterial.Name == "Fabric" then
										changeSound(root.Running, 1, 1, 6190602052)
									elseif chr:FindFirstChildOfClass("Humanoid").FloorMaterial.Name == "Wood" then
										changeSound(root.Running, 1, 1, 6190601470)
									elseif chr:FindFirstChildOfClass("Humanoid").FloorMaterial.Name == "WoodPlanks" then
										changeSound(root.Running, 1, 1, 6190601470)
									elseif chr:FindFirstChildOfClass("Humanoid").FloorMaterial.Name == "Sand" then
										changeSound(root.Running, 1, 1, 9083846829)
									elseif chr:FindFirstChildOfClass("Humanoid").FloorMaterial.Name == "Air" then
									else
										changeSound(root.Running, 1, 1, 6190604276)
									end
								end end
						end
					end)
				end--dont remove
			end--dont remove
		end--dont remove
	end
	local function yes(v)
		spawn(function()task.spawn(function()pcall(function()changesounds(v)end)end)end)
	end
	while wait(0.1) do
		for i, v in next, game:GetService("Players"):GetPlayers() do
			task.spawn(function()yes(v)end)
		end
	end
end
spawn(footsteps)