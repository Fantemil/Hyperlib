-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local TextButton_6 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0.0859106705, 0, 0.230582535, 0)
Frame.Size = UDim2.new(0, 394, 0, 240)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 4
TextLabel.Size = UDim2.new(0, 395, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "team8x8x8x8 fe bypass gui v5"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = TextLabel
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 1.22000003, 0)
TextButton.Size = UDim2.new(0, 115, 0, 25)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "fly keybored needed"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = TextLabel
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 0, 2.03999996, 0)
TextButton_2.Size = UDim2.new(0, 115, 0, 25)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "fe fake lag"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = TextLabel
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.313924044, 0, 2.83999991, 0)
TextButton_3.Size = UDim2.new(0, 115, 0, 25)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "sit"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextButton_4.Parent = TextLabel
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.313924044, 0, 2.03999996, 0)
TextButton_4.Size = UDim2.new(0, 115, 0, 25)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "tp tool"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

TextButton_5.Parent = TextLabel
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.313924044, 0, 1.22000003, 0)
TextButton_5.Size = UDim2.new(0, 115, 0, 25)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "speed"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true

ImageLabel.Parent = TextLabel
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.645569623, 0, 1.22000003, 0)
ImageLabel.Size = UDim2.new(0, 140, 0, 143)
ImageLabel.Image = "rbxassetid://16000894791"

TextButton_6.Parent = TextLabel
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0, 0, 2.83999991, 0)
TextButton_6.Size = UDim2.new(0, 115, 0, 25)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "gravty"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.871212125, 0)
TextLabel_2.Size = UDim2.new(0, 395, 0, 34)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "made by team8x8x8x8 and team hd"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function HVCLW_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	-- Press X to fly
	
	local plr = game.Players.LocalPlayer
	local mouse = plr:GetMouse()
	
	localplayer = plr
	
	if workspace:FindFirstChild("Core") then
		workspace.Core:Destroy()
	end
	
	local Core = Instance.new("Part")
	Core.Name = "Core"
	Core.Size = Vector3.new(0.05, 0.05, 0.05)
	
	spawn(function()
		Core.Parent = workspace
		local Weld = Instance.new("Weld", Core)
		Weld.Part0 = Core
		Weld.Part1 = localplayer.Character.LowerTorso
		Weld.C0 = CFrame.new(0, 0, 0)
	end)
	
	workspace:WaitForChild("Core")
	
	local torso = workspace.Core
	flying = true
	local speed=10
	local keys={a=false,d=false,w=false,s=false}
	local e1
	local e2
	local function start()
		local pos = Instance.new("BodyPosition",torso)
		local gyro = Instance.new("BodyGyro",torso)
		pos.Name="EPIXPOS"
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = torso.Position
		gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		gyro.cframe = torso.CFrame
		repeat
			wait()
			localplayer.Character.Humanoid.PlatformStand=true
			local new=gyro.cframe - gyro.cframe.p + pos.position
			if not keys.w and not keys.s and not keys.a and not keys.d then
				speed=5
			end
			if keys.w then
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.s then
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.d then
				new = new * CFrame.new(speed,0,0)
				speed=speed+0
			end
			if keys.a then
				new = new * CFrame.new(-speed,0,0)
				speed=speed+0
			end
			if speed>10 then
				speed=5
			end
			pos.position=new.p
			if keys.w then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
			elseif keys.s then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
			else
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame
			end
		until flying == false
		if gyro then gyro:Destroy() end
		if pos then pos:Destroy() end
		flying=false
		localplayer.Character.Humanoid.PlatformStand=false
		speed=10
	end
	e1=mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
		if key=="w" then
			keys.w=true
		elseif key=="s" then
			keys.s=true
		elseif key=="a" then
			keys.a=true
		elseif key=="d" then
			keys.d=true
		elseif key=="x" then
			if flying==true then
				flying=false
			else
				flying=true
				start()
			end
		end
	end)
	e2=mouse.KeyUp:connect(function(key)
		if key=="w" then
			keys.w=false
		elseif key=="s" then
			keys.s=false
		elseif key=="a" then
			keys.a=false
		elseif key=="d" then
			keys.d=false
		end
	end)
	start()
	end)
	
end
coroutine.wrap(HVCLW_fake_script)()
local function JDWXO_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	workspace[game.Players.LocalPlayer.Name].Archivable = true
	local clonedchar = workspace[game.Players.LocalPlayer.Name]:Clone()
	local orig = game.Players.LocalPlayer.Character
	local root = orig.HumanoidRootPart
	local invis = false
	local mouse = game.Players.LocalPlayer:GetMouse()
	clonedchar.Parent = workspace
	game.Players.LocalPlayer.Character = orig
	workspace.CurrentCamera.CameraSubject = clonedchar.Humanoid
	local follow = true
	local down = false
	local descendants = clonedchar:GetDescendants()
	game:GetService("RunService").Heartbeat:Connect(function()
		clonedchar.Humanoid:Move(orig.Humanoid.MoveDirection)
		clonedchar.Humanoid.Jump = orig.Humanoid.Jump
		if invis then
			clonedchar.HumanoidRootPart.CFrame += orig.Humanoid.MoveDirection
			if orig.Humanoid.MoveDirection ~= Vector3.new(0,0,0) then
				clonedchar.HumanoidRootPart.CFrame = CFrame.new(clonedchar.HumanoidRootPart.Position, clonedchar.HumanoidRootPart.Position + orig.Humanoid.MoveDirection)
			end
			if orig.Humanoid.Jump then
				clonedchar.HumanoidRootPart.CFrame += Vector3.new(0,0.1,0)
			end
			if down then
				clonedchar.HumanoidRootPart.CFrame += Vector3.new(0,-0.1,0)
			end
		end
	end)
	mouse.KeyDown:Connect(function(key)
		if key == "2" then
			down = true
		end
	end)
	mouse.KeyUp:Connect(function(key)
		if key == "2" then
			down = false
		end
	end)
	
	mouse.KeyDown:Connect(function(key)
		if key == "x" then
			if not invis then
				invis = true
				follow = false
				spawn(function()
					while true do
						task.wait()
						root.Velocity = Vector3.new(math.random(-50000,50000),math.random(0,500000),math.random(-950000,950000))
						root.AssemblyAngularVelocity = Vector3.new(math.random(-950000,950000),math.random(0,950000),math.random(-950000,1000000))
						root.CFrame = CFrame.new(Vector3.new(math.random(-500,500),5000,math.random(4900,5000)))
						if not invis then
							break
						end
					end
				end)
			else
				invis = false
				follow = true
			end
		end
	end)
	
	for i,v in pairs(descendants) do
		if v:IsA("BasePart") then
			v.Transparency = 0.7
			v.Material = Enum.Material.Neon
		end
	end
	game:GetService("RunService").Heartbeat:Connect(function()
		clonedchar.Humanoid:ChangeState(Enum.HumanoidStateType.StrafingNoPhysics)
		if clonedchar.Humanoid.Jump then
			clonedchar.HumanoidRootPart.CFrame = clonedchar.HumanoidRootPart.CFrame + Vector3.new(0,1,0)
		end
		for i,v in pairs(descendants) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end)
	task.spawn(function() -- Swap pos
		while true do
			if not invis then
				if follow then
					root.CFrame = clonedchar.HumanoidRootPart.CFrame
				end
				root.Velocity = clonedchar.HumanoidRootPart.Velocity
				root.AssemblyAngularVelocity = clonedchar.HumanoidRootPart.AssemblyAngularVelocity
				root.AssemblyLinearVelocity = clonedchar.HumanoidRootPart.AssemblyLinearVelocity
				orig.Humanoid:ChangeState(Enum.HumanoidStateType.StrafingNoPhysics)
				for i,v in pairs(orig:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			end
			task.wait()
		end
	end)
	task.spawn(function() -- fake lag
		while true do
			if not invis then
				root.Anchored = true
				follow = false
				task.wait(math.random(60,180)/130)
				root.Anchored = false
				follow = true
				task.wait(.05)
			end
			task.wait()
		end
	end)
	
end
coroutine.wrap(JDWXO_fake_script)()
local function UWCW_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	-- Get a reference to the TextButton
	local button = script.Parent
	
	-- Function to handle when the button is clicked
	local function onClick()
		-- Get the local player
		local player = game.Players.LocalPlayer
	
		-- Get the character and humanoid of the player
		local character = player.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	
		-- Check if the humanoid exists and make the player sit
		if humanoid then
			humanoid.Sit = true
		end
	end
	
	-- Connect the onClick function to the MouseButton1Click event of the button
	button.MouseButton1Click:Connect(onClick)
end
coroutine.wrap(UWCW_fake_script)()
local function LJAM_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	mouse = game.Players.LocalPlayer:GetMouse()
	tool = Instance.new("Tool")
	tool.RequiresHandle = false
	tool.Name = "Tp tool(Equip to Click TP)"
	tool.Activated:connect(function()
		local pos = mouse.Hit+Vector3.new(0,2.5,0)
		pos = CFrame.new(pos.X,pos.Y,pos.Z)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
	end)
	tool.Parent = game.Players.LocalPlayer.Backpack
end
coroutine.wrap(LJAM_fake_script)()
local function LATMS_fake_script() -- TextButton_5.LocalScript 
	local script = Instance.new('LocalScript', TextButton_5)

	-- Reference to the button and the player
	local button = script.Parent  -- This refers to the button itself
	local player = game.Players.LocalPlayer  -- This gets the local player
	
	-- Function to give speed when the button is clicked
	local function onButtonClicked()
		-- Check if the player exists and is alive
		if player and player.Character then
			-- Set the player's walkspeed to 100
			player.Character.Humanoid.WalkSpeed = 100
		end
	end
	
	-- Connect the function to the button's MouseClick event
	button.MouseButton1Click:Connect(onButtonClicked)
end
coroutine.wrap(LATMS_fake_script)()
local function BRWOA_fake_script() -- TextButton_6.LocalScript 
	local script = Instance.new('LocalScript', TextButton_6)

	wait()
	game.workspace.Gravity = 196.2
	
	
	-- Default: 196.2
	
	-- ROBLOX: RocketBlast122
	-- YouTube: Stranger Danger Jake
	-- Discord: ðð±ð¯ðð«ð¤ð¢ð¯ ððð«ð¤ð¢ð¯ ððð¨ð¢#1620
end
coroutine.wrap(BRWOA_fake_script)()
local function GCZUO_fake_script() -- Frame.Script 
	local script = Instance.new('Script', Frame)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(GCZUO_fake_script)()