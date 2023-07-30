-- Gui to Lua
-- Version: 3.2

-- Instances:

local BobsExploitsV11 = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ClickTP = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local UICorner_2 = Instance.new("UICorner")
local Fly = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local UICorner_3 = Instance.new("UICorner")
local NightTime = Instance.new("TextButton")
local UIGradient_3 = Instance.new("UIGradient")
local UICorner_4 = Instance.new("UICorner")
local InfJump = Instance.new("TextButton")
local UIGradient_4 = Instance.new("UIGradient")
local UICorner_5 = Instance.new("UICorner")
local DayTime = Instance.new("TextButton")
local UIGradient_5 = Instance.new("UIGradient")
local UICorner_6 = Instance.new("UICorner")
local Plus = Instance.new("TextButton")
local UIGradient_6 = Instance.new("UIGradient")
local UICorner_7 = Instance.new("UICorner")
local Minus = Instance.new("TextButton")
local UIGradient_7 = Instance.new("UIGradient")
local UICorner_8 = Instance.new("UICorner")
local BobsExploits = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local BobsExploits_2 = Instance.new("TextLabel")
local BobsExploits_3 = Instance.new("TextLabel")
local ViewportFrame = Instance.new("ViewportFrame")
local GlossEffect = Instance.new("ImageLabel")
local UICorner_9 = Instance.new("UICorner")
local Faceremover = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local UIGradient_8 = Instance.new("UIGradient")
local Unheadless = Instance.new("TextButton")
local UIGradient_9 = Instance.new("UIGradient")
local UICorner_11 = Instance.new("UICorner")
local Invisible = Instance.new("TextButton")
local UIGradient_10 = Instance.new("UIGradient")
local UICorner_12 = Instance.new("UICorner")

--Properties:

BobsExploitsV11.Name = "Bob's Exploits V1.1"
BobsExploitsV11.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = BobsExploitsV11
Frame.BackgroundColor3 = Color3.fromRGB(0, 158, 132)
Frame.Position = UDim2.new(0.0163004957, 0, 0.630864203, 0)
Frame.Size = UDim2.new(0, 789, 0, 282)

UICorner.Parent = Frame

ClickTP.Name = "ClickTP"
ClickTP.Parent = Frame
ClickTP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickTP.Position = UDim2.new(0.0240068138, 0, 0.236301616, 0)
ClickTP.Size = UDim2.new(0, 127, 0, 43)
ClickTP.Font = Enum.Font.JosefinSans
ClickTP.Text = "ClickTP"
ClickTP.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickTP.TextScaled = true
ClickTP.TextSize = 14.000
ClickTP.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 204))}
UIGradient.Parent = ClickTP

UICorner_2.CornerRadius = UDim.new(0.200000003, 2)
UICorner_2.Parent = ClickTP

Fly.Name = "Fly"
Fly.Parent = Frame
Fly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fly.Position = UDim2.new(0.0224939547, 0, 0.424244881, 0)
Fly.Size = UDim2.new(0, 127, 0, 42)
Fly.Font = Enum.Font.JosefinSans
Fly.Text = "Fly R6 (Permanent) "
Fly.TextColor3 = Color3.fromRGB(0, 0, 0)
Fly.TextScaled = true
Fly.TextSize = 14.000
Fly.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 204))}
UIGradient_2.Parent = Fly

UICorner_3.CornerRadius = UDim.new(0.200000003, 2)
UICorner_3.Parent = Fly

NightTime.Name = "NightTime"
NightTime.Parent = Frame
NightTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NightTime.Position = UDim2.new(0.0240068138, 0, 0.61218816, 0)
NightTime.Size = UDim2.new(0, 127, 0, 42)
NightTime.Font = Enum.Font.JosefinSans
NightTime.Text = "Night Time"
NightTime.TextColor3 = Color3.fromRGB(0, 0, 0)
NightTime.TextScaled = true
NightTime.TextSize = 14.000
NightTime.TextWrapped = true

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 204))}
UIGradient_3.Parent = NightTime

UICorner_4.CornerRadius = UDim.new(0.200000003, 2)
UICorner_4.Parent = NightTime

InfJump.Name = "InfJump"
InfJump.Parent = Frame
InfJump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfJump.Position = UDim2.new(0.0233132839, 0, 0.0298398286, 0)
InfJump.Size = UDim2.new(0, 127, 0, 42)
InfJump.Font = Enum.Font.JosefinSans
InfJump.Text = "Inf Jump"
InfJump.TextColor3 = Color3.fromRGB(0, 0, 0)
InfJump.TextScaled = true
InfJump.TextSize = 14.000
InfJump.TextWrapped = true

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 204))}
UIGradient_4.Parent = InfJump

UICorner_5.CornerRadius = UDim.new(0.200000003, 2)
UICorner_5.Parent = InfJump

DayTime.Name = "DayTime"
DayTime.Parent = Frame
DayTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DayTime.Position = UDim2.new(0.0240068138, 0, 0.814131916, 0)
DayTime.Size = UDim2.new(0, 127, 0, 42)
DayTime.Font = Enum.Font.JosefinSans
DayTime.Text = "Day Time"
DayTime.TextColor3 = Color3.fromRGB(0, 0, 0)
DayTime.TextScaled = true
DayTime.TextSize = 14.000
DayTime.TextWrapped = true

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 204))}
UIGradient_5.Parent = DayTime

UICorner_6.CornerRadius = UDim.new(0.200000003, 2)
UICorner_6.Parent = DayTime

Plus.Name = "Plus"
Plus.Parent = Frame
Plus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Plus.Position = UDim2.new(0.323099107, 0, 0.203598574, 0)
Plus.Size = UDim2.new(0, 49, 0, 42)
Plus.Font = Enum.Font.JosefinSans
Plus.Text = "+"
Plus.TextColor3 = Color3.fromRGB(0, 0, 0)
Plus.TextScaled = true
Plus.TextSize = 14.000
Plus.TextWrapped = true

UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 204))}
UIGradient_6.Parent = Plus

UICorner_7.CornerRadius = UDim.new(0.200000003, 2)
UICorner_7.Parent = Plus

Minus.Name = "Minus"
Minus.Parent = Frame
Minus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minus.Position = UDim2.new(0.485127479, 0, 0.203598574, 0)
Minus.Size = UDim2.new(0, 49, 0, 42)
Minus.Font = Enum.Font.JosefinSans
Minus.Text = "-"
Minus.TextColor3 = Color3.fromRGB(0, 0, 0)
Minus.TextScaled = true
Minus.TextSize = 14.000
Minus.TextWrapped = true

UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 204))}
UIGradient_7.Parent = Minus

UICorner_8.CornerRadius = UDim.new(0.200000003, 2)
UICorner_8.Parent = Minus

BobsExploits.Name = "Bob's Exploits"
BobsExploits.Parent = Frame
BobsExploits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BobsExploits.BackgroundTransparency = 1.000
BobsExploits.Position = UDim2.new(0.29388544, 0, 0.0283949822, 0)
BobsExploits.Size = UDim2.new(0, 180, 0, 25)
BobsExploits.Font = Enum.Font.JosefinSans
BobsExploits.Text = "Speed"
BobsExploits.TextColor3 = Color3.fromRGB(0, 0, 0)
BobsExploits.TextScaled = true
BobsExploits.TextSize = 14.000
BobsExploits.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.29388544, 0, 0.113501363, 0)
TextLabel.Size = UDim2.new(0, 180, 0, 25)
TextLabel.Font = Enum.Font.JosefinSans
TextLabel.Text = "16"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

BobsExploits_2.Name = "Bob's Exploits"
BobsExploits_2.Parent = Frame
BobsExploits_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BobsExploits_2.BackgroundTransparency = 1.000
BobsExploits_2.Position = UDim2.new(0.752191365, 0, 0.92555809, 0)
BobsExploits_2.Size = UDim2.new(0, 172, 0, 20)
BobsExploits_2.Font = Enum.Font.JosefinSans
BobsExploits_2.Text = "Bob's Exploits"
BobsExploits_2.TextColor3 = Color3.fromRGB(0, 0, 0)
BobsExploits_2.TextScaled = true
BobsExploits_2.TextSize = 14.000
BobsExploits_2.TextWrapped = true

BobsExploits_3.Name = "Bob's Exploits"
BobsExploits_3.Parent = Frame
BobsExploits_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BobsExploits_3.BackgroundTransparency = 1.000
BobsExploits_3.Position = UDim2.new(0.307501167, 0, 0.907827616, 0)
BobsExploits_3.Size = UDim2.new(0, 180, 0, 25)
BobsExploits_3.Font = Enum.Font.JosefinSans
BobsExploits_3.Text = " V1.1"
BobsExploits_3.TextColor3 = Color3.fromRGB(0, 0, 0)
BobsExploits_3.TextScaled = true
BobsExploits_3.TextSize = 14.000
BobsExploits_3.TextWrapped = true

ViewportFrame.BackgroundTransparency = 1.000
ViewportFrame.AnchorPoint = Vector2.new(0, 0.5)
ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ViewportFrame.Parent = Frame
ViewportFrame.Position = UDim2.new(0.255402774, 0, 0.163514704, 0)

GlossEffect.Name = "GlossEffect"
GlossEffect.Parent = Frame
GlossEffect.BackgroundTransparency = 1.000
GlossEffect.Position = UDim2.new(0.00256958604, 0, -0.00375175476, 0)
GlossEffect.Size = UDim2.new(0, 786, 0, 282)
GlossEffect.ZIndex = 2
GlossEffect.Image = "rbxasset://textures/BWGradient.png"
GlossEffect.ImageTransparency = 0.642

UICorner_9.Parent = GlossEffect

Faceremover.Name = "Face remover"
Faceremover.Parent = Frame
Faceremover.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Faceremover.BorderColor3 = Color3.fromRGB(170, 0, 0)
Faceremover.Position = UDim2.new(0.553869426, 0, 0.460418403, 0)
Faceremover.Size = UDim2.new(0, 127, 0, 42)
Faceremover.Font = Enum.Font.JosefinSans
Faceremover.Text = "Face Remover"
Faceremover.TextScaled = true
Faceremover.TextSize = 14.000
Faceremover.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0.200000003, 2)
UICorner_10.Parent = Faceremover

UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 204))}
UIGradient_8.Parent = Faceremover

Unheadless.Name = "Unheadless"
Unheadless.Parent = BobsExploitsV11
Unheadless.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Unheadless.Position = UDim2.new(0.325918823, 0, 0.726214826, 0)
Unheadless.Size = UDim2.new(0, 127, 0, 42)
Unheadless.Font = Enum.Font.JosefinSans
Unheadless.Text = "Unheadless"
Unheadless.TextColor3 = Color3.fromRGB(0, 0, 0)
Unheadless.TextScaled = true
Unheadless.TextSize = 14.000
Unheadless.TextWrapped = true

UIGradient_9.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 204))}
UIGradient_9.Parent = Unheadless

UICorner_11.CornerRadius = UDim.new(0.200000003, 2)
UICorner_11.Parent = Unheadless

Invisible.Name = "Invisible"
Invisible.Parent = BobsExploitsV11
Invisible.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Invisible.Position = UDim2.new(0.326621413, 0, 0.658970296, 0)
Invisible.Size = UDim2.new(0, 127, 0, 42)
Invisible.Font = Enum.Font.JosefinSans
Invisible.Text = "Headless"
Invisible.TextColor3 = Color3.fromRGB(0, 0, 0)
Invisible.TextScaled = true
Invisible.TextSize = 14.000
Invisible.TextWrapped = true

UIGradient_10.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 204)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 204))}
UIGradient_10.Parent = Invisible

UICorner_12.CornerRadius = UDim.new(0.200000003, 2)
UICorner_12.Parent = Invisible

-- Scripts:

local function VVNU_fake_script() -- ClickTP.LocalScript 
	local script = Instance.new('LocalScript', ClickTP)

	script.Parent.MouseButton1Click:Connect(function()
		mouse = game.Players.LocalPlayer:GetMouse()
		tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.Name = "Click Teleport"
		tool.Activated:connect(function()
			local pos = mouse.Hit+Vector3.new(0,2.5,0)
			pos = CFrame.new(pos.X,pos.Y,pos.Z)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
		end)
		tool.Parent = game.Players.LocalPlayer.Backpack
	end)
end
coroutine.wrap(VVNU_fake_script)()
local function VIPU_fake_script() -- Fly.LocalScript 
	local script = Instance.new('LocalScript', Fly)

	script.Parent.MouseButton1Down:connect(function()
		repeat wait()
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
		local mouse = game.Players.LocalPlayer:GetMouse()
		repeat wait() until mouse
		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0
	
		function Fly()
			local bg = Instance.new("BodyGyro", torso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = torso.CFrame
			local bv = Instance.new("BodyVelocity", torso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			repeat wait()
				plr.Character.Humanoid.PlatformStand = true
				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+.5+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-1
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0.1,0)
				end
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			until not flying
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
		end
		mouse.KeyDown:connect(function(key)
			if key:lower() == "e" then
				if flying then flying = false
				else
					flying = true
					Fly()
				end
			elseif key:lower() == "w" then
				ctrl.f = 1
			elseif key:lower() == "s" then
				ctrl.b = -1
			elseif key:lower() == "a" then
				ctrl.l = -1
			elseif key:lower() == "d" then
				ctrl.r = 1
			end
		end)
		mouse.KeyUp:connect(function(key)
			if key:lower() == "w" then
				ctrl.f = 0
			elseif key:lower() == "s" then
				ctrl.b = 0
			elseif key:lower() == "a" then
				ctrl.l = 0
			elseif key:lower() == "d" then
				ctrl.r = 0
			end
		end)
		Fly()
	end)
end
coroutine.wrap(VIPU_fake_script)()
local function FRUQFLU_fake_script() -- NightTime.LocalScript 
	local script = Instance.new('LocalScript', NightTime)

	script.Parent.MouseButton1Click:Connect(function()
		game.Lighting.Brightness = 0
	end)
	
end
coroutine.wrap(FRUQFLU_fake_script)()
local function CMXUJOJ_fake_script() -- InfJump.LocalScript 
	local script = Instance.new('LocalScript', InfJump)

	local UIS = game:GetService("UserInputService")
	local player = game.Players.LocalPlayer
	local character
	local humanoid
	
	local canDoubleJump = false
	local hasDoubleJumped = false
	local oldPower
	local time_delay = 0.2
	local jump_multiplier = 1 -- set to 1 for a normal double jump, increase for the second jump to be higher
	
	script.Parent.MouseButton1Click:Connect(function()
		function onJumpRequest()
			if not character or not humanoid or not character:IsDescendantOf(workspace) or humanoid:GetState() == Enum.HumanoidStateType.Dead then
				return
			end
	
			if canDoubleJump and not hasDoubleJumped then
				hasDoubleJumped = false
				humanoid.JumpPower = oldPower * jump_multiplier
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end
	
		local function characterAdded(new)
			character = new
			humanoid = new:WaitForChild("Humanoid")
			hasDoubleJumped = false
			canDoubleJump = false
			oldPower = humanoid.JumpPower
	
			humanoid.StateChanged:connect(function(old, new)
				if new == Enum.HumanoidStateType.Landed then
					canDoubleJump = false
					hasDoubleJumped = false
					humanoid.JumpPower = oldPower
				elseif new == Enum.HumanoidStateType.Freefall then
					wait(time_delay)
					canDoubleJump = true
				end
			end)
		end
	
		if player.Character then
			characterAdded(player.Character) 
		end
	
		player.CharacterAdded:connect(characterAdded)
		UIS.JumpRequest:connect(onJumpRequest)
	end)
end
coroutine.wrap(CMXUJOJ_fake_script)()
local function KCRI_fake_script() -- DayTime.LocalScript 
	local script = Instance.new('LocalScript', DayTime)

	script.Parent.MouseButton1Click:Connect(function()
		game.Lighting.Brightness = 4
	end)
	
end
coroutine.wrap(KCRI_fake_script)()
local function XIBMFG_fake_script() -- Plus.LocalScript 
	local script = Instance.new('LocalScript', Plus)

	local label = script.Parent.Parent.TextLabel
	
	
	
	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed +5
		label.Text = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
	end)
end
coroutine.wrap(XIBMFG_fake_script)()
local function NFGBKWV_fake_script() -- Minus.LocalScript 
	local script = Instance.new('LocalScript', Minus)

	local label = script.Parent.Parent.TextLabel
	
	
	
	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed -5
		label.Text = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
	end)
end
coroutine.wrap(NFGBKWV_fake_script)()
local function OQSU_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	-- Variables
	local uis = game:GetService("UserInputService")
	
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	
	local MouseInDisplay, HoldInDisplay = false, false
	
	local currentX
	
	-- Character Display
	local VPFcam = Instance.new("Camera"); VPFcam.Parent = script.Parent.ViewportFrame
	VPFcam.CFrame = CFrame.new(0,0,0)
	script.Parent.ViewportFrame.CurrentCamera = VPFcam
	
	repeat wait(.1) until game:IsLoaded()
	
	char.Archivable = true
	
	local ClonedChar = char:Clone()
	
	ClonedChar.Parent = script.Parent.ViewportFrame.WorldModel
	ClonedChar.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	ClonedChar:SetPrimaryPartCFrame(CFrame.new(Vector3.new(0,0,-9.5),Vector3.new(0,0,0)))
	
	-- Turning Feature
	uis.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			if MouseInDisplay == true then
				HoldInDisplay = true
				currentX = nil
			end
		end
	end)
	
	uis.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			HoldInDisplay = false
		end
	end)
	
	script.Parent.ViewportFrame.MouseMoved:Connect(function(X,Y)
	
		if HoldInDisplay == false then return end
		
		if currentX then ClonedChar.PrimaryPart.CFrame *= CFrame.fromEulerAnglesXYZ(0,((X-currentX)*.025),0) end
		
		currentX = X
	end)
	
	script.Parent.ViewportFrame.MouseEnter:Connect(function() MouseInDisplay = true end)
	script.Parent.ViewportFrame.MouseLeave:Connect(function() MouseInDisplay = false end)
end
coroutine.wrap(OQSU_fake_script)()
local function FZVYWVA_fake_script() -- Faceremover.Script 
	local script = Instance.new('Script', Faceremover)

	function onButtonClicked()
	script.Parent.Parent.Parent.Parent.Character.Head.face : Remove()
	end 
	
	script.Parent.MouseButton1Click:connect(onButtonClicked)
end
coroutine.wrap(FZVYWVA_fake_script)()
local function LCQFVUW_fake_script() -- Unheadless.script 
	local script = Instance.new('Script', Unheadless)

	function bla() 
	script.Parent.Parent.Parent.Parent.Character.Head.Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character.Torso.Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Left Leg"].Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Right Leg"].Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Left Arm"].Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Right Arm"].Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["VoidStar"].Handle.Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Bandana"].Handle.Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Future Bandit"].Handle.Transparency = 0 
	end 
	
	script.Parent.MouseButton1Down:connect(bla) 
end
coroutine.wrap(LCQFVUW_fake_script)()
local function CZPOGHM_fake_script() -- Unheadless.script 
	local script = Instance.new('Script', Unheadless)

	function bla() 
	script.Parent.Parent.Parent.Parent.Character.Head.Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character.Torso.Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Left Leg"].Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Right Leg"].Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Left Arm"].Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Right Arm"].Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["VoidStar"].Handle.Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Bandana"].Handle.Transparency = 0 
	script.Parent.Parent.Parent.Parent.Character["Future Bandit"].Handle.Transparency = 0 
	end 
	
	script.Parent.MouseButton1Down:connect(bla) 
end
coroutine.wrap(CZPOGHM_fake_script)()
local function ZQDZZCM_fake_script() -- Invisible.script 
	local script = Instance.new('Script', Invisible)

	function bla() 
	script.Parent.Parent.Parent.Parent.Character.Head.Transparency = 1  
	end 
	
	script.Parent.MouseButton1Down:connect(bla) 
end
coroutine.wrap(ZQDZZCM_fake_script)()
local function ZPXD_fake_script() -- Invisible.script 
	local script = Instance.new('Script', Invisible)

	function bla() 
	Character.Head.Transparency = 1
	end 
	
	script.Parent.MouseButton1Down:connect(bla) 
end
coroutine.wrap(ZPXD_fake_script)()
local function VVGLVG_fake_script() -- BobsExploitsV11.LocalScript 
	local script = Instance.new('LocalScript', BobsExploitsV11)

	-- Variables
	local uis = game:GetService("UserInputService")
	
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	
	local MouseInDisplay, HoldInDisplay = false, false
	
	local currentX
	
	-- Character Display
	local VPFcam = Instance.new("Camera"); VPFcam.Parent = script.Parent.ViewportFrame
	VPFcam.CFrame = CFrame.new(0,0,0)
	script.Parent.ViewportFrame.CurrentCamera = VPFcam
	
	repeat wait(.1) until game:IsLoaded()
	
	char.Archivable = true
	
	local ClonedChar = char:Clone()
	
	ClonedChar.Parent = script.Parent.ViewportFrame.WorldModel
	ClonedChar.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	ClonedChar:SetPrimaryPartCFrame(CFrame.new(Vector3.new(0,0,-9.5),Vector3.new(0,0,0)))
	
	-- Turning Feature
	uis.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			if MouseInDisplay == true then
				HoldInDisplay = true
				currentX = nil
			end
		end
	end)
	
	uis.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			HoldInDisplay = false
		end
	end)
	
	script.Parent.ViewportFrame.MouseMoved:Connect(function(X,Y)
	
		if HoldInDisplay == false then return end
		
		if currentX then ClonedChar.PrimaryPart.CFrame *= CFrame.fromEulerAnglesXYZ(0,((X-currentX)*.025),0) end
		
		currentX = X
	end)
	
	script.Parent.ViewportFrame.MouseEnter:Connect(function() MouseInDisplay = true end)
	script.Parent.ViewportFrame.MouseLeave:Connect(function() MouseInDisplay = false end)
end
coroutine.wrap(VVGLVG_fake_script)()
