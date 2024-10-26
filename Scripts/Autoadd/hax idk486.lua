-- Gui to Lua
-- Version: 3.2

-- Instances:

local AppExploit = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel_3 = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel_4 = Instance.new("TextLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local TextLabel_5 = Instance.new("TextLabel")
local BTools = Instance.new("TextButton")
local TextLabel_6 = Instance.new("TextLabel")
local fly = Instance.new("TextButton")
local TextLabel_7 = Instance.new("TextLabel")
local Clicktp = Instance.new("TextButton")
local InfiniteJump = Instance.new("TextButton")

--Properties:

AppExploit.Name = "AppExploit"
AppExploit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Name = "Frame"
Frame.Parent = AppExploit
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0674329475, 0, 0.0791443884, 0)
Frame.Size = UDim2.new(0.136398464, 0, 0.234224603, 0)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(56, 56, 56)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 0.0913242027, 0)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "App Exploit"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.219101131, 0, 0.151361719, 0)
TextLabel_2.Size = UDim2.new(0.460674167, 0, 0.114155248, 0)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.Text = "Infinite Jump"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0393258445, 0, 0.116591923, 0)
ImageLabel.Size = UDim2.new(0.179775283, 0, 0.173515975, 0)
ImageLabel.Image = "rbxassetid://6212253422"

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.179775283, 0, 0.321765304, 0)
TextLabel_3.Size = UDim2.new(0.5, 0, 0.114155248, 0)
TextLabel_3.Font = Enum.Font.SciFi
TextLabel_3.Text = "Click To Teleport"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

ImageLabel_2.Parent = Frame
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Position = UDim2.new(0.0393258445, 0, 0.313901335, 0)
ImageLabel_2.Size = UDim2.new(0, 25, 0, 29)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=9318228018"

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.179775283, 0, 0.496653199, 0)
TextLabel_4.Size = UDim2.new(0.5, 0, 0.114155248, 0)
TextLabel_4.Font = Enum.Font.SciFi
TextLabel_4.Text = "F3X Btools"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

ImageLabel_3.Parent = Frame
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.Position = UDim2.new(0.0393258445, 0, 0.475336313, 0)
ImageLabel_3.Size = UDim2.new(0.140449435, 0, 0.132420093, 0)
ImageLabel_3.Image = "http://www.roblox.com/asset/?id=6767454852"

TextLabel_5.Parent = Frame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.0393258445, 0, 0.845384657, 0)
TextLabel_5.Size = UDim2.new(0.921348333, 0, 0.114155248, 0)
TextLabel_5.Font = Enum.Font.SciFi
TextLabel_5.Text = "By: ApparentlyDevv"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

BTools.Name = "BTools"
BTools.Parent = Frame
BTools.BackgroundColor3 = Color3.fromRGB(0, 157, 255)
BTools.BorderSizePixel = 0
BTools.Position = UDim2.new(0.752808928, 0, 0.487464517, 0)
BTools.Size = UDim2.new(0.157303378, 0, 0.118721463, 0)
BTools.Font = Enum.Font.FredokaOne
BTools.Text = "BTools"
BTools.TextColor3 = Color3.fromRGB(0, 157, 255)
BTools.TextScaled = true
BTools.TextSize = 14.000
BTools.TextStrokeTransparency = 0.000
BTools.TextTransparency = 1.000
BTools.TextWrapped = true

TextLabel_6.Parent = Frame
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0.410112351, 0, 0, 0)
TextLabel_6.Size = UDim2.new(0.921348333, 0, 0.0958904102, 0)
TextLabel_6.Font = Enum.Font.SciFi
TextLabel_6.Text = "v1.3"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

fly.Name = "fly"
fly.Parent = Frame
fly.BackgroundColor3 = Color3.fromRGB(0, 157, 255)
fly.BorderSizePixel = 0
fly.Position = UDim2.new(0.755269468, 0, 0.665202022, 0)
fly.Size = UDim2.new(0, 28, 0, 25)
fly.Font = Enum.Font.FredokaOne
fly.Text = ""
fly.TextColor3 = Color3.fromRGB(0, 0, 0)
fly.TextScaled = true
fly.TextSize = 14.000
fly.TextWrapped = true

TextLabel_7.Parent = Frame
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(0.179775283, 0, 0.665602982, 0)
TextLabel_7.Size = UDim2.new(0.5, 0, 0.114155248, 0)
TextLabel_7.Font = Enum.Font.SciFi
TextLabel_7.Text = "Fly"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

Clicktp.Name = "Clicktp"
Clicktp.Parent = Frame
Clicktp.BackgroundColor3 = Color3.fromRGB(0, 157, 255)
Clicktp.BorderSizePixel = 0
Clicktp.Position = UDim2.new(0.752808928, 0, 0.313901305, 0)
Clicktp.Size = UDim2.new(0.162301689, 0, 0.13111721, 0)
Clicktp.Font = Enum.Font.FredokaOne
Clicktp.Text = ""
Clicktp.TextColor3 = Color3.fromRGB(0, 0, 0)
Clicktp.TextScaled = true
Clicktp.TextSize = 14.000
Clicktp.TextWrapped = true

InfiniteJump.Name = "Infinite Jump"
InfiniteJump.Parent = Frame
InfiniteJump.BackgroundColor3 = Color3.fromRGB(0, 157, 255)
InfiniteJump.BorderSizePixel = 0
InfiniteJump.Position = UDim2.new(0.758426964, 0, 0.151361719, 0)
InfiniteJump.Size = UDim2.new(0.152926698, 0, 0.113908514, 0)
InfiniteJump.Font = Enum.Font.SourceSans
InfiniteJump.Text = ""
InfiniteJump.TextColor3 = Color3.fromRGB(0, 0, 0)
InfiniteJump.TextScaled = true
InfiniteJump.TextSize = 14.000
InfiniteJump.TextWrapped = true

-- Scripts:

local function WLZZ_fake_script() -- Frame.Drag Gui Script 
	local script = Instance.new('LocalScript', Frame)

	function dragify(Main)
	dragToggle = nil
	dragSpeed = 0.95 -- You can edit this.
	dragInput = nil
	dragStart = nil
	dragPos = nil
	
	function updateInput(input)
	Delta = input.Position - dragStart
	Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	game:GetService("TweenService"):Create(Main, TweenInfo.new(.25), {Position = Position}):Play()
	end
	
	Main.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
	dragToggle = true
	dragStart = input.Position
	startPos = Main.Position
	input.Changed:Connect(function()
	if (input.UserInputState == Enum.UserInputState.End) then
	dragToggle = false
	end
	end)
	end
	end)
	
	Main.InputChanged:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
	dragInput = input
	end
	end)
	
	game:GetService("UserInputService").InputChanged:Connect(function(input)
	if (input == dragInput and dragToggle) then
	updateInput(input)
	end
	end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(WLZZ_fake_script)()
local function FOYDI_fake_script() -- BTools.LocalScript 
	local script = Instance.new('LocalScript', BTools)

	local CloneTool = game.ReplicatedStorage.CloneTool
	local GameTool = game.ReplicatedStorage.GameTool
	local HammerTool = game.ReplicatedStorage.HammerTool
	local Player = game.Players.LocalPlayer
	
	script.Parent.MouseButton1Click:Connect(function()
		CloneTool:Clone()
		CloneTool:Clone().Parent = Player.Backpack
		
		GameTool:Clone()
		GameTool:Clone().Parent = Player.Backpack
		
		HammerTool:Clone()
		HammerTool:Clone().Parent = Player.Backpack
	end)
end
coroutine.wrap(FOYDI_fake_script)()
local function WJPU_fake_script() -- fly.LocalScript 
	local script = Instance.new('LocalScript', fly)

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
coroutine.wrap(WJPU_fake_script)()
local function GYCQH_fake_script() -- Clicktp.LocalScript 
	local script = Instance.new('LocalScript', Clicktp)

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
coroutine.wrap(GYCQH_fake_script)()
local function UDXF_fake_script() -- InfiniteJump.LocalScript 
	local script = Instance.new('LocalScript', InfiniteJump)

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
coroutine.wrap(UDXF_fake_script)()
