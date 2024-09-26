-- Gui to Lua
-- Version: 3.2

-- Instances:

local raingui = Instance.new("ScreenGui")
local raingui_2 = Instance.new("Frame")
local dominusrain = Instance.new("TextButton")
local ballrain = Instance.new("TextButton")
local rainv3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

raingui.Name = "rain gui "
raingui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
raingui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

raingui_2.Name = "rain gui"
raingui_2.Parent = raingui
raingui_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
raingui_2.BorderColor3 = Color3.fromRGB(255, 0, 0)
raingui_2.BorderSizePixel = 7
raingui_2.Position = UDim2.new(0.272073925, 0, 0.107489601, 0)
raingui_2.Size = UDim2.new(0, 340, 0, 284)

dominusrain.Name = "dominus rain"
dominusrain.Parent = raingui_2
dominusrain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
dominusrain.BorderColor3 = Color3.fromRGB(255, 0, 0)
dominusrain.BorderSizePixel = 7
dominusrain.Position = UDim2.new(0, 0, 0.172535211, 0)
dominusrain.Size = UDim2.new(0, 200, 0, 50)
dominusrain.Font = Enum.Font.SourceSans
dominusrain.Text = "dominus rain"
dominusrain.TextColor3 = Color3.fromRGB(255, 0, 0)
dominusrain.TextScaled = true
dominusrain.TextSize = 14.000
dominusrain.TextWrapped = true

ballrain.Name = "ball rain"
ballrain.Parent = dominusrain
ballrain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ballrain.BorderColor3 = Color3.fromRGB(255, 0, 0)
ballrain.BorderSizePixel = 7
ballrain.Position = UDim2.new(0, 0, 1.41999996, 0)
ballrain.Size = UDim2.new(0, 200, 0, 50)
ballrain.Font = Enum.Font.SourceSans
ballrain.Text = "ball rain"
ballrain.TextColor3 = Color3.fromRGB(255, 0, 0)
ballrain.TextScaled = true
ballrain.TextSize = 14.000
ballrain.TextWrapped = true

rainv3.Name = "rain v3"
rainv3.Parent = ballrain
rainv3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
rainv3.BorderColor3 = Color3.fromRGB(255, 0, 0)
rainv3.BorderSizePixel = 7
rainv3.Position = UDim2.new(0, 0, 1.39999998, 0)
rainv3.Size = UDim2.new(0, 200, 0, 50)
rainv3.Font = Enum.Font.SourceSans
rainv3.Text = "rain v3"
rainv3.TextColor3 = Color3.fromRGB(255, 0, 0)
rainv3.TextScaled = true
rainv3.TextSize = 14.000
rainv3.TextWrapped = true

TextLabel.Parent = raingui_2
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.BorderSizePixel = 7
TextLabel.Size = UDim2.new(0, 340, 0, 34)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "rain gui made by teamcameron"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

-- Scripts:

local function KQKJYOY_fake_script() -- rainv3.Script 
	local script = Instance.new('Script', rainv3)

	script.Parent.MouseButton1Click:Connect(function()
		wait(1)
		math.randomseed(tick() % 1 * 1e6)
		sky = coroutine.create(function()
			while wait(0.3) do
				s = Instance.new("Sky",game.Lighting)
				s.SkyboxBk,s.SkyboxDn,s.SkyboxFt,s.SkyboxLf,s.SkyboxRt,s.SkyboxUp = "rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408"
				s.CelestialBodiesShown = true
			end
		end)
	
	
		local m = Instance.new("Hint", game.workspace)
		m.Text = " GET TOADROASTED!"
	
		del = coroutine.create(function()
			while wait(0.3) do
				for i,v in pairs(workspace:GetChildren()) do
					if v:IsA("Model") then
						v:Destroy()
					end
				end
			end
		end)
	
	
	
		for i,v in pairs(game.Players:GetChildren()) do
			v.Character.Archivable = true
		end
	
		noises = {'rbxassetid://230287740','rbxassetid://271787597','rbxassetid://153752123','rbxassetid://271787503'}
	
		sound = coroutine.create(function()
			a = Instance.new("Sound",workspace)
			a.SoundId = "rbxassetid://6942391979"
			a.Name = "RAINING MEN"
			a.Volume = 999999999999999
			a.Looped = true
			a:Play()
			while wait(0.2) do
				rainin = workspace:FindFirstChild("RAINING MEN")
				if not rainin then
					a = Instance.new("Sound",workspace)
					a.SoundId = "rbxassetid://6942391979"
					a.Name = "RAINING MEN"
					a.Volume = 999999999999999
					a.Looped = true
					a:Play()
				end
			end
		end)
	
		msg = coroutine.create(function()
			while wait(0.4) do
				msg = Instance.new("Message",workspace)
				msg.Text = "get toadroasted by ro0lkidd L0L"
				wait(0.4)
				msg:Destroy()
			end
		end)
		rain = coroutine.create(function()
			while wait(10 % 1 * 1e2) do
				part = Instance.new("Part",workspace)
				part.Name = "Toad"
	
				mesh = Instance.new("SpecialMesh",part)
	
				sound = Instance.new("Sound",workspace)
	
				part.CanCollide = false
				part.Size = Vector3.new(440,530,380)
				part.Position = Vector3.new(math.random(-3000,1000),math.random(1,3000),math.random(-3000,3000))
	
				sound.SoundId = noises[math.random(1,#noises)]
				sound:Play()
				sound.Ended:connect(function()
					sound:Destroy()
				end)
	
	
				mesh.MeshType = "FileMesh"
				mesh.MeshId = "rbxassetid://7234998844"
				mesh.TextureId = "rbxassetid://1009824086"
			end
		end)
		coroutine.resume(sky)
		coroutine.resume(del)
		coroutine.resume(sound)
		coroutine.resume(msg)
		coroutine.resume(rain)
	end)
	
end
coroutine.wrap(KQKJYOY_fake_script)()
local function CCWC_fake_script() -- ballrain.Script 
	local script = Instance.new('Script', ballrain)

	script.Parent.MouseButton1Click:Connect(function()
		while true do
			communism=math.random(0,3)
			crex=math.random(3,100)
			obesity=math.random(-500, 500)
			positivity=math.random(100, 600)
			IEndorseThese=math.random(-500, 500)
			wait()
			doom=Instance.new("Part")
			local imnotfat = math.random(1, 3)
			if imnotfat == 1 then
				doom.Shape = "Ball"
			else if imnotfat == 2 then
					doom.Shape = "Cylinder"
				else 
				end end
			doom.Material = "Neon"
			doom.Size = Vector3.new(crex, crex, crex)
			doom.Position = Vector3.new(obesity, positivity, IEndorseThese)
			doom.Color = Color3.new(math.random(), math.random(), math.random())
			doom.Velocity=Vector3.new(communism, communism, communism)
			doom.Parent = game.Workspace
			yooka=math.random(-200, -50)
			doom=Instance.new("Part")
			doom.Shape = "Ball"
			doom.Size = Vector3.new(crex, crex, crex)
			doom.Position = Vector3.new(obesity, yooka, IEndorseThese)
			doom.Color = Color3.new(math.random(), math.random(), math.random())
			doom.Velocity=Vector3.new(communism, 800, communism)
			doom.Parent = game.Workspace
			communism=math.random(0,3)
			crex=math.random(3,100)
			obesity=math.random(-500, 500)
			positivity=math.random(100, 600)
			IEndorseThese=math.random(-500, 500)
			doom=Instance.new("Part")
			doom.Shape = "Ball"
			doom.Size = Vector3.new(crex, crex, crex)
			doom.Position = Vector3.new(obesity, positivity, IEndorseThese)
			doom.Color = Color3.new(math.random(), math.random(), math.random())
			doom.Velocity=Vector3.new(communism, communism, communism)
			doom.Parent = game.Workspace
			communism=math.random(0,3)
			crex=math.random(3,100)
			obesity=math.random(-500, 500)
			positivity=math.random(100, 600)
			IEndorseThese=math.random(-500, 500)
			doom=Instance.new("Part")
			doom.Shape = "Ball"
			doom.Size = Vector3.new(crex, crex, crex)
			doom.Position = Vector3.new(obesity, positivity, IEndorseThese)
			doom.Color = Color3.new(math.random(), math.random(), math.random())
			doom.Velocity=Vector3.new(communism, communism, communism)
			doom.Parent = game.Workspace
			communism=math.random(0,3)
			crex=math.random(3,100)
			obesity=math.random(-500, 500)
			positivity=math.random(100, 600)
			IEndorseThese=math.random(-500, 500)
			doom=Instance.new("Part")
			doom.Shape = "Ball"
			doom.Size = Vector3.new(crex, crex, crex)
			doom.Position = Vector3.new(obesity, positivity, IEndorseThese)
			doom.Color = Color3.new(math.random(), math.random(), math.random())
			doom.Velocity=Vector3.new(communism, communism, communism)
			doom.Parent = game.Workspace
		end
	end)
	
end
coroutine.wrap(CCWC_fake_script)()
local function OBSG_fake_script() -- dominusrain.Script 
	local script = Instance.new('Script', dominusrain)

	function click()
		while wait(0.1) do
			local part = Instance.new("Part",workspace)
			part.Name = "Furry"
	
			local mesh = Instance.new("SpecialMesh",part)
	
			part.CanCollide = false
			part.Size = Vector3.new(440,530,380)
			part.Position = Vector3.new(math.random(-3000,1000),math.random(1,3000),math.random(-3000,3000))
			part.RotVelocity = Vector3.new(math.random() * math.pi, math.random() * math.pi, math.random() * math.pi)
	
			mesh.MeshType = "FileMesh"
			mesh.Scale = Vector3.new(150,150,150)
			mesh.MeshId = "rbxassetid://1484148960"
			mesh.TextureId = "rbxassetid://1484148974"
		end
	end
	
	script.Parent.MouseButton1Down:connect(click)
	
end
coroutine.wrap(OBSG_fake_script)()
local function NAPVC_fake_script() -- raingui_2.Script 
	local script = Instance.new('Script', raingui_2)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(NAPVC_fake_script)()
