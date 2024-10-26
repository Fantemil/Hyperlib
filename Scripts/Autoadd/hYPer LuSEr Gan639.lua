local Players = game:GetService("Players")
local Equipped = false
local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local Root = Char:WaitForChild("HumanoidRootPart")
local RightArm = Char:WaitForChild("RightUpperArm")
local LeftArm = Char:WaitForChild("LeftUpperArm")
local RightC1 = RightArm.RightShoulder.C1
local LeftC1 = LeftArm.LeftShoulder.C1

local tool = Instance.new("Tool")
tool.TextureId = "http://www.roblox.com/asset/?id=130093050"
tool.Name = "SubspaceTripmine"
tool.Parent = game.Players.LocalPlayer:WaitForChild("Backpack")

local part = Instance.new("Part")
part.Name = "Handle"
part.Size = Vector3.new(2, 2, 2)
part.Parent = tool

local mesh = Instance.new("SpecialMesh")
mesh.MeshId = "rbxassetid://130099641"
mesh.TextureId = "rbxassetid://130093033"
mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
mesh.Parent = part
local df = Instance.new("Part")
df.BrickColor = BrickColor.new("Cyan")
df.Material = Enum.Material.Neon
df.Size = Vector3.new(3.7, 1, 1.1)
df.Parent = part

local function setupHands(tool)
	tool.Equipped:Connect(function()
		Equipped = true
		Char:SetAttribute("Hiding", true)
		for _, v in next, Hum:GetPlayingAnimationTracks() do
			v:Stop()
		end

		RightArm.Name = "R_Arm"
		LeftArm.Name = "L_Arm"

		RightArm.RightShoulder.C1 = RightC1
			* CFrame.Angles(math.rad(-90), math.rad(-10), 0)
		LeftArm.LeftShoulder.C1 = LeftC1
			* CFrame.new(-0.2, -0.2, -0.5)
			* CFrame.Angles(math.rad(-110), math.rad(15), math.rad(0))	
	end)

	tool.Unequipped:Connect(function()
		Equipped = false
		Char:SetAttribute("Hiding", nil)
		RightArm.Name = "RightUpperArm"
		LeftArm.Name = "LeftUpperArm"

		RightArm.RightShoulder.C1 = RightC1
		LeftArm.LeftShoulder.C1 = LeftC1
	end)

	tool.Activated:Connect(function()
		local pos = Plr:GetMouse().Hit
		local stclone = df:Clone()
		df.BrickColor = BrickColor.new("Cyan")
		df.Material = Enum.Material.Neon
		df.Size = Vector3.new(3.7, 1, 1.1)
		stclone.Parent = workspace
		stclone.Position = Plr.Character.RightHand.Position
		local bv = Instance.new("BodyVelocity",stclone)
		bv.Velocity = pos.LookVector * 50
		stclone.CanCollide = true
		task.wait(0.2)
		bv:Destroy()
		local beforeexplodesound = Instance.new("Sound")
		beforeexplodesound.SoundId = "rbxassetid://130113370"
		beforeexplodesound.Volume = 2
		beforeexplodesound.Parent = stclone
		beforeexplodesound:Play()
		beforeexplodesound.Ended:wait()
		local explodesound = Instance.new("Sound")
		explodesound.SoundId = "rbxassetid://130113322"
		explodesound.Volume = 2
		explodesound.Parent = stclone
		explodesound:Play()
		local nearbyParts = workspace:GetPartBoundsInBox(stclone.CFrame,Vector3.new(30,30,30))
		local forcetable = {}
		for _, part in ipairs(nearbyParts) do
			local check = false
			local partname = part.name
			if string.find(partname,"Wall") or string.find(partname,"Floor") then
				check = true
			end
			if check == false then
				part.Anchored = false
				local distance = (part.Position - stclone.Position).Magnitude
				local force = (15 - distance) * 100
				local bodyforce = Instance.new("BodyVelocity",part)
				bodyforce.Velocity = (force * (part.Position - stclone.Position).Unit)
				table.insert(forcetable,bodyforce)
				part.CFrame = part.CFrame * CFrame.new(math.random(1,5),0,math.random(1,5))
			end
		end
		wait(0.1)
		for i,aforce in ipairs(forcetable) do
			aforce:Destroy()
		end
		explodesound.Ended:Wait()
		stclone:Destroy()
	end)
end

setupHands(tool)
