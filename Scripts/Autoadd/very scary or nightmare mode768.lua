--Worst hotel in every mankind nightmare edition
--[[
Nightmare mode: Footsteps, camera shake, flashlight follows camera, big fov, crouching (press c), no mouse icon, and rake ambience instead of air sounds (the air sounds are in the hotel)
]]
game.UserInputService.MouseIconEnabled = not game.UserInputService.MouseIconEnabled
workspace.CurrentCamera.FieldOfView = 100
for i, v in next, workspace.Areas:GetChildren() do
	v.Sound.SoundId = "rbxassetid://142219239"
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
			if game.Players.LocalPlayer.Character.Humanoid.HipHeight == -1.5 then
				game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
			else
				game.Players.LocalPlayer.Character.Humanoid.HipHeight = -1.5
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
			Hum.CameraOffset = Hum.CameraOffset:lerp(Bobble, 0.1)
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
		--character["Right Arm"].LocalTransparencyModifier = character["Right Arm"].Transparency
		--character["Left Arm"].LocalTransparencyModifier = character["Left Arm"].Transparency
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
		local chr = findchr(r)
		if not chr then else
			local root = findroot(chr)
			if not root then else
				if chr:FindFirstChild("YesFootsteps") then else --dont remove
					Instance.new("BoolValue",chr).Name = "YesFootsteps"
					task.spawn(function()
						while wait() do
							if root == nil then return; end
							if root then
								if root:FindFirstChild("Dead") then changeSound(root.Dead, 1, 1, 6425362825) end
								if root:FindFirstChild("Died") then changeSound(root.Died, 1, 1, 6425362825) end
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
	while wait() do
		for i, v in next, game:GetService("Players"):GetPlayers() do
			yes(v)
		end
	end
end
spawn(footsteps)