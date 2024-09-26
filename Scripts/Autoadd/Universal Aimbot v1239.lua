	local ScreenGui = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local ScriptName = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")
	local ImageButton = Instance.new("ImageButton")
	local UICorner_2 = Instance.new("UICorner")
	local Discord = Instance.new("TextLabel")
	local UICorner_3 = Instance.new("UICorner")
	local FOVCircle = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local InfYield = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local FPSBoost = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	local Box = Instance.new("TextButton")
	local UICorner_7 = Instance.new("UICorner")
	local FOV120 = Instance.new("TextButton")
	local UICorner_8 = Instance.new("UICorner")
	local RTX = Instance.new("TextButton")
	local UICorner_9 = Instance.new("UICorner")
	local AntiAfk = Instance.new("TextButton")
	local UICorner_10 = Instance.new("UICorner")
	local Highlights = Instance.new("TextButton")
	local UICorner_11 = Instance.new("UICorner")
	local Aimbot = Instance.new("TextButton")
	local UICorner_12 = Instance.new("UICorner")
	local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
	Title = "Universal Aimbot";
	Text = "Script loaded sucsess!";
	Icon = "rbxassetid://18133329878";
	Duration = 5;
})


	--Properties:

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	main.Name = "main"
	main.Parent = ScreenGui
	main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	main.BorderSizePixel = 0
	main.Position = UDim2.new(0.335686266, 0, 0.282576859, 0)
	main.Size = UDim2.new(0, 450, 0, 242)
	main.Active = true
	main.Draggable = true

	ScriptName.Name = "ScriptName"
	ScriptName.Parent = main
	ScriptName.BackgroundColor3 = Color3.fromRGB(212, 212, 212)
	ScriptName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScriptName.BorderSizePixel = 0
	ScriptName.Size = UDim2.new(0, 450, 0, 50)
	ScriptName.Font = Enum.Font.Unknown
	ScriptName.Text = "           Universal aimbot | By armengeimsss"
	ScriptName.TextColor3 = Color3.fromRGB(75, 75, 75)
	ScriptName.TextScaled = true
	ScriptName.TextSize = 27.000
	ScriptName.TextWrapped = true

	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = ScriptName

	ImageButton.Parent = main
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.BackgroundTransparency = 1.000
	ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton.BorderSizePixel = 0
	ImageButton.Position = UDim2.new(0.023866348, 0, 0, 0)
	ImageButton.Size = UDim2.new(0, 54, 0, 50)
	ImageButton.Image = "http://www.roblox.com/asset/?id=18133329855"

	UICorner_2.CornerRadius = UDim.new(0.100000001, 0)
	UICorner_2.Parent = main

	Discord.Name = "Discord"
	Discord.Parent = main
	Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Discord.BorderSizePixel = 0
	Discord.Position = UDim2.new(0.108963214, 0, 0.91613239, 0)
	Discord.Size = UDim2.new(0, 340, 0, 20)
	Discord.Font = Enum.Font.SourceSansItalic
	Discord.Text = "discord.gg/jf4PncZt"
	Discord.TextColor3 = Color3.fromRGB(207, 207, 207)
	Discord.TextSize = 20.000

	UICorner_3.CornerRadius = UDim.new(1, 0)
	UICorner_3.Parent = Discord

	FOVCircle.Name = "FOVCircle"
	FOVCircle.Parent = main
	FOVCircle.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
	FOVCircle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FOVCircle.BorderSizePixel = 0
	FOVCircle.Position = UDim2.new(0.352469742, 0, 0.685734928, 0)
	FOVCircle.Size = UDim2.new(0, 137, 0, 50)
	FOVCircle.Font = Enum.Font.SourceSansBold
	FOVCircle.Text = "Fov Circle"
	FOVCircle.TextColor3 = Color3.fromRGB(100, 100, 100)
	FOVCircle.TextSize = 22.000
	FOVCircle.MouseButton1Down:Connect(function()
		local teamCheck = false
		local fov = 150
		local smoothing = 1

		local RunService = game:GetService("RunService")

		local FOVring = Drawing.new("Circle")
		FOVring.Visible = true
		FOVring.Thickness = 1.5
		FOVring.Radius = fov
		FOVring.Transparency = 1
		FOVring.Color = Color3.fromRGB(255, 255, 255)
		FOVring.Position = workspace.CurrentCamera.ViewportSize/2

		local function getClosest(cframe)
			local ray = Ray.new(cframe.Position, cframe.LookVector).Unit

			local target = nil
			local mag = math.huge

			for i,v in pairs(game.Players:GetPlayers()) do
				if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or (not teamCheck)) then
					local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude

					if magBuf < mag then
						mag = magBuf
						target = v
					end
				end
			end

			return target
	end
end)

	UICorner_4.CornerRadius = UDim.new(0.5, 0)
	UICorner_4.Parent = FOVCircle

	InfYield.Name = "InfYield"
	InfYield.Parent = main
	InfYield.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
	InfYield.BorderColor3 = Color3.fromRGB(0, 0, 0)
	InfYield.BorderSizePixel = 0
	InfYield.Position = UDim2.new(0.67255342, 0, 0.685734928, 0)
	InfYield.Size = UDim2.new(0, 137, 0, 50)
	InfYield.Font = Enum.Font.SourceSansBold
	InfYield.Text = "Inf Yield"
	InfYield.TextColor3 = Color3.fromRGB(100, 100, 100)
	InfYield.TextSize = 22.000
	InfYield.MouseButton1Down:Connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)

	UICorner_5.CornerRadius = UDim.new(0.5, 0)
	UICorner_5.Parent = InfYield

	FPSBoost.Name = "FPSBoost"
	FPSBoost.Parent = main
	FPSBoost.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
	FPSBoost.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FPSBoost.BorderSizePixel = 0
	FPSBoost.Position = UDim2.new(0.0240179449, 0, 0.685734928, 0)
	FPSBoost.Size = UDim2.new(0, 137, 0, 50)
	FPSBoost.Font = Enum.Font.SourceSansBold
	FPSBoost.Text = "FPS Boost"
	FPSBoost.TextColor3 = Color3.fromRGB(100, 100, 100)
	FPSBoost.TextSize = 22.000
	FPSBoost.MouseButton1Down:Connect(function()
	local ToDisable = {
		Textures = true,
		VisualEffects = true,
		Parts = true,
		Particles = true,
		Sky = true
	}

	local ToEnable = {
		FullBright = false
	}

	local Stuff = {}

	for _, v in next, game:GetDescendants() do
		if ToDisable.Parts then
			if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
				v.Material = Enum.Material.SmoothPlastic
				table.insert(Stuff, 1, v)
			end
		end

		if ToDisable.Particles then
			if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
				v.Enabled = false
				table.insert(Stuff, 1, v)
			end
		end

		if ToDisable.VisualEffects then
			if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
				v.Enabled = false
				table.insert(Stuff, 1, v)
			end
		end

		if ToDisable.Textures then
			if v:IsA("Decal") or v:IsA("Texture") then
				v.Texture = ""
				table.insert(Stuff, 1, v)
			end
		end

		if ToDisable.Sky then
			if v:IsA("Sky") then
				v.Parent = nil
				table.insert(Stuff, 1, v)
			end
		end
	end

	game:GetService("TestService"):Message("Effects Disabler Script : Successfully disabled "..#Stuff.." assets / effects. Settings :")

	for i, v in next, ToDisable do
		print(tostring(i)..": "..tostring(v))
	end

	if ToEnable.FullBright then
		local Lighting = game:GetService("Lighting")

		Lighting.FogColor = Color3.fromRGB(255, 255, 255)
		Lighting.FogEnd = math.huge
		Lighting.FogStart = math.huge
		Lighting.Ambient = Color3.fromRGB(255, 255, 255)
		Lighting.Brightness = 5
		Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
		Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
		Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
		Lighting.Outlines = true
	end
	end)

	UICorner_6.CornerRadius = UDim.new(0.5, 0)
	UICorner_6.Parent = FPSBoost

	Box.Name = "Box"
	Box.Parent = main
	Box.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
	Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Box.BorderSizePixel = 0
	Box.Position = UDim2.new(0.0240179449, 0, 0.455658197, 0)
	Box.Size = UDim2.new(0, 137, 0, 50)
	Box.Font = Enum.Font.SourceSansBold
	Box.Text = "Boxes"
	Box.TextColor3 = Color3.fromRGB(100, 100, 100)
	Box.TextSize = 22.000
	Box.MouseButton1Down:Connect(function()
		local Settings = {
			Box_Color = Color3.fromRGB(255, 0, 0),
			Tracer_Color = Color3.fromRGB(255, 0, 0),
			Tracer_Thickness = 1,
			Box_Thickness = 1,
			Tracer_Origin = "Bottom", -- Middle or Bottom if FollowMouse is on this won't matter...
			Tracer_FollowMouse = false,
			Tracers = true
		}
		local Team_Check = {
			TeamCheck = false, -- if TeamColor is on this won't matter...
			Green = Color3.fromRGB(0, 255, 0),
			Red = Color3.fromRGB(255, 0, 0)
		}
		local TeamColor = true

		--// SEPARATION
		local player = game:GetService("Players").LocalPlayer
		local camera = game:GetService("Workspace").CurrentCamera
		local mouse = player:GetMouse()

		local function NewQuad(thickness, color)
			local quad = Drawing.new("Quad")
			quad.Visible = false
			quad.PointA = Vector2.new(0,0)
			quad.PointB = Vector2.new(0,0)
			quad.PointC = Vector2.new(0,0)
			quad.PointD = Vector2.new(0,0)
			quad.Color = color
			quad.Filled = false
			quad.Thickness = thickness
			quad.Transparency = 1
			return quad
		end

		local function NewLine(thickness, color)
			local line = Drawing.new("Line")
			line.Visible = false
			line.From = Vector2.new(0, 0)
			line.To = Vector2.new(0, 0)
			line.Color = color 
			line.Thickness = thickness
			line.Transparency = 1
			return line
		end

		local function Visibility(state, lib)
			for u, x in pairs(lib) do
				x.Visible = state
			end
		end

		local function ToColor3(col) --Function to convert, just cuz c;
			local r = col.r --Red value
			local g = col.g --Green value
			local b = col.b --Blue value
			return Color3.new(r,g,b); --Color3 datatype, made of the RGB inputs
		end

		local black = Color3.fromRGB(0, 0 ,0)
		local function ESP(plr)
			local library = {
				--//Tracer and Black Tracer(black border)
				blacktracer = NewLine(Settings.Tracer_Thickness*2, black),
				tracer = NewLine(Settings.Tracer_Thickness, Settings.Tracer_Color),
				--//Box and Black Box(black border)
				black = NewQuad(Settings.Box_Thickness*2, black),
				box = NewQuad(Settings.Box_Thickness, Settings.Box_Color),
				--//Bar and Green Health Bar (part that moves up/down)
				healthbar = NewLine(3, black),
				greenhealth = NewLine(1.5, black)
			}

			local function Colorize(color)
				for u, x in pairs(library) do
					if x ~= library.healthbar and x ~= library.greenhealth and x ~= library.blacktracer and x ~= library.black then
						x.Color = color
					end
				end
			end

			local function Updater()
				local connection
				connection = game:GetService("RunService").RenderStepped:Connect(function()
					if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("Head") ~= nil then
						local HumPos, OnScreen = camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
						if OnScreen then
							local head = camera:WorldToViewportPoint(plr.Character.Head.Position)
							local DistanceY = math.clamp((Vector2.new(head.X, head.Y) - Vector2.new(HumPos.X, HumPos.Y)).magnitude, 2, math.huge)

							local function Size(item)
								item.PointA = Vector2.new(HumPos.X + DistanceY, HumPos.Y - DistanceY*2)
								item.PointB = Vector2.new(HumPos.X - DistanceY, HumPos.Y - DistanceY*2)
								item.PointC = Vector2.new(HumPos.X - DistanceY, HumPos.Y + DistanceY*2)
								item.PointD = Vector2.new(HumPos.X + DistanceY, HumPos.Y + DistanceY*2)
							end
							Size(library.box)
							Size(library.black)

							--// Health Bar
							local d = (Vector2.new(HumPos.X - DistanceY, HumPos.Y - DistanceY*2) - Vector2.new(HumPos.X - DistanceY, HumPos.Y + DistanceY*2)).magnitude 
							local healthoffset = plr.Character.Humanoid.Health/plr.Character.Humanoid.MaxHealth * d

							library.greenhealth.From = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2)
							library.greenhealth.To = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2 - healthoffset)

							library.healthbar.From = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2)
							library.healthbar.To = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y - DistanceY*2)

							local green = Color3.fromRGB(0, 255, 0)
							local red = Color3.fromRGB(255, 0, 0)

							library.greenhealth.Color = red:lerp(green, plr.Character.Humanoid.Health/plr.Character.Humanoid.MaxHealth);

							if Team_Check.TeamCheck then
								if plr.TeamColor == player.TeamColor then
									Colorize(Team_Check.Green)
								else 
									Colorize(Team_Check.Red)
								end
							else 
								library.tracer.Color = Settings.Tracer_Color
								library.box.Color = Settings.Box_Color
							end
							if TeamColor == true then
								Colorize(plr.TeamColor.Color)
							end
							Visibility(true, library)
						else 
							Visibility(false, library)
						end
					else 
						Visibility(false, library)
						if game.Players:FindFirstChild(plr.Name) == nil then
							connection:Disconnect()
						end
					end
				end)
			end
			coroutine.wrap(Updater)()
		end

		for i, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name ~= player.Name then
				coroutine.wrap(ESP)(v)
			end
		end

		game.Players.PlayerAdded:Connect(function(newplr)
			if newplr.Name ~= player.Name then
				coroutine.wrap(ESP)(newplr)
			end
		end)
	end)

	UICorner_7.CornerRadius = UDim.new(0.5, 0)
	UICorner_7.Parent = Box

	FOV120.Name = "FOV120"
	FOV120.Parent = main
	FOV120.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
	FOV120.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FOV120.BorderSizePixel = 0
	FOV120.Position = UDim2.new(0.352469742, 0, 0.455658197, 0)
	FOV120.Size = UDim2.new(0, 137, 0, 50)
	FOV120.Font = Enum.Font.SourceSansBold
	FOV120.Text = "FOV (120)"
	FOV120.TextColor3 = Color3.fromRGB(100, 100, 100)
	FOV120.TextSize = 22.000
	FOV120.MouseButton1Down:Connect(function()
		local FovNumber = 120
		local Camera = workspace.CurrentCamera
		Camera.FieldOfView = FovNumber
	end)

	UICorner_8.CornerRadius = UDim.new(0.5, 0)
	UICorner_8.Parent = FOV120

	RTX.Name = "RTX"
	RTX.Parent = main
	RTX.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
	RTX.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RTX.BorderSizePixel = 0
	RTX.Position = UDim2.new(0.67255342, 0, 0.455658197, 0)
	RTX.Size = UDim2.new(0, 137, 0, 50)
	RTX.Font = Enum.Font.SourceSansBold
	RTX.Text = "RTX Graphics"
	RTX.TextColor3 = Color3.fromRGB(100, 100, 100)
	RTX.TextSize = 22.000
	RTX.MouseButton1Down:Connect(function()
		game:GetService("StarterGui"):SetCore("SendNotification", { 
			Title = "RTX GUI";
			Text = "Made by armengeimsss";
			Icon = "rbxthumb://type=Asset&id=12361535956&w=150&h=150"})
		Duration = 16;

		Duration = 16;

		local RTXGUI = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local UICorner_2 = Instance.new("UICorner")
		local Morning = Instance.new("TextButton")
		local UICorner_3 = Instance.new("UICorner")
		local Afternoon = Instance.new("TextButton")
		local UICorner_4 = Instance.new("UICorner")
		local Evening = Instance.new("TextButton")
		local UICorner_5 = Instance.new("UICorner")
		local Close = Instance.new("TextButton")
		local UICorner_6 = Instance.new("UICorner")
		local Credits = Instance.new("TextLabel")
		local UICorner_7 = Instance.new("UICorner")
		local Night = Instance.new("TextButton")
		local UICorner_8 = Instance.new("UICorner")
		local Stop = Instance.new("TextButton")
		local UICorner_9 = Instance.new("UICorner")
		local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer

		--Properties:

		RTXGUI.Name = "RTX GUI"
		--RTXGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		RTXGUI.Parent = game:GetService('CoreGui')
		RTXGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Frame.Parent = RTXGUI
		Frame.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
		Frame.Position = UDim2.new(0.0811881199, 0, 0.144948751, 0)
		Frame.Size = UDim2.new(0, 405, 0, 262)

		UICorner.CornerRadius = UDim.new(0, 15)
		UICorner.Parent = Frame

		Title.Name = "Title"
		Title.Parent = Frame
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.Size = UDim2.new(0, 405, 0, 50)
		Title.Font = Enum.Font.FredokaOne
		Title.Text = "RTX GUI"
		Title.TextColor3 = Color3.fromRGB(0, 0, 0)
		Title.TextScaled = true
		Title.TextSize = 14.000
		Title.TextWrapped = true

		UICorner_2.CornerRadius = UDim.new(0, 15)
		UICorner_2.Parent = Title

		Morning.Name = "Morning"
		Morning.Parent = Frame
		Morning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Morning.Position = UDim2.new(0.0493827164, 0, 0.22325556, 0)
		Morning.Size = UDim2.new(0, 170, 0, 50)
		Morning.Font = Enum.Font.FredokaOne
		Morning.Text = "Morning"
		Morning.TextColor3 = Color3.fromRGB(0, 0, 0)
		Morning.TextSize = 43.000
		Morning.MouseButton1Click:Connect(function()
			local Vignette = true -- change to false if you don't want a shadow frame



			local Lighting = game:GetService("Lighting")
			local StarterGui = game:GetService("StarterGui")
			local Bloom = Instance.new("BloomEffect")
			local Blur = Instance.new("BlurEffect")
			local ColorCor = Instance.new("ColorCorrectionEffect")
			local SunRays = Instance.new("SunRaysEffect")
			local Sky = Instance.new("Sky")
			local Atm = Instance.new("Atmosphere")


			for i, v in pairs(Lighting:GetChildren()) do
				if v then
					v:Destroy()
				end
			end

			Bloom.Parent = Lighting
			Blur.Parent = Lighting
			ColorCor.Parent = Lighting
			SunRays.Parent = Lighting
			Sky.Parent = Lighting
			Atm.Parent = Lighting

			if Vignette == true then
				local Gui = Instance.new("ScreenGui")
				Gui.Parent = StarterGui
				Gui.IgnoreGuiInset = true

				local ShadowFrame = Instance.new("ImageLabel")
				ShadowFrame.Parent = Gui
				ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
				ShadowFrame.Position = UDim2.new(0.5,0,1,0)
				ShadowFrame.Size = UDim2.new(1,0,1.05,0)
				ShadowFrame.BackgroundTransparency = 1
				ShadowFrame.Image = "rbxassetid://4576475446"
				ShadowFrame.ImageTransparency = 0.3
				ShadowFrame.ZIndex = 10
			end

			Bloom.Intensity = 0.3
			Bloom.Size = 10
			Bloom.Threshold = 0.8

			Blur.Size = 5

			ColorCor.Brightness = 0.1
			ColorCor.Contrast = 0.5
			ColorCor.Saturation = -0.3
			ColorCor.TintColor = Color3.fromRGB(123, 182, 232)

			SunRays.Intensity = 0.075
			SunRays.Spread = 0.727

			Sky.SkyboxBk = "rbxassetid://11832141390"
			Sky.SkyboxDn = "rbxassetid://11832143153"
			Sky.SkyboxFt = "rbxassetid://11832140714"
			Sky.SkyboxLf = "rbxassetid://11832142032"
			Sky.SkyboxRt = "rbxassetid://11832142403"
			Sky.SkyboxUp = "rbxassetid://11832185944"

			Sky.SunAngularSize = 10

			Lighting.Ambient = Color3.fromRGB(2,2,2)
			Lighting.Brightness = 2.25
			Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
			Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
			Lighting.EnvironmentDiffuseScale = 0.2
			Lighting.EnvironmentSpecularScale = 0.2
			Lighting.GlobalShadows = true
			Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
			Lighting.ShadowSoftness = 0.2
			Lighting.ClockTime = 7
			Lighting.GeographicLatitude = 45
			Lighting.ExposureCompensation = 0.5

			Atm.Density = 0.364
			Atm.Offset = 0.556
			Atm.Color = Color3.fromRGB(110, 153, 202)
			Atm.Decay = Color3.fromRGB(13, 105, 172)
			Atm.Glare = 0.36
			Atm.Haze = 1.72
		end)

		UICorner_3.Parent = Morning

		Afternoon.Name = "Afternoon"
		Afternoon.Parent = Frame
		Afternoon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Afternoon.Position = UDim2.new(0.530864179, 0, 0.22325556, 0)
		Afternoon.Size = UDim2.new(0, 170, 0, 50)
		Afternoon.Font = Enum.Font.FredokaOne
		Afternoon.Text = "Afternoon"
		Afternoon.TextColor3 = Color3.fromRGB(0, 0, 0)
		Afternoon.TextScaled = true
		Afternoon.TextSize = 43.000
		Afternoon.TextWrapped = true
		Afternoon.MouseButton1Click:Connect(function()
			local Vignette = true -- change to false if you don't want a shadow frame



			local Lighting = game:GetService("Lighting")
			local StarterGui = game:GetService("StarterGui")
			local Bloom = Instance.new("BloomEffect")
			local Blur = Instance.new("BlurEffect")
			local ColorCor = Instance.new("ColorCorrectionEffect")
			local SunRays = Instance.new("SunRaysEffect")
			local Sky = Instance.new("Sky")
			local Atm = Instance.new("Atmosphere")


			for i, v in pairs(Lighting:GetChildren()) do
				if v then
					v:Destroy()
				end
			end

			Bloom.Parent = Lighting
			Blur.Parent = Lighting
			ColorCor.Parent = Lighting
			SunRays.Parent = Lighting
			Sky.Parent = Lighting
			Atm.Parent = Lighting

			if Vignette == true then
				local Gui = Instance.new("ScreenGui")
				Gui.Parent = StarterGui
				Gui.IgnoreGuiInset = true

				local ShadowFrame = Instance.new("ImageLabel")
				ShadowFrame.Parent = Gui
				ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
				ShadowFrame.Position = UDim2.new(0.5,0,1,0)
				ShadowFrame.Size = UDim2.new(1,0,1.05,0)
				ShadowFrame.BackgroundTransparency = 1
				ShadowFrame.Image = "rbxassetid://4576475446"
				ShadowFrame.ImageTransparency = 0.3
				ShadowFrame.ZIndex = 10
			end

			Bloom.Intensity = 0.3
			Bloom.Size = 10
			Bloom.Threshold = 0.8

			Blur.Size = 5

			ColorCor.Brightness = 0.1
			ColorCor.Contrast = 0.5
			ColorCor.Saturation = -0.3
			ColorCor.TintColor = Color3.fromRGB(242, 243, 243)

			SunRays.Enabled = true
			SunRays.Intensity = 0.075
			SunRays.Spread = 0.727



			Sky.SkyboxBk = "http://www.roblox.com/asset/?id=225469345"
			Sky.SkyboxDn = "http://www.roblox.com/asset/?id=225469349"
			Sky.SkyboxFt = "http://www.roblox.com/asset/?id=225469359"
			Sky.SkyboxLf = "http://www.roblox.com/asset/?id=225469364"
			Sky.SkyboxRt = "http://www.roblox.com/asset/?id=225469372"
			Sky.SkyboxUp = "http://www.roblox.com/asset/?id=225469380"

			Sky.SunAngularSize = 10

			Lighting.Ambient = Color3.fromRGB(33, 33, 33)
			Lighting.Brightness = 2.25
			Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
			Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
			Lighting.EnvironmentDiffuseScale = 0.203
			Lighting.EnvironmentSpecularScale = 0.255
			Lighting.GlobalShadows = true
			Lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
			Lighting.ShadowSoftness = 0.19
			Lighting.ClockTime = 10
			Lighting.GeographicLatitude = -15.12
			Lighting.ExposureCompensation = 0.85

			Atm.Density = 0.364
			Atm.Offset = 0.556
			Atm.Color = Color3.fromRGB(175, 221, 255)
			Atm.Decay = Color3.fromRGB(13, 105, 172)
			Atm.Glare = 0.36
			Atm.Haze = 1.72
		end)

		UICorner_4.Parent = Afternoon

		Evening.Name = "Evening"
		Evening.Parent = Frame
		Evening.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Evening.Position = UDim2.new(0.0493827164, 0, 0.459108353, 0)
		Evening.Size = UDim2.new(0, 170, 0, 50)
		Evening.Font = Enum.Font.FredokaOne
		Evening.Text = "Evening"
		Evening.TextColor3 = Color3.fromRGB(0, 0, 0)
		Evening.TextSize = 43.000
		Evening.MouseButton1Click:Connect(function()
			local Vignette = true -- change to false if you don't want a shadow frame



			local Lighting = game:GetService("Lighting")
			local StarterGui = game:GetService("StarterGui")
			local Bloom = Instance.new("BloomEffect")
			local Blur = Instance.new("BlurEffect")
			local ColorCor = Instance.new("ColorCorrectionEffect")
			local SunRays = Instance.new("SunRaysEffect")
			local Sky = Instance.new("Sky")
			local Atm = Instance.new("Atmosphere")


			for i, v in pairs(Lighting:GetChildren()) do
				if v then
					v:Destroy()
				end
			end

			Bloom.Parent = Lighting
			Blur.Parent = Lighting
			ColorCor.Parent = Lighting
			SunRays.Parent = Lighting
			Sky.Parent = Lighting
			Atm.Parent = Lighting

			if Vignette == true then
				local Gui = Instance.new("ScreenGui")
				Gui.Parent = StarterGui
				Gui.IgnoreGuiInset = true

				local ShadowFrame = Instance.new("ImageLabel")
				ShadowFrame.Parent = Gui
				ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
				ShadowFrame.Position = UDim2.new(0.5,0,1,0)
				ShadowFrame.Size = UDim2.new(1,0,1.05,0)
				ShadowFrame.BackgroundTransparency = 1
				ShadowFrame.Image = "rbxassetid://4576475446"
				ShadowFrame.ImageTransparency = 0.3
				ShadowFrame.ZIndex = 10
			end

			Bloom.Intensity = 0.3
			Bloom.Size = 10
			Bloom.Threshold = 0.8

			Blur.Size = 5

			ColorCor.Brightness = 0.1
			ColorCor.Contrast = 0.5
			ColorCor.Saturation = -0.3
			ColorCor.TintColor = Color3.fromRGB(255, 235, 203)

			SunRays.Intensity = 0.075
			SunRays.Spread = 0.727

			Sky.SkyboxBk = "http://www.roblox.com/asset/?id=151165214"
			Sky.SkyboxDn = "http://www.roblox.com/asset/?id=151165197"
			Sky.SkyboxFt = "http://www.roblox.com/asset/?id=151165224"
			Sky.SkyboxLf = "http://www.roblox.com/asset/?id=151165191"
			Sky.SkyboxRt = "http://www.roblox.com/asset/?id=151165206"
			Sky.SkyboxUp = "http://www.roblox.com/asset/?id=151165227"
			Sky.SunAngularSize = 10

			Lighting.Ambient = Color3.fromRGB(2,2,2)
			Lighting.Brightness = 2.25
			Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
			Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
			Lighting.EnvironmentDiffuseScale = 0.2
			Lighting.EnvironmentSpecularScale = 0.2
			Lighting.GlobalShadows = true
			Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
			Lighting.ShadowSoftness = 0.2
			Lighting.ClockTime = 17
			Lighting.GeographicLatitude = 45
			Lighting.ExposureCompensation = 0.5

			Atm.Density = 0.364
			Atm.Offset = 0.556
			Atm.Color = Color3.fromRGB(199, 175, 166)
			Atm.Decay = Color3.fromRGB(44, 39, 33)
			Atm.Glare = 0.36
			Atm.Haze = 1.72
		end)


		UICorner_5.Parent = Evening

		Close.Name = "Close"
		Close.Parent = Frame
		Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Close.Position = UDim2.new(0.841975331, 0, 0, 0)
		Close.Size = UDim2.new(0, 64, 0, 50)
		Close.Font = Enum.Font.FredokaOne
		Close.Text = "X"
		Close.TextColor3 = Color3.fromRGB(255, 0, 0)
		Close.TextScaled = true
		Close.TextSize = 43.000
		Close.TextWrapped = true
		Close.MouseButton1Click:Connect(function()
			Frame:Destroy()
		end)

		UICorner_6.Parent = Close

		Credits.Name = "Credits"
		Credits.Parent = Frame
		Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Credits.Position = UDim2.new(0, 0, 0.930760145, 0)
		Credits.Size = UDim2.new(0, 405, 0, 18)
		Credits.Font = Enum.Font.FredokaOne
		Credits.Text = "Made By armengeimsss"
		Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
		Credits.TextScaled = true
		Credits.TextSize = 14.000
		Credits.TextWrapped = true

		UICorner_7.CornerRadius = UDim.new(0, 15)
		UICorner_7.Parent = Credits

		Night.Name = "Night"
		Night.Parent = Frame
		Night.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Night.Position = UDim2.new(0.530864179, 0, 0.459108353, 0)
		Night.Size = UDim2.new(0, 170, 0, 50)
		Night.Font = Enum.Font.FredokaOne
		Night.Text = "Night"
		Night.TextColor3 = Color3.fromRGB(0, 0, 0)
		Night.TextSize = 43.000
		Night.TextWrapped = true
		Night.MouseButton1Click:Connect(function()
			local Vignette = true -- change to false if you don't want a shadow frame



			local Lighting = game:GetService("Lighting")
			local StarterGui = game:GetService("StarterGui")
			local Bloom = Instance.new("BloomEffect")
			local Blur = Instance.new("BlurEffect")
			local ColorCor = Instance.new("ColorCorrectionEffect")
			local SunRays = Instance.new("SunRaysEffect")
			local Sky = Instance.new("Sky")
			local Atm = Instance.new("Atmosphere")


			for i, v in pairs(Lighting:GetChildren()) do
				if v then
					v:Destroy()
				end
			end

			Bloom.Parent = Lighting
			Blur.Parent = Lighting
			ColorCor.Parent = Lighting
			SunRays.Parent = Lighting
			Sky.Parent = Lighting
			Atm.Parent = Lighting

			if Vignette == true then
				local Gui = Instance.new("ScreenGui")
				Gui.Parent = StarterGui
				Gui.IgnoreGuiInset = true

				local ShadowFrame = Instance.new("ImageLabel")
				ShadowFrame.Parent = Gui
				ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
				ShadowFrame.Position = UDim2.new(0.5,0,1,0)
				ShadowFrame.Size = UDim2.new(1,0,1.05,0)
				ShadowFrame.BackgroundTransparency = 1
				ShadowFrame.Image = "rbxassetid://4576475446"
				ShadowFrame.ImageTransparency = 0.3
				ShadowFrame.ZIndex = 10
			end

			Bloom.Intensity = 0.3
			Bloom.Size = 10
			Bloom.Threshold = 0.8

			Blur.Size = 5

			ColorCor.Brightness = 0.1
			ColorCor.Contrast = 0.5
			ColorCor.Saturation = -0.3
			ColorCor.TintColor = Color3.fromRGB(242, 243, 243)

			SunRays.Enabled = true
			SunRays.Intensity = 0.075
			SunRays.Spread = 0.727

			Sky.MoonAngularSize =12
			Sky.MoonTextureId = "rbxasset://sky/moon.jpg"
			Sky.SkyboxBk = "http://www.roblox.com/asset/?id=411315762"
			Sky.SkyboxDn = "http://www.roblox.com/asset/?id=411315762"
			Sky.SkyboxFt = "http://www.roblox.com/asset/?id=411315762"
			Sky.SkyboxLf = "http://www.roblox.com/asset/?id=411315762"
			Sky.SkyboxRt = "http://www.roblox.com/asset/?id=411315762"
			Sky.SkyboxUp = "http://www.roblox.com/asset/?id=411315762"
			Sky.StarCount = 5000
			Sky.SunAngularSize = 10

			Lighting.Ambient = Color3.fromRGB(33, 33, 33)
			Lighting.Brightness = 3.25
			Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
			Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
			Lighting.EnvironmentDiffuseScale = 0.203
			Lighting.EnvironmentSpecularScale = 0.255
			Lighting.GlobalShadows = true
			Lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
			Lighting.ShadowSoftness = 0.19
			Lighting.ClockTime = 20
			Lighting.GeographicLatitude = -15.12
			Lighting.ExposureCompensation = 0.85

			Atm.Density = 0.264
			Atm.Offset = 0.156
			Atm.Color = Color3.fromRGB(175, 221, 255)
			Atm.Decay = Color3.fromRGB(13, 105, 172)
			Atm.Glare = 0.36
			Atm.Haze = 1.72
		end)

		UICorner_8.Parent = Night

		Stop.Name = "Stop"
		Stop.Parent = Frame
		Stop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Stop.Position = UDim2.new(0.0493827164, 0, 0.691932738, 0)
		Stop.Size = UDim2.new(0, 365, 0, 50)
		Stop.Font = Enum.Font.FredokaOne
		Stop.Text = "Stop RTX (rejoin)"
		Stop.TextColor3 = Color3.fromRGB(0, 0, 0)
		Stop.TextScaled = true
		Stop.TextSize = 43.000
		Stop.TextWrapped = true
		Stop.MouseButton1Click:Connect(function()
			ts:Teleport(game.PlaceId, p)
		end)
	end)

	UICorner_9.CornerRadius = UDim.new(0.5, 0)
	UICorner_9.Parent = RTX

	AntiAfk.Name = "AntiAfk"
	AntiAfk.Parent = main
	AntiAfk.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
	AntiAfk.BorderColor3 = Color3.fromRGB(0, 0, 0)
	AntiAfk.BorderSizePixel = 0
	AntiAfk.Position = UDim2.new(0.668369412, 0, 0.232798934, 0)
	AntiAfk.Size = UDim2.new(0, 137, 0, 50)
	AntiAfk.Font = Enum.Font.SourceSansBold
	AntiAfk.Text = "Anti Afk"
	AntiAfk.TextColor3 = Color3.fromRGB(100, 100, 100)
	AntiAfk.TextSize = 22.000
	AntiAfk.MouseButton1Down:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
	end)

	UICorner_10.CornerRadius = UDim.new(0.5, 0)
	UICorner_10.Parent = AntiAfk

	Highlights.Name = "Highlights"
	Highlights.Parent = main
	Highlights.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
	Highlights.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Highlights.BorderSizePixel = 0
	Highlights.Position = UDim2.new(0.348285586, 0, 0.232798934, 0)
	Highlights.Size = UDim2.new(0, 137, 0, 50)
	Highlights.Font = Enum.Font.SourceSansBold
	Highlights.Text = "Highlights"
	Highlights.TextColor3 = Color3.fromRGB(100, 100, 100)
	Highlights.TextSize = 22.000
	Highlights.MouseButton1Down:Connect(function()
		_G.FriendColor = Color3.fromRGB(0, 0, 255)
		_G.EnemyColor = Color3.fromRGB(255, 0, 0)
		_G.UseTeamColor = true

		--------------------------------------------------------------------
		local Holder = Instance.new("Folder", game.CoreGui)
		Holder.Name = "ESP"

		local Box = Instance.new("BoxHandleAdornment")
		Box.Name = "nilBox"
		Box.Size = Vector3.new(1, 2, 1)
		Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
		Box.Transparency = 0.7
		Box.ZIndex = 0
		Box.AlwaysOnTop = false
		Box.Visible = false


		local NameTag = Instance.new("BillboardGui")
		NameTag.Name = "nilNameTag"
		NameTag.Enabled = false
		NameTag.Size = UDim2.new(0, 200, 0, 50)
		NameTag.AlwaysOnTop = true
		NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
		local Tag = Instance.new("TextLabel", NameTag)
		Tag.Name = "Tag"
		Tag.BackgroundTransparency = 1
		Tag.Position = UDim2.new(0, -50, 0, 0)
		Tag.Size = UDim2.new(0, 300, 0, 20)
		Tag.TextSize = 15
		Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
		Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
		Tag.TextStrokeTransparency = 0.4
		Tag.Text = "nil"
		Tag.Font = Enum.Font.SourceSansBold
		Tag.TextScaled = false

		local LoadCharacter = function(v)
			repeat wait() until v.Character ~= nil
			v.Character:WaitForChild("Humanoid")
			local vHolder = Holder:FindFirstChild(v.Name)
			vHolder:ClearAllChildren()
			local b = Box:Clone()
			b.Name = v.Name .. "Box"
			b.Adornee = v.Character
			b.Parent = vHolder
			local t = NameTag:Clone()
			t.Name = v.Name .. "NameTag"
			t.Enabled = true
			t.Parent = vHolder
			t.Adornee = v.Character:WaitForChild("Head", 5)
			if not t.Adornee then
				return UnloadCharacter(v)
			end
			t.Tag.Text = v.Name
			b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
			t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
			local Update
			local UpdateNameTag = function()
				if not pcall(function()
						v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
						local maxh = math.floor(v.Character.Humanoid.MaxHealth)
						local h = math.floor(v.Character.Humanoid.Health)
					end) then
					Update:Disconnect()
				end
			end
			UpdateNameTag()
			Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
		end

		local UnloadCharacter = function(v)
			local vHolder = Holder:FindFirstChild(v.Name)
			if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
				vHolder:ClearAllChildren()
			end
		end

		local LoadPlayer = function(v)
			local vHolder = Instance.new("Folder", Holder)
			vHolder.Name = v.Name
			v.CharacterAdded:Connect(function()
				pcall(LoadCharacter, v)
			end)
			v.CharacterRemoving:Connect(function()
				pcall(UnloadCharacter, v)
			end)
			v.Changed:Connect(function(prop)
				if prop == "TeamColor" then
					UnloadCharacter(v)
					wait()
					LoadCharacter(v)
				end
			end)
			LoadCharacter(v)
		end

		local UnloadPlayer = function(v)
			UnloadCharacter(v)
			local vHolder = Holder:FindFirstChild(v.Name)
			if vHolder then
				vHolder:Destroy()
			end
		end

		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			spawn(function() pcall(LoadPlayer, v) end)
		end

		game:GetService("Players").PlayerAdded:Connect(function(v)
			pcall(LoadPlayer, v)
		end)

		game:GetService("Players").PlayerRemoving:Connect(function(v)
			pcall(UnloadPlayer, v)
		end)

		game:GetService("Players").LocalPlayer.NameDisplayDistance = 0

		if _G.Reantheajfdfjdgs then
			return
		end

		_G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"

		local players = game:GetService("Players")
		local plr = players.LocalPlayer

		function Esp(target, color)
			if target.Character then
				if not target.Character:FindFirstChild("GetReal") then
					local highlight = Instance.new("Highlight")
					highlight.RobloxLocked = true
					highlight.Name = "GetReal"
					highlight.Adornee = target.Character
					highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					highlight.FillColor = color
					highlight.Parent = target.Character
				else
					target.Character.GetReal.FillColor = color
				end
			end
		end

		while task.wait() do
			for i, v in pairs(players:GetPlayers()) do
				if v ~= plr then
					Esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
				end
			end
		end
	end)

	UICorner_11.CornerRadius = UDim.new(0.5, 0)
	UICorner_11.Parent = Highlights

	Aimbot.Name = "Aimbot"
	Aimbot.Parent = main
	Aimbot.BackgroundColor3 = Color3.fromRGB(234, 234, 234)
	Aimbot.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Aimbot.BorderSizePixel = 0
	Aimbot.Position = UDim2.new(0.0198337808, 0, 0.232798934, 0)
	Aimbot.Size = UDim2.new(0, 137, 0, 50)
	Aimbot.Font = Enum.Font.SourceSansBold
	Aimbot.Text = "Aimbot (Press E)"
	Aimbot.TextColor3 = Color3.fromRGB(100, 100, 100)
	Aimbot.TextSize = 22.000
	Aimbot.MouseButton1Down:Connect(function()
		local plrs = game:GetService("Players")
		local TeamBased = true ; local teambasedswitch = "o"
		local presskeytoaim = true; local aimkey = "e"
		local raycast = false

		local espupdatetime = 5; autoesp = false



		local lockaim = true; local lockangle = 5



		--function findwat(folder, what)
		--  for i, smth in pairs(folder:GetChildren()) do
		--  if string.find(string.lower(tostring(smth)), string.lower(what)) then
		--  return smth
		--  end
		--  end
		--end
		--
		--local plrs = findwat(game, "Players")




		local Gui = Instance.new("ScreenGui")
		local Move = Instance.new("Frame")
		local Main = Instance.new("Frame")
		local EspStatus = Instance.new("TextLabel")
		local st1 = Instance.new("TextLabel")
		local st1_2 = Instance.new("TextLabel")
		local st1_3 = Instance.new("TextLabel")
		local Name = Instance.new("TextLabel")
		--Properties:
		Gui.Name = "Gui"
		Gui.Parent = plrs.LocalPlayer:WaitForChild("PlayerGui")

		Move.Name = "Move"
		Move.Parent = Gui
		Move.BackgroundColor3 = Color3.new(0.0431373, 1, 0.0745098)
		Move.BackgroundTransparency = 1
		Move.BorderSizePixel = 0
		Move.Position = UDim2.new(0.005, 0,0.018, 0)
		Move.Size = UDim2.new(0.28141585, 0, 0.0320388414, 0)

		Main.Name = "Main"
		Main.Parent = Move
		Main.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
		Main.BackgroundTransparency = 1
		Main.Position = UDim2.new(0, 0, 0.995670795, 0)
		Main.Size = UDim2.new(1.0000006, 0, 9.79697132, 0)

		EspStatus.Name = "EspStatus"
		EspStatus.Parent = Main
		EspStatus.BackgroundColor3 = Color3.new(1, 1, 1)
		EspStatus.BackgroundTransparency = 1
		EspStatus.Size = UDim2.new(0.272955924, 0, 0.161862016, 0)
		EspStatus.Font = Enum.Font.ArialBold
		EspStatus.Text = " "
		EspStatus.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
		EspStatus.TextScaled = true
		EspStatus.TextSize = 0
		EspStatus.TextWrapped = true

		st1.Name = "st1"
		st1.Parent = Main
		st1.BackgroundColor3 = Color3.new(1, 1, 1)
		st1.BackgroundTransparency = 1
		st1.Position = UDim2.new(0.271787882, 0, 0, 0)
		st1.Size = UDim2.new(0.728211343, 0, 0.161862016, 0)
		st1.Font = Enum.Font.ArialBold
		st1.Text = " "..aimkey.." "
		st1.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
		st1.TextScaled = true
		st1.TextSize = 0
		st1.TextWrapped = true

		st1_2.Name = "st1"
		st1_2.Parent = Main
		st1_2.BackgroundColor3 = Color3.new(1, 1, 1)
		st1_2.BackgroundTransparency = 1
		st1_2.Position = UDim2.new(0, 0, 0.375590861, 0)
		st1_2.Size = UDim2.new(0.999999881, 0, 0.161862016, 0)
		st1_2.Font = Enum.Font.ArialBold
		st1_2.Text = " "
		st1_2.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
		st1_2.TextScaled = true
		st1_2.TextSize = 0
		st1_2.TextWrapped = true

		st1_3.Name = "st1"
		st1_3.Parent = Main
		st1_3.BackgroundColor3 = Color3.new(1, 1, 1)
		st1_3.BackgroundTransparency = 1
		st1_3.Position = UDim2.new(0, 0, 0.18558608, 0)
		st1_3.Size = UDim2.new(0.999999881, 0, 0.161862016, 0)
		st1_3.Font = Enum.Font.ArialBold
		st1_3.Text = " "
		st1_3.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
		st1_3.TextScaled = true
		st1_3.TextSize = 0
		st1_3.TextWrapped = true
		local teambasedstatus = st1_3:Clone()
		teambasedstatus.Parent = st1_3
		teambasedstatus.TextScaled = true
		teambasedstatus.Position = UDim2.new(0, 0,0.694, 0)
		teambasedstatus.Text = tostring(TeamBased)

		Name.Name = "Name"
		Name.Parent = Move
		Name.BackgroundColor3 = Color3.new(1, 1, 1)
		Name.BackgroundTransparency = 1
		Name.Size = UDim2.new(0.838, 0, 0.980000019, 0)
		Name.Font = Enum.Font.Arial
		Name.Text = " "
		Name.TextColor3 = Color3.new(0, 0, 0)
		Name.TextScaled = true
		Name.TextSize = 0
		Name.TextWrapped = true
		Name.TextXAlignment = Enum.TextXAlignment.Left
		-- Scripts:


		local plrsforaim = {}

		local lplr = game:GetService("Players").LocalPlayer
		Move.Draggable = true
		Gui.ResetOnSpawn = false
		Gui.Name = "Chat"
		Gui.DisplayOrder = 999

		Gui.Parent = plrs.LocalPlayer.PlayerGui


		f = {}
		local espforlder

		f.addesp = function()
			--print("ESP ran")
			if espforlder then
			else
				espforlder = Instance.new("Folder")
				espforlder.Parent = game.Workspace.CurrentCamera
			end
			for i, v in pairs(espforlder:GetChildren()) do
				v:Destroy()
			end
			for _, plr in pairs(plrs:GetChildren()) do
				if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name then
					if TeamBased == true then
						if plr.Team.Name ~= plrs.LocalPlayer.Team.Name  then
							local e = espforlder:FindFirstChild(plr.Name)
							if not e then
								--print("Added esp for team based")
								local bill = Instance.new("BillboardGui", espforlder)
								bill.Name = plr.Name
								bill.AlwaysOnTop = true
								bill.Size = UDim2.new(1,0,1,0)
								bill.Adornee = plr.Character.Head
								local Frame = Instance.new('Frame',bill)
								Frame.Active = true
								Frame.BackgroundColor3 = Color3.new(0/255,255/255,0/255)
								Frame.BackgroundTransparency = 0
								Frame.BorderSizePixel = 0
								Frame.AnchorPoint = Vector2.new(.5, .5)
								Frame.Position = UDim2.new (0.5,0,0.5,0)
								Frame.Size = UDim2.new (1,0,1,0)
								Frame.Rotation = 0
								plr.Character.Humanoid.Died:Connect(function()
									bill:Destroy()
								end)
							end
						end
					else
						local e = espforlder:FindFirstChild(plr.Name)
						if not e then
							--print("Added esp")
							local bill = Instance.new("BillboardGui", espforlder)
							bill.Name = plr.Name
							bill.AlwaysOnTop = true
							bill.Size = UDim2.new(1,0,1,0)
							bill.Adornee = plr.Character.Head
							local Frame = Instance.new('Frame',bill)
							Frame.Active = true
							Frame.BackgroundColor3 = Color3.new(0/255,255/255,0/255)
							Frame.BackgroundTransparency = 0
							Frame.BorderSizePixel = 0
							Frame.AnchorPoint = Vector2.new(.5, .5)
							Frame.Position = UDim2.new (0.5,0,0.5,0)
							Frame.Size = UDim2.new (1,0,1,0)
							Frame.Rotation = 0
							plr.Character.Humanoid.Died:Connect(function()
								bill:Destroy()
							end)
						end
					end


				end
			end
		end
		local cam = game.Workspace.CurrentCamera

		local mouse = lplr:GetMouse()
		local switch = false
		local key = "k"
		local aimatpart = nil
		mouse.KeyDown:Connect(function(a)
			if a == "t" then
				print("worked1")
				f.addesp()
			elseif a == "u" then
				if raycast == true then
					raycast = false
				else
					raycast = true
				end
			elseif a == "l" then
				if autoesp == false then
					autoesp = true
				else
					autoesp = false
				end
			end
			if a == "j" then
				if mouse.Target then
					mouse.Target:Destroy()
				end
			end
			if a == key then
				if switch == false then
					switch = true
				else
					switch = false
					if aimatpart ~= nil then
						aimatpart = nil
					end
				end
			elseif a == teambasedswitch then
				if TeamBased == true then
					TeamBased = false
					teambasedstatus.Text = tostring(TeamBased)
				else
					TeamBased = true
					teambasedstatus.Text = tostring(TeamBased)
				end
			elseif a == aimkey then
				if not aimatpart then
					local maxangle = math.rad(20)
					for i, plr in pairs(plrs:GetChildren()) do
						if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
							if TeamBased == true then
								if plr.Team.Name ~= lplr.Team.Name then
									local an = checkfov(plr.Character.Head)
									if an < maxangle then
										maxangle = an
										aimatpart = plr.Character.Head
									end
								end
							else
								local an = checkfov(plr.Character.Head)
								if an < maxangle then
									maxangle = an
									aimatpart = plr.Character.Head
								end
								print(plr)
							end
							plr.Character.Humanoid.Died:Connect(function()
								if aimatpart.Parent == plr.Character or aimatpart == nil then
									aimatpart = nil
								end
							end)
						end
					end
				else
					aimatpart = nil
				end
			end
		end)

		function getfovxyz (p0, p1, deg)
			local x1, y1, z1 = p0:ToOrientation()
			local cf = CFrame.new(p0.p, p1.p)
			local x2, y2, z2 = cf:ToOrientation()
			--local d = math.deg
			if deg then
				--return Vector3.new(d(x1-x2), d(y1-y2), d(z1-z2))
			else
				return Vector3.new((x1-x2), (y1-y2), (z1-z2))
			end
		end

		function getaimbotplrs()
			plrsforaim = {}
			for i, plr in pairs(plrs:GetChildren()) do
				if plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name and plr.Character.Head then

					if TeamBased == true then
						if plr.Team.Name ~= lplr.Team.Name then
							local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
							local r = Ray.new(cf, cf.LookVector * 10000)
							local ign = {}
							for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
								if v:IsA("BasePart") then
									table.insert(ign , v)
								end
							end
							local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
							if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
								table.insert(plrsforaim, obj)
							end
						end
					else
						local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
						local r = Ray.new(cf, cf.LookVector * 10000)
						local ign = {}
						for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
							if v:IsA("BasePart") then
								table.insert(ign , v)
							end
						end
						local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
						if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
							table.insert(plrsforaim, obj)
						end
					end


				end
			end
		end

		function aimat(part)
			cam.CFrame = CFrame.new(cam.CFrame.p, part.CFrame.p)
		end
		function checkfov (part)
			local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
			local angle = math.abs(fov.X) + math.abs(fov.Y)
			return angle
		end

		game:GetService("RunService").RenderStepped:Connect(function()
			if aimatpart then
				aimat(aimatpart)
				if aimatpart.Parent == plrs.LocalPlayer.Character then
					aimatpart = nil
				end
			end


			--  if switch == true then
			--  local maxangle = 99999
			-- 
			--  --print("Loop")
			--  if true and raycast == false then
			--  for i, plr in pairs(plrs:GetChildren()) do
			--  if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
			--  if TeamBased then
			--  if plr.Team.Name ~= lplr.Team.Name or plr.Team.TeamColor ~= lplr.Team.TeamColor then
			--  local an = checkfov(plr.Character.Head)
			--  if an < maxangle then
			--  maxangle = an
			--  aimatpart = plr.Character.Head
			--  if an < lockangle then
			--  break
			--  end
			--  end
			--  end
			--  else
			--  local an = checkfov(plr.Character.Head)
			--  if an < maxangle then
			--  maxangle = an
			--  aimatpart = plr.Character.Head
			--  if an < lockangle then
			--  break
			--  end
			--  end
			--  end
			-- 
			-- 
			-- 
			-- 
			--  end
			--  end
			--  elseif raycast == true then
			-- 
			--  end

			if raycast == true and switch == false and not aimatpart then
				getaimbotplrs()
				aimatpart = nil
				local maxangle = 999
				for i, v in ipairs(plrsforaim) do
					if v.Parent ~= lplr.Character then
						local an = checkfov(v)
						if an < maxangle and v ~= lplr.Character.Head then
							maxangle = an
							aimatpart = v
							print(v:GetFullName())
							v.Parent.Humanoid.Died:connect(function()
								aimatpart = nil
							end)
						end
					end
				end

			end
		end)
		delay(0, function()
			while wait(espupdatetime) do
				if autoesp == true then
					pcall(function()
						f.addesp()
					end)
				end
			end
		end)
	end)

	UICorner_12.CornerRadius = UDim.new(0.5, 0)
	UICorner_12.Parent = Aimbot