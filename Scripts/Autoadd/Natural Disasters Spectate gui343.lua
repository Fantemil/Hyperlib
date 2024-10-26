-- GUI to Lua
-----
-- Version: 2.0.

-- Instances:

local SpectateGui = Instance.new("ScreenGui")
local Button = Instance.new("ImageButton")
local Bar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Next = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local Previous = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local UIGradient_3 = Instance.new("UIGradient")

--Properties:

SpectateGui.Name = "SpectateGui"
SpectateGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Button.Name = "Button"
Button.Parent = SpectateGui
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 0.300
Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
Button.BorderSizePixel = 5
Button.Position = UDim2.new(0, 0, 0.5, -25)
Button.Size = UDim2.new(0, 50, 0, 50)
Button.Image = "http://www.roblox.com/asset/?id=176106970"

Bar.Name = "Bar"
Bar.Parent = SpectateGui
Bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bar.BackgroundTransparency = 0.200
Bar.BorderColor3 = Color3.fromRGB(27, 42, 53)
Bar.BorderSizePixel = 5
Bar.Position = UDim2.new(-1, -100, 0.879999995, -50)
Bar.Size = UDim2.new(0, 200, 0, 50)

Title.Name = "Title"
Title.Parent = Bar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
Title.Position = UDim2.new(0.275000006, 0, 0, 0)
Title.Size = UDim2.new(0.449999988, 0, 1, 0)
Title.Font = Enum.Font.SourceSans
Title.Text = ""
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Next.Name = "Next"
Next.Parent = Bar
Next.BackgroundColor3 = Color3.fromRGB(134, 134, 134)
Next.BorderColor3 = Color3.fromRGB(130, 203, 255)
Next.BorderSizePixel = 0
Next.Position = UDim2.new(1, 0, 0, 0)
Next.Size = UDim2.new(-0.25, 0, 1, 0)
Next.Font = Enum.Font.SourceSans
Next.Text = ">"
Next.TextColor3 = Color3.fromRGB(255, 255, 255)
Next.TextSize = 48.000

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0, Color3.fromRGB(191, 191, 191)), ColorSequenceKeypoint.new(0, Color3.fromRGB(182, 182, 182)), ColorSequenceKeypoint.new(0, Color3.fromRGB(194, 194, 194)), ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)), ColorSequenceKeypoint.new(0, Color3.fromRGB(216, 216, 216)), ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))}
UIGradient.Offset = Vector2.new(0, -1.39999998)
UIGradient.Rotation = 30
UIGradient.Parent = Next

Previous.Name = "Previous"
Previous.Parent = Bar
Previous.BackgroundColor3 = Color3.fromRGB(134, 134, 134)
Previous.BorderColor3 = Color3.fromRGB(130, 203, 255)
Previous.BorderSizePixel = 0
Previous.Size = UDim2.new(0.25, 0, 1, 0)
Previous.Font = Enum.Font.SourceSans
Previous.Text = "<"
Previous.TextColor3 = Color3.fromRGB(255, 255, 255)
Previous.TextSize = 48.000

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0, Color3.fromRGB(191, 191, 191)), ColorSequenceKeypoint.new(0, Color3.fromRGB(182, 182, 182)), ColorSequenceKeypoint.new(0, Color3.fromRGB(194, 194, 194)), ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)), ColorSequenceKeypoint.new(0, Color3.fromRGB(216, 216, 216)), ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))}
UIGradient_2.Offset = Vector2.new(0, -1.39999998)
UIGradient_2.Rotation = 30
UIGradient_2.Parent = Previous

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0, Color3.fromRGB(191, 191, 191)), ColorSequenceKeypoint.new(0, Color3.fromRGB(182, 182, 182)), ColorSequenceKeypoint.new(0, Color3.fromRGB(194, 194, 194)), ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 200, 200)), ColorSequenceKeypoint.new(0, Color3.fromRGB(216, 216, 216)), ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))}
UIGradient_3.Offset = Vector2.new(0, -1.39999998)
UIGradient_3.Rotation = 30
UIGradient_3.Parent = Bar

-- Scripts:

local function SJGQKFB_fake_script() -- SpectateGui.LocalScript 
	local script = Instance.new('LocalScript', SpectateGui)
	cam = game.Workspace.CurrentCamera
	
	local bar = script.Parent.Bar
	local title = bar.Title
	local prev = bar.Previous
	local nex = bar.Next
	local button = script.Parent.Button
	
	function get()
		for _,v in pairs(game.Players:GetPlayers())do
			if v.Name == title.Text then
				return(_)
			end
		end
	end
	
	
	local debounce = false
	button.MouseButton1Click:connect(function()
		if debounce == false then debounce = true
			bar:TweenPosition(UDim2.new(.5,-100,0.88,-50),"In","Linear",1,true)
			pcall(function()
					title.Text = game.Players:GetPlayerFromCharacter(cam.CameraSubject.Parent).Name
			end)
		elseif debounce == true then debounce = false
			pcall(function() cam.CameraSubject = game.Players.LocalPlayer.Character.Humanoid end)
				bar:TweenPosition(UDim2.new(-1,-100,0.88,-50),"In","Linear",1,true)
			end
	end)
	
	prev.MouseButton1Click:connect(function()
		wait(.1)
		local players = game.Players:GetPlayers()
		local num = get()
		if not pcall(function() 
			cam.CameraSubject = players[num-1].Character.Humanoid
			end) then
			cam.CameraSubject = players[#players].Character.Humanoid
		end
	pcall(function()
					title.Text = game.Players:GetPlayerFromCharacter(cam.CameraSubject.Parent).Name
			end)
	end)
	
	nex.MouseButton1Click:connect(function()
		wait(.1)
		local players = game.Players:GetPlayers()
		local num = get()
		if not pcall(function() 
			cam.CameraSubject = players[num+1].Character.Humanoid
			end) then
			cam.CameraSubject = players[1].Character.Humanoid
		end
	pcall(function()
					title.Text = game.Players:GetPlayerFromCharacter(cam.CameraSubject.Parent).Name
			end)
	end)
	
	
end
coroutine.wrap(SJGQKFB_fake_script)()
local function JZPXRGT_fake_script() -- UIGradient.LocalScript 
	local script = Instance.new('LocalScript', UIGradient)
	local ti = TweenInfo.new(5,Enum.EasingStyle.Back,Enum.EasingDirection.InOut,-1,true,1)
	
	game.TweenService:Create(script.Parent,ti,{Offset = Vector2.new(10,2)}):Play()
end
coroutine.wrap(JZPXRGT_fake_script)()
local function BAEBIXL_fake_script() -- UIGradient_2.LocalScript 
	local script = Instance.new('LocalScript', UIGradient_2)
	local ti = TweenInfo.new(5,Enum.EasingStyle.Back,Enum.EasingDirection.InOut,-1,true,1)
	
	game.TweenService:Create(script.Parent,ti,{Offset = Vector2.new(10,2)}):Play()
end
coroutine.wrap(BAEBIXL_fake_script)()
local function MBYAL_fake_script() -- UIGradient_3.LocalScript 
	local script = Instance.new('LocalScript', UIGradient_3)
	local ti = TweenInfo.new(5,Enum.EasingStyle.Back,Enum.EasingDirection.InOut,-1,true,1)
	
	game.TweenService:Create(script.Parent,ti,{Offset = Vector2.new(10,2)}):Play()
end
coroutine.wrap(MBYAL_fake_script)()
