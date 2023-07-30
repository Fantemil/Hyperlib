-- sub to halal gaming

getgenv().Arceus = {
	Silent = {
		["Enabled"] = (true), -- // Use The Silent Aim Or Not

		["Part"] = ("HumanoidRootPart"), -- // What Part It Targerts
		["UseAirPart"] = (false), -- // When Target Isnt On The Ground It Uses This Part
		["AirPart"] = ("LowerTorso"), -- // The Parts It Targets On When Player Isnt On The Ground
		["ClosestPart"] = (true), -- // Automatically Gets The Closest Part Of The Target And Uses That
		["ClosestPoint"] = (true), -- // Automatically Gets The Closest Point Of The Target Part And Uses That

		["HitChance"] = (100), -- // The Chance You Will Hit The Target

		["Humanize"] = (true), -- // Makes Soo The Silent Doesnt Hit The Same Position
		["HumanizeValue"] = (2), -- // Makes How Much Power It Changes

		["TriggerBot"] = (false), -- // Shoots AutoMatically
		["UseTriggerBotKeybind"] = (false), -- // Enable / Disable TriggerBot Keybind
		["TriggerBotKey"] = ("MouseButton3"), -- // KeyBind To Enable / Disable TriggerBot You Can Find More At https://create.roblox.com/docs/reference/engine/enums/UserInputType

		["PredictMovement"] = (true), -- // Predicts Targets Movement
		["AutoPrediction"] = (true), -- // Automatically Gets An Good Prediction
		["PredictionVelocity"] = (0.138), -- // How Much It Predicts

		["AntiGroundShots"] = (true), -- // Makes So You Dont Shoot The Ground
		["AntiGroundValue"] = (0.5), -- // How Much Velocity It Removes From Target
		["WhenAntiGroundActivate"] = (-20), -- // When Its Gonna Activate

		["AntiAimViewer"] = (true), -- // Bypasses The Mouse Position For The Server 

		["WallCheck"] = (true), -- // Checks If Theres A Wall

		["CheckIf_KO"] = (true), -- // Checks If Target Is Grabbed Or Knocked
		["CheckIf_TargetDeath"] = (true), -- // Checks If Target Is Dead

		["UseKeybind"] = (true), -- // Use The KeyBind To Enable / Disable The Silent Aim
		["Keybind"] = ("P") -- // The Keybind That Enables / Disables The Silent Aim
	},
	GunFov = {
		["Enabled"] = (false), -- // Gun Fov / Fov Is Automatically Changed To Specific Gun Equipped

		["Double-Barrel SG"] = {["Fov"] = 22}, -- // Db
		["Revolver"] = {["Fov"] = 6.2}, -- // Rev
		["SMG"] = {["Fov"] = 3}, -- // Smg
		["Shotgun"] = {["Fov"] = 18}, -- // Shotgun
		["Rifle"] = {["Fov"] = 3}, -- // Rifle
		["TacticalShotgun"] = {["Fov"] = 20}, -- // Tactical
		["Silencer"] = {["Fov"] = 2.8}, -- // Smg
		["AK47"] = {["Fov"] = 2.8}, -- // Ak47
		["AR"] = {["Fov"] = 2.8} -- // Rifle
		-- // You Can Add Custom Weapons If You Want To :p
	},
	RangeFov = {
		["Enabled"] = (false), -- // Gun Fov / Fov Is Automatically Changed To Specific Distance Between Target / This Will OverWrite GunFov

		["Far_Activation"] = (math.huge), -- // Just Keep It At Math.Huge
		["Medium_Activation"] = (42), -- // Its Using Studs
		["Close_Activation"] = (16), -- // Its Using Studs

		["Double-Barrel SG"] = {
			["Far"] = 10,
			["Med"] = 15,
			["Close"] = 20
		}, -- // Db
		["Revolver"] = {
			["Far"] = 5,
			["Med"] = 10,
			["Close"] = 15
		}, -- // Rev
		["SMG"] = {
			["Far"] = 5,
			["Med"] = 10,
			["Close"] = 15
		}, -- // Smg
		["Shotgun"] = {
			["Far"] = 10,
			["Med"] = 15,
			["Close"] = 20
		}, -- // Shotgun
		["Rifle"] = {
			["Far"] = 5,
			["Med"] = 10,
			["Close"] = 15
		}, -- // Rifle
	},
	SilentFov = {
		["Visible"] = (true), -- // If The Circle Is Showing Or Not
		["Filled"] = (false), -- // If The Circle Is Filled
		["Transparency"] = (1), -- // The Circle Transparency
		["Color"] = (Color3.fromRGB(87, 237, 255)), -- // Circle Color
		["Radius"] = (25.5) -- // How Big The Circle Is
	},

	AimAssist = {
		["Enabled"] = (true), -- // Use The Aim Assist Or Not

		["Key"] = ("c"), -- // The Key To Lock Onto A Player
		["HoldMode"] = (false), -- // Enables While Only Holding The Key

		["Part"] = ("UpperTorso"), -- // The Part That Aim Assist Locks On
		["ClosestPart"] = (true), -- // Automatically Gets The Closest Part Of The Target And Uses That

		["DisableTargetDeath"] = (true), -- // Disables When Target Dies
		["DisableLocalDeath"] = (true), -- // Disables When You Died
		["DisableOn_KO"] = (true), -- // Disables If Target Is KO Or Grabbed

		["UseCircleRadius"] = (true), -- // Only Locks On To People Inside The Circle
		["DisableOutSideCircle"] = (true), -- // If Target Is OutSide The Circle It Disables The Aim Assist

		["UseShake"] = (false), -- // Shakes The Camera
		["ShakeValue"] = (55), -- // How Much It Shakes

		["PredictMovement"] = (true), -- // Predicts Targets MoveMent
		["PredictionVelocity"] = (0.125), -- // How Much It Predicts

		["WallCheck"] = (true), -- // Checks If Theres A Wall

		["Smoothness_X"] = (0.15), -- // How Smooth The Aim Assist Is On X
		["Smoothness_Y"] = (0.15) -- // How Smooth The Aim Assist Is On Y
	},
	AimAssistFov = {
		["Visible"] = (false), -- // If The Circle Is Showing Or Not
		["Filled"] = (false), -- // If The Circle Is Filled
		["Transparency"] = (0.5), -- // Circle Transparency
		["Color"] = (Color3.fromRGB(255, 87, 87)), -- // Circle Color
		["Radius"] = (50) -- // How Big The Circle Is
	},
	Both = {
		["DetectDesync"] = (true), -- // Detects Velocity Changer + Actually Hits
		["DesyncDetection"] = (0), -- // When It Detects

		["UseDetectDesyncKeybind"] = (true), -- // Enable / Disable Desync Detection Keybind
		["DetectDesyncKey"] = ("x"), -- // KeyBind To Enable / Disable Desync Detection

		["DetectUnderGround"] = (false), -- // Detects Common UnderGround Resolver
		["UnderGroundDetection"] = (-30), -- // When It Detects

		["UseUnderGroundKeybind"] = (false), -- // Enable / Disable UnderGround Resolver Keybind
		["UnderGroundKey"] = ("X"), -- // KeyBind To Enable / Disable UnderGround Resolver

		["VisibleCheck"] = (true), -- // Checks If Target Is Visible
		["CrewCheck"] = (false), -- // Checks If Target Is In Your Crew
		["FriendCheck"] = (false), -- // Checks If Target Is Your Friend
		["TeamCheck"] = (false), -- // Checks If Player Is In the Same Team

		["UseLay"] = (false), -- // Enable / Disable Lay Keybind
		["LayKeybind"] = ("v"), -- // KeyBind To Lay

		["SendNotification"] = (true) -- // Sends Notification When you Enabled / Disabled Stuff
	},
	Commands = {
		["Enabled"] = (false), -- // Enable / Disable Chat Command

		-- // Silent Table
		["Silent_Enabled"] = ("!senabled"), -- // The Command To Enable / Disable Silent (With false/true)
		["Silent_Prediction"] = ("!spred"), -- // The Command To Change Silent Prediction (With Numbers)
		["Silent_Fov_Size"] = ("!sfov"), -- // The Command To Change Silent Fov (With Numbers)
		["Silent_Fov_Show"] = ("!sshow"), -- // The Command To Change Silent (With false/true)
		["Silent_HitChance"] = ("!schance"), -- // The Command To Change Silent HitChance (With Numbers)

		-- // AimAssist Table
		["AimAssist_Enabled"] = ("!aenabled"), -- // The Command To Enable / Disable AimAssist (With false/true)
		["AimAssist_Prediction"] = ("!apred"), -- // The Command To Change AimAssist Prediction (With Numbers)
		["AimAssist_Fov_Size"] = ("!afov"), -- // The Command To Change AimAssist Fov (With Numbers)
		["AimAssist_Fov_Show"] = ("!ashow"), -- // The Command To Change AimAssist (With false/true)
		["AimAssist_SmoothX"] = ("!smoothx"), -- // The Command To Change AimAssist SmoothNess X Value (With Numbers)
		["AimAssist_SmoothY"] = ("!smoothy"), -- // The Command To Change AimAssist SmoothNess Y Value (With Numbers)
		["AimAssist_Shake"] = ("!ashake"), -- // The Command To Change AimAssist Shake Value (With Numbers)

		["CrashMode"] = (". "), -- // The Command To Crash Roblox
	},

	Esp = {
		["Enabled"] = (false), -- // Enable / Disable Esp
		["UseEspKeybind"] = (true), -- // Enable / Disable Esp Keybind
		["EspKey"] = ("z"), -- // KeyBind To Enable / Disable Esp
		["HoldMode"] = (false), -- // Enables While Only Holding The Key

		["Name"] = {["Enabled"] = true, ["OutLine"] = true, ["Color"] = Color3.fromRGB(255, 255, 255)}, -- // Shows Targets Name
		["Box"] = {["Enabled"] = true, ["OutLine"] = true, ["Color"] = Color3.fromRGB(255, 255, 255)}, -- // Shows Box On Target
		["HealthBar"] = {["Enabled"] = true, ["OutLine"] = true, ["Color"] = Color3.fromRGB(0, 255, 0)}, -- // Shows An Health Bar On Target
		["HealthText"] = {["Enabled"] = true, ["OutLine"] = true, ["Color"] = Color3.fromRGB(0, 255, 0)}, -- // Shows An Text How Much Hp Target Have
		["Distance"] = {["Enabled"] = true, ["OutLine"] = true, ["Color"] = Color3.fromRGB(255, 255, 255)} -- // Shows Targets Distance Between You
	}
}

repeat wait() until game:IsLoaded()

getgenv = getgenv
Drawing = Drawing
mouse1click = mouse1click
mouse1press = mouse1press
hookmetamethod = hookmetamethod
checkcaller = checkcaller
mousemoverel = mousemoverel

-- // Variables (Too Lazy To Make It To One Local)
local Arceus = getgenv().Arceus
local OldSilentAimPart = Arceus.Silent.Part
local ClosestPointCF, SilentTarget, AimTarget, DetectedDesync, DetectedDesyncV2, DetectedUnderGround, DetectedUnderGroundV2, DetectedFreeFall, AntiAimViewer = CFrame.new(), nil, nil, false, false, false, false, false, true
local Script = {Functions = {}, Friends = {}, Drawing = {}, EspPlayers = {}}

local Players, Client, Mouse, RS, Camera, GuiS, Uis, Ran = game:GetService("Players"), game:GetService("Players").LocalPlayer, game:GetService("Players").LocalPlayer:GetMouse(), game:GetService("RunService"), game:GetService("Workspace").CurrentCamera, game:GetService("GuiService"), game:GetService("UserInputService"), math.random

-- // Drawing For AimAssist And SilentAim
Script.Drawing.SilentCircle = Drawing.new("Circle")
Script.Drawing.SilentCircle.Color = Color3.new(1,1,1)
Script.Drawing.SilentCircle.Thickness = 1

Script.Drawing.AimAssistCircle = Drawing.new("Circle")
Script.Drawing.AimAssistCircle.Color = Color3.new(1,1,1)
Script.Drawing.AimAssistCircle.Thickness = 1

-- // Chat Check
Client.Chatted:Connect(function(Msg)
	if Msg == Arceus.Commands.CrashMode then
		while true do end
	end
	local Splitted = string.split(Msg, " ")
	if Splitted[1] and Splitted[2] and Arceus.Commands.Enabled then
		if Splitted[1] == Arceus.Commands.Silent_Prediction then
			Arceus.Silent.PredictionVelocity = Splitted[2]
		elseif Splitted[1] == Arceus.Commands.Silent_Fov_Size then
			Arceus.SilentFov.Radius = Splitted[2]
		elseif Splitted[1] == Arceus.Commands.Silent_Fov_Show then
			if Splitted[2] == "true" then
				Arceus.SilentFov.Visible = true
			else
				Arceus.SilentFov.Visible = false
			end
		elseif Splitted[1] == Arceus.Commands.Silent_Enabled then
			if Splitted[2] == "true" then
				Arceus.Silent.Enabled = true
			else
				Arceus.Silent.Enabled = false 
			end
		elseif Splitted[1] == Arceus.Commands.Silent_HitChance then
			Arceus.Silent.HitChance = Splitted[2]
		elseif Splitted[1] == Arceus.Commands.AimAssist_Prediction then
			Arceus.AimAssist.PredictionVelocity = Splitted[2]
		elseif Splitted[1] == Arceus.Commands.AimAssist_Fov_Size then
			Arceus.AimAssistFov.Radius = Splitted[2]
		elseif Splitted[1] == Arceus.Commands.AimAssist_Fov_Show then
			if Splitted[2] == "true" then
				Arceus.AimAssistFov.Visible = true
			else
				Arceus.AimAssistFov.Visible = false
			end
		elseif Splitted[1] == Arceus.Commands.AimAssist_Enabled then
			if Splitted[2] == "true" then
				Arceus.AimAssist.Enabled = true
			else
				Arceus.AimAssist.Enabled = false
			end
		elseif Splitted[1] == Arceus.Commands.AimAssist_SmoothX then
			Arceus.AimAssist.Smoothness_X = Splitted[2]
		elseif Splitted[1] == Arceus.Commands.AimAssist_SmoothY then
			Arceus.AimAssist.Smoothness_Y = Splitted[2]
		elseif Splitted[1] == Arceus.Commands.AimAssist_Shake then
			Arceus.AimAssist.ShakeValue = Splitted[2]
		end
	end
end)

-- // KeyDown Check
Mouse.KeyDown:Connect(function(Key)
	local Keybind = Arceus.AimAssist.Key:lower()
	if Key == Keybind then
		if Arceus.AimAssist.Enabled then
			IsTargetting = not IsTargetting
			if IsTargetting then
				Script.Functions.GetClosestPlayer2()
			else
				if AimTarget ~= nil then
					AimTarget = nil
					IsTargetting = false
				end
			end
		end
	end
	local Keybind2 = Arceus.Silent.Keybind:lower()
	if Key == Keybind2 and Arceus.Silent.UseKeybind then
		Arceus.Silent.Enabled = not Arceus.Silent.Enabled
		if Arceus.Both.SendNotification then
			game.StarterGui:SetCore("SendNotification",{
				Title = "Arceus.cc",
				Text = "Silent Aim: " .. tostring(Arceus.Silent.Enabled),
				Icon = "rbxassetid://12225612888",
				Duration = 1
			})
		end
	end
	local Keybind3 = Arceus.Both.UnderGroundKey:lower()
	if Key == Keybind3 and Arceus.Both.UseUnderGroundKeybind then
		Arceus.Both.DetectUnderGround = not Arceus.Both.DetectUnderGround
		if Arceus.Both.SendNotification then
			game.StarterGui:SetCore("SendNotification",{
				Title = "Arceus.cc",
				Text = "UnderGround Resolver: " .. tostring(Arceus.Both.DetectUnderGround),
				Icon = "rbxassetid://12225612888",
				Duration = 1
			})
		end
	end
	local Keybind4 = Arceus.Both.DetectDesyncKey:lower()
	if Key == Keybind4 and Arceus.Both.UseDetectDesyncKeybind then
		Arceus.Both.DetectDesync = not Arceus.Both.DetectDesync
		if Arceus.Both.SendNotification then
			game.StarterGui:SetCore("SendNotification",{
				Title = "Arceus.cc",
				Text = "Desync Resolver: " .. tostring(Arceus.Both.DetectDesync),
				Icon = "rbxassetid://12225612888",
				Duration = 1
			})
		end
	end
	local Keybind5 = Arceus.Both.LayKeybind:lower()
	if Key == Keybind5 and Arceus.Both.UseLay then
		local Args = {
			[1] = "AnimationPack",
			[2] = "Lay"
		}
		game:GetService("ReplicatedStorage"):FindFirstChild("MainEvent"):FireServer(unpack(Args))
	end
	local Keybind6 = Arceus.Esp.EspKey:lower()
	if Key == Keybind6 and Arceus.Esp.UseEspKeybind then
		if Arceus.Esp.HoldMode then
			Arceus.Esp.Enabled = true
		else
			Arceus.Esp.Enabled = not Arceus.Esp.Enabled
		end
	end
end)

-- // KeyUp Check
Mouse.KeyUp:Connect(function(Key)
	local Keybind = Arceus.Esp.EspKey:lower()
	if Key == Keybind and Arceus.Esp.UseEspKeybind and Arceus.Esp.HoldMode then
		Arceus.Esp.Enabled = false
	end
	local Keybind2 = Arceus.AimAssist.Key:lower()
	if Key == Keybind2 and Arceus.AimAssist.Enabled and Arceus.AimAssist.HoldMode then
		IsTargetting = false
		AimTarget = nil
	end
end)

-- // Disabled If AntiAimViewer Is On
if Arceus.Silent.AntiAimViewer then
	AntiAimViewer = false
else
	AntiAimViewer = true
end

-- // Blocks Mouse Triggering
game:GetService("ContextActionService"):BindActionAtPriority("LeftMouseBlock", function()
	if AntiAimViewer == false and Arceus.Silent.AntiAimViewer and Client.Character and Client.Character:FindFirstChildWhichIsA("Tool") then
		return Enum.ContextActionResult.Sink
	else
		return Enum.ContextActionResult.Pass
	end
end, true, Enum.ContextActionPriority.Low.Value, Enum.UserInputType.MouseButton1)

-- // Delaying The Mouse Trigger
Uis.InputBegan:connect(function(input)
	if input.UserInputType == Enum.UserInputType[Arceus.Silent.TriggerBotKey] and Arceus.Silent.UseTriggerBotKeybind then
		Arceus.Silent.TriggerBot = true
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 and Arceus.Silent.AntiAimViewer and Client.Character and Client.Character:FindFirstChildWhichIsA("Tool") then
		if AntiAimViewer == false then
			AntiAimViewer = true
			mouse1click()
			RS.RenderStepped:Wait()
			RS.RenderStepped:Wait()
			mouse1press()
			RS.RenderStepped:Wait()
			RS.RenderStepped:Wait()
			AntiAimViewer = false
		end
	end
end)

-- // Helps With Automatics
Uis.InputEnded:connect(function(input)
	if input.UserInputType == Enum.UserInputType[Arceus.Silent.TriggerBotKey] and Arceus.Silent.UseTriggerBotKeybind then
		Arceus.Silent.TriggerBot = true
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 and Arceus.Silent.AntiAimViewer and Client.Character and Client.Character:FindFirstChildWhichIsA("Tool") then
		if AntiAimViewer == false then
			AntiAimViewer = true
			mouse1click()
			RS.RenderStepped:Wait()
			RS.RenderStepped:Wait()
			mouse1click()
			RS.RenderStepped:Wait()
			RS.RenderStepped:Wait()
			AntiAimViewer = true
		end
	end
end)

-- // Checks If The Player Is Alive
Script.Functions.Alive = function(Plr)
	if Plr and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and Plr.Character:FindFirstChild("Humanoid") ~= nil and Plr.Character:FindFirstChild("Head") ~= nil then
		return true
	end
	return false
end

-- // Checks If Player Is On Your Screen
Script.Functions.OnScreen = function(Object)
	local _, screen = Camera:WorldToScreenPoint(Object.Position)
	return screen
end

-- // Gets Magnitude From Part Position And Mouse
Script.Functions.GetMagnitudeFromMouse = function(Part)
	local PartPos, OnScreen = Camera:WorldToScreenPoint(Part.Position)
	if OnScreen then
		local Magnitude = (Vector2.new(PartPos.X, PartPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
		return Magnitude
	end
	return math.huge
end

-- // Makes Random Number With Vector3 
Script.Functions.RandomVec = function(Number, Multi)
	return (Vector3.new(Ran(-Number, Number), Ran(-Number, Number), Ran(-Number, Number)) * Multi or 1)
end

-- // Checks If The Player Is Behind A Wall Or Something Else
Script.Functions.RayCastCheck = function(Part, PartDescendant)
	local Character = Client.Character or Client.CharacterAdded.Wait(Client.CharacterAdded)
	local Origin = Camera.CFrame.Position

	local RayCastParams = RaycastParams.new()
	RayCastParams.FilterType = Enum.RaycastFilterType.Blacklist
	RayCastParams.FilterDescendantsInstances = {Character, Camera}

	local Result = workspace.Raycast(workspace, Origin, Part.Position - Origin, RayCastParams)

	if (Result) then
		local PartHit = Result.Instance
		local Visible = (not PartHit or Instance.new("Part").IsDescendantOf(PartHit, PartDescendant))

		return Visible
	end
	return false
end

-- // Gets The Part From An Object
Script.Functions.GetParts = function(Object)
	if string.find(Object.Name, "Gun") then
		return
	end
	if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
		return true
	end
end

-- // Random Number To Compare
Script.Functions.CalculateChance = function(Percentage)
	Percentage = math.floor(Percentage)
	local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100

	return chance < Percentage / 100
end

-- // Check If Crew Folder Is A Thing
Script.Functions.FindCrew = function(Player)
	if Player:FindFirstChild("DataFolder") and Player.DataFolder:FindFirstChild("Information") and Player.DataFolder.Information:FindFirstChild("Crew") and Client:FindFirstChild("DataFolder") and Client.DataFolder:FindFirstChild("Information") and Client.DataFolder.Information:FindFirstChild("Crew") then
		if Client.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and Player.DataFolder.Information:FindFirstChild("Crew").Value ~= nil and Player.DataFolder.Information:FindFirstChild("Crew").Value ~= "" and Client.DataFolder.Information:FindFirstChild("Crew").Value ~= "" then 
			return true
		end
	end
	return false
end

-- // Splits The Gun Name And Splits []
Script.Functions.GetGunName = function(Name)
	local split = string.split(string.split(Name, "[")[2], "]")[1]
	return split
end

-- // Gets Current Gun
Script.Functions.GetCurrentWeaponName = function()
	if Client.Character and Client.Character:FindFirstChildWhichIsA("Tool") then
		local Tool =  Client.Character:FindFirstChildWhichIsA("Tool")
		if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then
			return Script.Functions.GetGunName(Tool.Name)
		end
	end
	return nil
end

-- // Drawing Function With Property Attached
Script.Functions.NewDrawing = function(Type, Properties)
	local NewDrawing = Drawing.new(Type)

	for i,v in next, Properties or {} do
		NewDrawing[i] = v
	end
	return NewDrawing
end

-- // Draws For The New Players Joining For Esp
Script.Functions.NewPlayer = function(Player)
	Script.EspPlayers[Player] = {
		Name = Script.Functions.NewDrawing("Text", {Color = Color3.fromRGB(255,2550, 255), Outline = true, Visible = false, Center = true, Size = 13, Font = 0}),
		BoxOutline = Script.Functions.NewDrawing("Square", {Color = Color3.fromRGB(0, 0, 0), Thickness = 3, Visible = false}),
		Box = Script.Functions.NewDrawing("Square", {Color = Color3.fromRGB(255, 255, 255), Thickness = 1, Visible = false}),
		HealthBarOutline = Script.Functions.NewDrawing("Line", {Color = Color3.fromRGB(0, 0, 0), Thickness = 3, Visible = false}),
		HealthBar = Script.Functions.NewDrawing("Line", {Color = Color3.fromRGB(0, 255, 0), Thickness = 1, Visible = false}),
		HealthText = Script.Functions.NewDrawing("Text", {Color = Color3.fromRGB(0, 255, 0), Outline = true, Visible = false, Center = true, Size = 13, Font = 0}),
		Distance = Script.Functions.NewDrawing("Text", {Color = Color3.fromRGB(255, 255, 255), Outline = true, Visible = false, Center = true, Size = 13, Font = 0})
	}
end

-- // Gets The Closest Part From Cursor
Script.Functions.GetClosestBodyPart = function(Char)
	local Distance = math.huge
	local ClosestPart = nil
	local Filterd = {}

	if not (Char and Char:IsA("Model")) then
		return ClosestPart
	end

	local Parts = Char:GetChildren()
	for _, v in pairs(Parts) do
		if Script.Functions.GetParts(v) and Script.Functions.OnScreen(v) then
			table.insert(Filterd, v)
			for _, Part in pairs(Filterd) do                
				local Magnitude = Script.Functions.GetMagnitudeFromMouse(Part)
				if Magnitude < Distance then
					ClosestPart = Part
					Distance = Magnitude
				end
			end
		end
	end
	return ClosestPart
end

-- // Gets The Closest Point From Cursor
Script.Functions.GetClosestPointOfPart = function(Part)
	local NearestPosition = nil
	if Part ~= nil then
		local Hit, Half = Mouse.Hit.Position, Part.Size * 0.5
		local Transform = Part.CFrame:PointToObjectSpace(Mouse.Hit.Position)
		NearestPosition = Part.CFrame * Vector3.new(math.clamp(Transform.X, -Half.X, Half.X),math.clamp(Transform.Y, -Half.Y, Half.Y),math.clamp(Transform.Z, -Half.Z, Half.Z))
	end
	return NearestPosition
end

-- // Gets The Closest Player For Cursor (Silent Aim)
Script.Functions.GetClosestPlayer = function()
	local Target = nil
	local Closest = math.huge
	local HitChance = Script.Functions.CalculateChance(Arceus.Silent.HitChance)

	if not HitChance then
		return nil
	end
	for _, v in pairs(Players:GetPlayers()) do
		if v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart") then
			if not Script.Functions.OnScreen(v.Character.HumanoidRootPart) then 
				continue 
			end
			if Arceus.Silent.WallCheck and not Script.Functions.RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
				continue 
			end
			if Arceus.Silent.CheckIf_KO and v.Character:FindFirstChild("BodyEffects") then
				local KoCheck = v.Character.BodyEffects:FindFirstChild("K.O").Value
				local Grabbed = v.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
				if KoCheck or Grabbed then
					continue
				end
			end
			if Arceus.Silent.CheckIf_TargetDeath and v.Character:FindFirstChild("Humanoid") then
				if v.Character.Humanoid.health < 4 then
					continue
				end
			end
			if Arceus.Both.VisibleCheck and v.Character:FindFirstChild("Head") then
				if v.Character.Head.Transparency > 0.5 then
					continue
				end
			end
			if Arceus.Both.CrewCheck and Script.Functions.FindCrew(v) and v.DataFolder.Information:FindFirstChild("Crew").Value == Client.DataFolder.Information:FindFirstChild("Crew").Value then
				continue
			end
			if Arceus.Both.TeamCheck then
				if v.Team ~= Client.Team then
					continue
				end
			end
			if Arceus.Both.FriendCheck then
				if not table.find(Script.Friends, v.UserId) then
					continue
				end
			end
			local Distance = Script.Functions.GetMagnitudeFromMouse(v.Character.HumanoidRootPart)

			if (Distance < Closest and Script.Drawing.SilentCircle.Radius + 10 > Distance) then
				Closest = Distance
				Target = v
			end
		end
	end

	SilentTarget = Target
end

-- // Gets Closest Player From Mouse (AimAssist)
Script.Functions.GetClosestPlayer2 = function()
	local Target = nil
	local Distance = nil
	local Closest = math.huge

	for _, v in pairs(Players:GetPlayers()) do
		if v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart") then
			if not Script.Functions.OnScreen(v.Character.HumanoidRootPart) then 
				continue 
			end
			if Arceus.AimAssist.WallCheck and not Script.Functions.RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
				continue 
			end
			local Distance = Script.Functions.GetMagnitudeFromMouse(v.Character.HumanoidRootPart)

			if Distance < Closest then
				if (Arceus.AimAssist.UseCircleRadius and Script.Drawing.AimAssistCircle.Radius + 10 < Distance) then continue end
				Closest = Distance
				Target = v
			end
		end
	end

	if Script.Functions.Alive(Target) then
		if Arceus.Both.VisibleCheck then
			if Target.Character.Head.Transparency > 0.5 then
				return nil
			end
		end
		if Arceus.Both.CrewCheck and Script.Functions.FindCrew(Target) and Target.DataFolder.Information:FindFirstChild("Crew").Value == Client.DataFolder.Information:FindFirstChild("Crew").Value then
			return nil
		end
	end
	if Arceus.Both.TeamCheck and Target then
		if Target.Team == Client.Team then
			return nil
		end
	end
	if Arceus.Both.FriendCheck then
		if table.find(Script.Friends, Target.UserId) then
			return nil
		end
	end

	AimTarget = Target
end

-- // Server Side Mouse Position Changer
local OldIndex = nil 
OldIndex = hookmetamethod(game, "__index", function(self, Index)
	if not checkcaller() and Mouse and self == Mouse and Index == "Hit" and Arceus.Silent.Enabled and AntiAimViewer then
		if Script.Functions.Alive(SilentTarget) and Players[tostring(SilentTarget)].Character:FindFirstChild(Arceus.Silent.Part) then
			local EndPoint = nil
			local TargetCF = nil
			local TargetVel = Players[tostring(SilentTarget)].Character.HumanoidRootPart.Velocity
			local TargetMov = Players[tostring(SilentTarget)].Character.Humanoid.MoveDirection

			if Arceus.Silent.ClosestPoint then
				TargetCF = ClosestPointCF
			else
				TargetCF = Players[tostring(SilentTarget)].Character[Arceus.Silent.Part].CFrame
			end

			if Arceus.Both.DetectDesync then
				local Magnitude = TargetVel.magnitude
				local Magnitude2 = TargetMov.magnitude
				if Magnitude > Arceus.Both.DesyncDetection then
					DetectedDesync = true
				else
					DetectedDesync = false
				end
			else
				DetectedDesync = false
			end
			if Arceus.Silent.AntiGroundShots then
				if TargetVel.Y < Arceus.Silent.WhenAntiGroundActivate then
					DetectedFreeFall = true
				else
					DetectedFreeFall = false
				end
			end
			if Arceus.Both.DetectUnderGround then 
				if TargetVel.Y < Arceus.Both.UnderGroundDetection then            
					DetectedUnderGround = true
				else
					DetectedUnderGround = false
				end
			else
				DetectedUnderGround = false
			end

			if TargetCF ~= nil then
				if DetectedDesync then
					local MoveDirection = TargetMov * 16
					EndPoint = TargetCF + (MoveDirection * Arceus.Silent.PredictionVelocity)
				elseif DetectedUnderGround then
					EndPoint = TargetCF + (Vector3.new(TargetVel.X, 0, TargetVel.Z) * Arceus.Silent.PredictionVelocity)
				elseif DetectedFreeFall then
					EndPoint = TargetCF + (Vector3.new(TargetVel.X, (TargetVel.Y * Arceus.Silent.AntiGroundValue), TargetVel.Z) * Arceus.Silent.PredictionVelocity)
				elseif Arceus.Silent.PredictMovement then
					EndPoint = TargetCF + (Vector3.new(TargetVel.X, (TargetVel.Y * 0.5), TargetVel.Z) * Arceus.Silent.PredictionVelocity)
				else
					EndPoint = TargetCF
				end
				if Arceus.Silent.Humanize then
					local HumanizeValue = Arceus.Silent.HumanizeValue 
					EndPoint = (EndPoint + Script.Functions.RandomVec(HumanizeValue, 0.01))
				end
			end

			if EndPoint ~= nil then
				return (Index == "Hit" and EndPoint)
			end
		end
	end
	return OldIndex(self, Index)
end)

-- // Silent Aim Misc
Script.Functions.SilentMisc = function()
	if Arceus.Silent.Enabled and Script.Functions.Alive(SilentTarget) then
		if Arceus.Silent.UseAirPart then
			if SilentTarget.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
				Arceus.Silent.Part = Arceus.Silent.AirPart
			else
				Arceus.Silent.Part = OldSilentAimPart
			end
		end
		if Arceus.Silent.TriggerBot then
			mouse1click()
		end
	end
	if Arceus.Silent.AutoPrediction then
		local ping = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
		if ping < 10 then
			Arceus.Silent.PredictionVelocity = 0.07
		elseif ping < 20 then
			Arceus.Silent.PredictionVelocity = 0.155
		elseif ping < 30 then
			Arceus.Silent.PredictionVelocity = 0.132
		elseif ping < 40 then
			Arceus.Silent.PredictionVelocity = 0.136
		elseif ping < 50 then
			Arceus.Silent.PredictionVelocity = 0.130
		elseif ping < 60 then
			Arceus.Silent.PredictionVelocity = 0.136
		elseif ping < 70 then
			Arceus.Silent.PredictionVelocity = 0.138
		elseif ping < 80 then
			Arceus.Silent.PredictionVelocity = 0.138
		elseif ping < 90 then
			Arceus.Silent.PredictionVelocity = 0.146
		elseif ping < 100 then
			Arceus.Silent.PredictionVelocity = 0.14322
		elseif ping < 110 then
			Arceus.Silent.PredictionVelocity = 0.146
		elseif ping < 120 then
			Arceus.Silent.PredictionVelocity = 0.149
		elseif ping < 130 then
			Arceus.Silent.PredictionVelocity = 0.151
		elseif ping < 140 then
			Arceus.Silent.PredictionVelocity = 0.1223333
		elseif ping < 150 then
			Arceus.Silent.PredictionVelocity = 0.15
		elseif ping < 160 then
			Arceus.Silent.PredictionVelocity = 0.16
		elseif ping < 170 then
			Arceus.Silent.PredictionVelocity = 0.1923111
		elseif ping < 180 then
			Arceus.Silent.PredictionVelocity = 0.19284
		elseif ping > 180 then
			Arceus.Silent.PredictionVelocity = 0.166547
		end
	end
end

-- // The AimAssist Mouse Dragging/Check Functions
Script.Functions.MouseChanger = function()
	if Arceus.AimAssist.Enabled and Script.Functions.Alive(AimTarget) and Players[tostring(AimTarget)].Character:FindFirstChild(Arceus.AimAssist.Part) and Script.Functions.OnScreen(Players[tostring(AimTarget)].Character[Arceus.AimAssist.Part]) then
		local EndPosition = nil
		local TargetPos = Players[tostring(AimTarget)].Character[Arceus.AimAssist.Part].Position
		local TargetVel = Players[tostring(AimTarget)].Character[Arceus.AimAssist.Part].Velocity
		local TargetMov = Players[tostring(AimTarget)].Character.Humanoid.MoveDirection

		if Arceus.Both.DetectDesync then
			local Magnitude = TargetVel.magnitude
			local Magnitude2 = TargetMov.magnitude
			if Magnitude > Arceus.Both.DesyncDetection then
				DetectedDesyncV2 = true
			elseif Magnitude < 1 and Magnitude2 > 0.01 then
				DetectedDesyncV2 = true
			elseif Magnitude > 5 and Magnitude2 < 0.01 then
				DetectedDesyncV2 = true
			else
				DetectedDesyncV2 = false
			end
		else
			DetectedDesyncV2 = false
		end
		if Arceus.Both.DetectUnderGround then 
			if TargetVel.Y < Arceus.Both.UnderGroundDetection then            
				DetectedUnderGroundV2 = true
			else
				DetectedUnderGroundV2 = false
			end
		else
			DetectedUnderGroundV2 = false
		end

		if Script.Functions.Alive(Client) then
			if Arceus.AimAssist.DisableLocalDeath then
				if Client.Character.Humanoid.health < 4 then
					AimTarget = nil
					IsTargetting = false
					return
				end
			end
			if Arceus.AimAssist.DisableOutSideCircle then
				local Magnitude = Script.Functions.GetMagnitudeFromMouse(AimTarget.Character.HumanoidRootPart)
				if Script.Drawing.AimAssistCircle.Radius < Magnitude then
					AimTarget = nil
					IsTargetting = false
					return
				end
			end
		end

		if Arceus.AimAssist.DisableOn_KO and AimTarget.Character:FindFirstChild("BodyEffects") then 
			local KoCheck = AimTarget.Character.BodyEffects:FindFirstChild("K.O").Value
			local Grabbed = AimTarget.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
			if KoCheck or Grabbed then
				AimTarget = nil
				IsTargetting = false
				return
			end
		end
		if Arceus.AimAssist.DisableTargetDeath then
			if AimTarget.Character.Humanoid.health < 4 then
				AimTarget = nil
				IsTargetting = false
				return
			end
		end

		if DetectedDesyncV2 and Arceus.AimAssist.PredictMovement then
			local MoveDirection = TargetMov * 16
			EndPosition = Camera:WorldToScreenPoint(TargetPos + (MoveDirection * Arceus.AimAssist.PredictionVelocity))
		elseif DetectedUnderGroundV2 and Arceus.AimAssist.PredictMovement then
			EndPosition = Camera:WorldToScreenPoint(TargetPos + (Vector3.new(TargetVel.X, 0, TargetVel.Z) * Arceus.AimAssist.PredictionVelocity))
		elseif Arceus.AimAssist.PredictMovement then
			if Arceus.AimAssist.UseShake and Script.Functions.Alive(Client) then
				local Shake = Arceus.AimAssist.ShakeValue / 100
				local Mag = math.ceil((TargetPos - Client.Character.HumanoidRootPart.Position).Magnitude)
				EndPosition = Camera:WorldToScreenPoint(TargetPos + (TargetVel * Arceus.AimAssist.PredictionVelocity) + Script.Functions.RandomVec(Mag * Shake, 0.1))
			else
				EndPosition = Camera:WorldToScreenPoint(TargetPos + (TargetVel * Arceus.AimAssist.PredictionVelocity))
			end
		else
			if Arceus.AimAssist.UseShake and Script.Functions.Alive(Client) then
				local Shake = Arceus.AimAssist.ShakeValue / 100
				local Mag = math.ceil((TargetPos - Client.Character.HumanoidRootPart.Position).Magnitude)
				EndPosition = Camera:WorldToScreenPoint(TargetPos + Script.Functions.RandomVec(Mag * Shake, 0.1))
			else
				EndPosition = Camera:WorldToScreenPoint(TargetPos)
			end
		end

		if EndPosition ~= nil then
			local InCrementX = (EndPosition.X - Mouse.X) * Arceus.AimAssist.Smoothness_X
			local InCrementY = (EndPosition.Y - Mouse.Y) * Arceus.AimAssist.Smoothness_Y
			mousemoverel(InCrementX, InCrementY)
		end
	end
end

--// Update Size/Position Of Circle
Script.Functions.UpdateFOV = function()
	if (not Script.Drawing.SilentCircle and not Script.Drawing.AimAssistCircle) then
		return Script.Drawing.SilentCircle and Script.Drawing.AimAssistCircle
	end

	Script.Drawing.AimAssistCircle.Visible = Arceus.AimAssistFov.Visible
	Script.Drawing.AimAssistCircle.Filled = Arceus.AimAssistFov.Filled
	Script.Drawing.AimAssistCircle.Color = Arceus.AimAssistFov.Color
	Script.Drawing.AimAssistCircle.Transparency = Arceus.AimAssistFov.Transparency
	Script.Drawing.AimAssistCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiS:GetGuiInset().Y)
	Script.Drawing.AimAssistCircle.Radius = Arceus.AimAssistFov.Radius * 3

	Script.Drawing.SilentCircle.Visible = Arceus.SilentFov.Visible
	Script.Drawing.SilentCircle.Color = Arceus.SilentFov.Color
	Script.Drawing.SilentCircle.Filled = Arceus.SilentFov.Filled
	Script.Drawing.SilentCircle.Transparency = Arceus.SilentFov.Transparency
	Script.Drawing.SilentCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiS:GetGuiInset().Y)
	Script.Drawing.SilentCircle.Radius = Arceus.SilentFov.Radius * 3

	if Arceus.RangeFov.Enabled or Arceus.GunFov.Enabled then
		local CurrentGun = Script.Functions.GetCurrentWeaponName()
		if Arceus.GunFov.Enabled then
			local WeaponSettings = Arceus.GunFov[CurrentGun]
			if WeaponSettings ~= nil then
				Arceus.SilentFov.Radius = WeaponSettings.Fov
			end
		end
		if Arceus.RangeFov.Enabled then
			local WeaponSettingsV2 = Arceus.RangeFov[CurrentGun]
			if WeaponSettingsV2 ~= nil then
				if Script.Functions.Alive(SilentTarget) and Script.Functions.Alive(Client) then
					local Magnitude = (SilentTarget.Character.HumanoidRootPart.Position - Client.Character.HumanoidRootPart.Position).Magnitude
					if Magnitude < Arceus.RangeFov.Close_Activation then
						Arceus.SilentFov.Radius = WeaponSettingsV2.Close
					elseif Magnitude < Arceus.RangeFov.Medium_Activation then
						Arceus.SilentFov.Radius = WeaponSettingsV2.Med
					elseif Magnitude < Arceus.RangeFov.Far_Activation then
						Arceus.SilentFov.Radius = WeaponSettingsV2.Far
					end
				end
			end
		end
	end
end

-- // Updates Esp Posistions
Script.Functions.UpdateEsp = function()
	for i,v in pairs(Script.EspPlayers) do
		if Arceus.Esp.Enabled and i ~= Client and i.Character and i.Character:FindFirstChild("Humanoid") and i.Character:FindFirstChild("HumanoidRootPart") and i.Character:FindFirstChild("Head") then
			local Hum = i.Character.Humanoid
			local Hrp = i.Character.HumanoidRootPart

			local Vector, OnScreen = Camera:WorldToViewportPoint(i.Character.HumanoidRootPart.Position)
			local Size = (Camera:WorldToViewportPoint(Hrp.Position - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(Hrp.Position + Vector3.new(0, 2.6, 0)).Y) / 2
			local BoxSize = Vector2.new(math.floor(Size * 1.5), math.floor(Size * 1.9))
			local BoxPos = Vector2.new(math.floor(Vector.X - Size * 1.5 / 2), math.floor(Vector.Y - Size * 1.6 / 2))
			local BottomOffset = BoxSize.Y + BoxPos.Y + 1

			if OnScreen then
				if Arceus.Esp.Name.Enabled then
					v.Name.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 16)
					v.Name.Outline = Arceus.Esp.Name.OutLine
					v.Name.Text = tostring(i)
					v.Name.Color = Arceus.Esp.Name.Color
					v.Name.OutlineColor = Color3.fromRGB(0, 0, 0)
					v.Name.Font = 0
					v.Name.Size = 16

					v.Name.Visible = true
				else
					v.Name.Visible = false
				end
				if Arceus.Esp.Distance.Enabled and Client.Character and Client.Character:FindFirstChild("HumanoidRootPart") then
					v.Distance.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BottomOffset)
					v.Distance.Outline = Arceus.Esp.Distance.OutLine
					v.Distance.Text = "[" .. math.floor((Hrp.Position - Client.Character.HumanoidRootPart.Position).Magnitude) .. "m]"
					v.Distance.Color = Arceus.Esp.Distance.Color
					v.Distance.OutlineColor = Color3.fromRGB(0, 0, 0)
					BottomOffset = BottomOffset + 15

					v.Distance.Font = 0
					v.Distance.Size = 16

					v.Distance.Visible = true
				else
					v.Distance.Visible = false
				end
				if Arceus.Esp.Box.Enabled then
					v.BoxOutline.Size = BoxSize
					v.BoxOutline.Position = BoxPos
					v.BoxOutline.Visible = Arceus.Esp.Box.OutLine
					v.BoxOutline.Color = Color3.fromRGB(0, 0, 0)

					v.Box.Size = BoxSize
					v.Box.Position = BoxPos
					v.Box.Color = Arceus.Esp.Box.Color
					v.Box.Visible = true
				else
					v.BoxOutline.Visible = false
					v.Box.Visible = false
				end
				if Arceus.Esp.HealthBar.Enabled then
					v.HealthBar.From = Vector2.new((BoxPos.X - 5), BoxPos.Y + BoxSize.Y)
					v.HealthBar.To = Vector2.new(v.HealthBar.From.X, v.HealthBar.From.Y - (Hum.Health / Hum.MaxHealth) * BoxSize.Y)
					v.HealthBar.Color = Arceus.Esp.HealthBar.Color
					v.HealthBar.Visible = true

					v.HealthBarOutline.From = Vector2.new(v.HealthBar.From.X, BoxPos.Y + BoxSize.Y + 1)
					v.HealthBarOutline.To = Vector2.new(v.HealthBar.From.X, (v.HealthBar.From.Y - 1 * BoxSize.Y) -1)
					v.HealthBarOutline.Color = Color3.fromRGB(0, 0, 0)
					v.HealthBarOutline.Visible = Arceus.Esp.HealthBar.OutLine
				else
					v.HealthBarOutline.Visible = false
					v.healthBar.Visible = false
				end
				if Arceus.Esp.HealthText.Enabled then
					v.HealthText.Text = tostring(math.floor((Hum.Health / Hum.MaxHealth) * 100 + 0.5))
					v.HealthText.Position = Vector2.new((BoxPos.X - 20), (BoxPos.Y + BoxSize.Y - 1 * BoxSize.Y) -1)
					v.HealthText.Color = Arceus.Esp.HealthText.Color
					v.HealthText.OutlineColor = Color3.fromRGB(0, 0, 0)
					v.HealthText.Outline = Arceus.Esp.HealthText.OutLine

					v.HealthText.Font = 0
					v.HealthText.Size = 16

					v.HealthText.Visible = true
				else
					v.HealthText.Visible = false
				end
			else
				v.Name.Visible = false
				v.BoxOutline.Visible = false
				v.Box.Visible = false
				v.HealthBarOutline.Visible = false
				v.HealthBar.Visible = false
				v.HealthText.Visible = false
				v.Distance.Visible = false
			end
		else
			v.Name.Visible = false
			v.BoxOutline.Visible = false
			v.Box.Visible = false
			v.HealthBarOutline.Visible = false
			v.HealthBar.Visible = false
			v.HealthText.Visible = false
			v.Distance.Visible = false
		end
	end
end

-- // Client Fps (EXECUTES PER FRAME)
RS.Heartbeat:Connect(function()
	Script.Functions.GetClosestPlayer()
	Script.Functions.SilentMisc()
	Script.Functions.MouseChanger()
end)

-- // Server Tick (EXECUTES PER TICK)
RS.RenderStepped:Connect(function()
	Script.Functions.UpdateEsp()
	Script.Functions.UpdateFOV()
	if Arceus.Silent.Enabled and Arceus.Silent.ClosestPoint and Script.Functions.Alive(SilentTarget) and Players[tostring(SilentTarget)].Character:FindFirstChild(Arceus.Silent.Part) then
		local ClosestPoint = Script.Functions.GetClosestPointOfPart(Players[tostring(SilentTarget)].Character[Arceus.Silent.Part])
		ClosestPointCF = CFrame.new(ClosestPoint.X, ClosestPoint.Y, ClosestPoint.Z)
	end
	if Arceus.AimAssist.Enabled and Script.Functions.Alive(AimTarget) and Arceus.Silent.ClosestPart and Script.Functions.Alive(SilentTarget) then
		local currentpart = tostring(Script.Functions.GetClosestBodyPart(AimTarget.Character))
		if Arceus.AimAssist.ClosestPart then
			Arceus.AimAssist.Part = currentpart
		end
		if Arceus.Silent.ClosestPart then
			Arceus.Silent.Part = currentpart
			OldSilentAimPart = Arceus.Silent.Part
		end
		return
	end
	if Arceus.AimAssist.Enabled and Arceus.AimAssist.ClosestPart and Script.Functions.Alive(AimTarget) then
		Arceus.AimAssist.Part = tostring(Script.Functions.GetClosestBodyPart(AimTarget.Character))
	end
	if Arceus.Silent.Enabled and Arceus.Silent.ClosestPart and Script.Functions.Alive(SilentTarget) then
		Arceus.Silent.Part = tostring(Script.Functions.GetClosestBodyPart(SilentTarget.Character))
		OldSilentAimPart = Arceus.Silent.Part
	end
end)

-- // Checks Everyone In The Server And Puts It In A Table
for _, Player in ipairs(Players:GetPlayers()) do
	if (Player ~= Client and Client:IsFriendsWith(Player.UserId)) then
		table.insert(Script.Friends, Player)
	end
	Script.Functions.NewPlayer(Player)
end

-- // Checks When Players Joins And Adds Them To A Table
Players.PlayerAdded:Connect(function(Player)
	if (Client:IsFriendsWith(Player.UserId)) then
		table.insert(Script.Friends, Player)
	end
	Script.Functions.NewPlayer(Player)
end)

-- // Checks If A Player Left And Removes Them From The Table
Players.PlayerRemoving:Connect(function(Player)
	local i = table.find(Script.Friends, Player)
	if (i) then
		table.remove(Script.Friends, i)
	end
	for i,v in pairs(Script.EspPlayers[Player]) do
		v:Remove()
	end
	Script.EspPlayers[Player] = nil
end)