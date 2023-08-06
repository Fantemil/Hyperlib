-- dev was here

local openclose = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local doors = Instance.new("TextButton")
local fences = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local tp = Instance.new("TextButton")
local fly = Instance.new("TextButton")
local seat = Instance.new("TextButton")
local gui = Instance.new("ScreenGui")

--Properties:
gui.Parent = game.CoreGui

openclose.Name = "openclose"
openclose.Parent = gui
openclose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
openclose.BorderColor3 = Color3.fromRGB(0, 0, 0)
openclose.BorderSizePixel = 0
openclose.Position = UDim2.new(0.461727172, 0, 0.359724611, 0)
openclose.Size = UDim2.new(0.0333660468, 0, 0.0593803637, 0)
openclose.Image = "rbxassetid://14261678110"

UICorner.CornerRadius = UDim.new(1, 8)
UICorner.Parent = openclose

Frame.Parent = openclose
Frame.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.971014678, 0)
Frame.Size = UDim2.new(2.27941179, 0, 3.46376896, 0)

doors.Name = "doors"
doors.Parent = Frame
doors.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
doors.BorderColor3 = Color3.fromRGB(0, 0, 0)
doors.BorderSizePixel = 0
doors.Position = UDim2.new(0.0516129024, 0, 0.136192411, 0)
doors.Size = UDim2.new(0.896774173, 0, 0.117154814, 0)
doors.Font = Enum.Font.SourceSans
doors.Text = "Remove doors"
doors.TextColor3 = Color3.fromRGB(255, 255, 255)
doors.TextScaled = true
doors.TextSize = 14.000
doors.TextWrapped = true

fences.Name = "fences"
fences.Parent = Frame
fences.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
fences.BorderColor3 = Color3.fromRGB(0, 0, 0)
fences.BorderSizePixel = 0
fences.Position = UDim2.new(0.0516129024, 0, 0.283606887, 0)
fences.Size = UDim2.new(0.896774173, 0, 0.117154814, 0)
fences.Font = Enum.Font.SourceSans
fences.Text = "Remove fences"
fences.TextColor3 = Color3.fromRGB(255, 255, 255)
fences.TextScaled = true
fences.TextSize = 14.000
fences.TextWrapped = true

btools.Name = "btools"
btools.Parent = Frame
btools.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
btools.BorderColor3 = Color3.fromRGB(0, 0, 0)
btools.BorderSizePixel = 0
btools.Position = UDim2.new(0.0516129024, 0, 0.431021333, 0)
btools.Size = UDim2.new(0.896774173, 0, 0.117154814, 0)
btools.Font = Enum.Font.SourceSans
btools.Text = "F3X"
btools.TextColor3 = Color3.fromRGB(255, 255, 255)
btools.TextScaled = true
btools.TextSize = 14.000
btools.TextWrapped = true

UIListLayout.Parent = Frame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0.0299999993, 0)

tp.Name = "tp"
tp.Parent = Frame
tp.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
tp.BorderColor3 = Color3.fromRGB(0, 0, 0)
tp.BorderSizePixel = 0
tp.Position = UDim2.new(0.0516129024, 0, 0.431021333, 0)
tp.Size = UDim2.new(0.896774173, 0, 0.117154814, 0)
tp.Font = Enum.Font.SourceSans
tp.Text = "TP Tool"
tp.TextColor3 = Color3.fromRGB(255, 255, 255)
tp.TextScaled = true
tp.TextSize = 14.000
tp.TextWrapped = true

fly.Name = "fly"
fly.Parent = Frame
fly.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
fly.BorderColor3 = Color3.fromRGB(0, 0, 0)
fly.BorderSizePixel = 0
fly.Position = UDim2.new(0.0516129024, 0, 0.431021333, 0)
fly.Size = UDim2.new(0.896774173, 0, 0.117154814, 0)
fly.Font = Enum.Font.SourceSans
fly.Text = "Fly [Z]"
fly.TextColor3 = Color3.fromRGB(255, 255, 255)
fly.TextScaled = true
fly.TextSize = 14.000
fly.TextWrapped = true

seat.Name = "seat"
seat.Parent = Frame
seat.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
seat.BorderColor3 = Color3.fromRGB(0, 0, 0)
seat.BorderSizePixel = 0
seat.Position = UDim2.new(0.0516129024, 0, 0.431021333, 0)
seat.Size = UDim2.new(0.896774173, 0, 0.117154814, 0)
seat.Font = Enum.Font.SourceSans
seat.Text = "Seat of glory"
seat.TextColor3 = Color3.fromRGB(255, 255, 255)
seat.TextScaled = true
seat.TextSize = 14.000
seat.TextWrapped = true

-- Scripts:

local function AOGOZ_fake_script() -- openclose.modding 
	local script = Instance.new('LocalScript', openclose)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
	local function callback(Text)
		if Text == "I have read allat" then
			game.StarterGui:SetCore("SendNotification",  {
				Title = "DevWare";
				Text = "Great! now have fun ".. game.Players.LocalPlayer.DisplayName.. "!";
				Icon = "http://www.roblox.com/asset/?id=12740550073";
				Duration = 5;
			})
		elseif Text == ("Nuh uh") then
			game.Players.LocalPlayer:Kick("Should've read allat man.")
		end
	end
	
	local NotificationBindable = Instance.new("BindableFunction")
	NotificationBindable.OnInvoke = callback
	--
	game.StarterGui:SetCore("SendNotification",  {
		Title = "DevWare";
		Text = "Warning! this is an experimental version of DevWare 1.3/1.2 designed only for Prison Life v3!";
		Icon = "http://www.roblox.com/asset/?id=7249251729";
		Duration = 1333333333333333333333333333333333;
		Button1 = "I have read allat";
		Button2 = "Nuh uh";
		Callback = NotificationBindable;
	})
	
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Frame.Visible == true then
			script.Parent.Frame.Visible = false
		else
			script.Parent.Frame.Visible = true
		end
	end)
	
	local thingylolalsowhyareyoucrackingthis = script.Parent.Frame
	
	thingylolalsowhyareyoucrackingthis.doors.MouseButton1Click:Connect(function()
		game.workspace.Doors:Destroy()
		-- modding was pretty easy, super similar to normal prison life
	end)
	
	thingylolalsowhyareyoucrackingthis.fences.MouseButton1Click:Connect(function()
		game.workspace["Prison_Fences"]:Destroy()
	end)
	
	thingylolalsowhyareyoucrackingthis.btools.MouseButton1Click:Connect(function()
		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
	end)
	
	thingylolalsowhyareyoucrackingthis.tp.MouseButton1Click:Connect(function()
		local mouse = game.Players.LocalPlayer:GetMouse()
		local tool = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.Name = "Click Teleport"
		tool.ToolTip = "MODDED BY DEVX (TP TOOL)"
		tool.TextureId = "http://www.roblox.com/asset/?id=14261678110"
		tool.Activated:connect(function()
			local pos = mouse.Hit+Vector3.new(0,2.5,0)
			pos = CFrame.new(pos.X,pos.Y,pos.Z)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
		end)
		tool.Parent = game.Players.LocalPlayer.Backpack
	end)
	
	thingylolalsowhyareyoucrackingthis.fly.MouseButton1Click:Connect(function()
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "DevWare",
			Text = "The ability to fly has been enabled! press Z to toggle it!",
			Icon = "rbxassetid://14261678110"
		})
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
		local maxspeed = 500
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
				plr.Character.Humanoid.PlatformStand = false
				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+125.0+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-250
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
			if key:lower() == "z" then
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
			wait(5)
		end)
		Fly()
	end)
	
	thingylolalsowhyareyoucrackingthis.seat.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1230.02991, 107.913727, 2839.36157, 0.0176228881, 0, 0.999844849, 0, 1, 0, -0.999844849, 0, 0.0176228881)
	end)
end
coroutine.wrap(AOGOZ_fake_script)()
