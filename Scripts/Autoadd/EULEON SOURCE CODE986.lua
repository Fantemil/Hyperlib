-- // Leaked By listofmyregrets
-- Leaked By listofmyregrets

script_key = "Key_Here"; -- // Leaked By listofmyregrets
getgenv().Euleon = { -- // Leaked By listofmyregrets
    Main = { -- // Leaked By listofmyregrets
        TargetMode = "FOV", -- Change to "FOV" to use FOV Mode.
        Resolver = {
            AntiAimViewer = true, -- // Bypasses The Mouse Position For The Server 
            Enabled = true, -- // Leaked By listofmyregrets
            AutoResolve = true, -- // Leaked By listofmyregrets
            MinVelocity = -50, -- // Leaked By listofmyregrets
            MaxVelocity = 50, -- // Leaked By listofmyregrets
        }, -- // Leaked By listofmyregrets
        MemorySpoof = true, -- // Leaked By listofmyregrets
        MinMemory = 800, -- // Leaked By listofmyregrets
        MaxMemory = 900, -- // Leaked By listofmyregrets
    }, -- // Leaked By listofmyregrets
	Silent = {
		Enabled = true, -- // Use The Silent Aim Or Not
		UseKeybind = true, -- // Leaked By listofmyregrets
		Keybind = "P", -- // Leaked By listofmyregrets
        PredictMovement = true, -- // Leaked By listofmyregrets
        PredictionVelocity = 0.138, -- // Leaked By listofmyregrets
        PredictionVelocityY = 0.138, -- // Leaked By listofmyregrets
		AutoPrediction = true, -- // Leaked By listofmyregrets
        HitChance = 100, -- // Leaked By listofmyregrets
        HitPart = { -- // Leaked By listofmyregrets
            Part = "HumanoidRootPart", -- // Leaked By listofmyregrets
            HitPartMode = "Nearest Point", -- // "Nearest Point", "Nearest Part" Leaked By listofmyregrets
            AntiGroundShots = true, -- // Leaked By listofmyregrets
        } -- // Leaked By listofmyregrets
	}, -- // Leaked By listofmyregrets
	SilentFov = { -- // Leaked By listofmyregrets
		Visible = true, -- // If The Circle Is Showing Or Not
		Filled = false, -- // If The Circle Is Filled
		Transparency = 1, -- // The Circle Transparency
		Color = Color3.fromRGB(87, 237, 255), -- // Circle Color
		Radius = 25.5 -- // How Big The Circle Is
	}, -- // Leaked By listofmyregrets
	AimAssist = { -- // Leaked By listofmyregrets
		Enabled = true, -- // Use The Aim Assist Or Not
		Key = "c", -- // Leaked By listofmyregrets
		PredictMovement = true, -- // Leaked By listofmyregrets
		PredictionVelocity = 0.125, -- // Leaked By listofmyregrets
        HitPart = {
            Part = "HumanoidRootPart", -- // Leaked By listofmyregrets
            NearestPart = true, -- // Leaked By listofmyregrets
            UseShake = true, -- // Leaked By listofmyregrets
            ShakeValue = 55, -- // Leaked By listofmyregrets
            Smoothness_X = 0.15, -- // How Smooth The Aim Assist Is On X
            Smoothness_Y = 0.15 -- // How Smooth The Aim Assist Is On Y
        } -- // Leaked By listofmyregrets
	}, -- // Leaked By listofmyregrets
	AimAssistFov = { -- // Leaked By listofmyregrets
		Visible = false, -- // If The Circle Is Showing Or Not
        UseCircleRadius = false, -- // Uses Circle Radius
        Disable_Outside_Of_Circle = true, -- // Disables Out Side Of The Circle
		Filled = false, -- // If The Circle Is Filled
		Transparency = 0.5, -- // Circle Transparency
		Color = Color3.fromRGB(255, 87, 87), -- // Circle Color
		Radius = 50 -- // How Big The Circle Is
	}, -- // Leaked By listofmyregrets
    GunFOV = { -- // Leaked By listofmyregrets
        Enabled = true, -- // Leaked By listofmyregrets
        DB = 15, -- // Leaked By listofmyregrets
        Rev = 15, -- // Leaked By listofmyregrets
        SMG = 15, -- // Leaked By listofmyregrets
        ShotGun = 15, -- // Leaked By listofmyregrets
        Rifle = 15, -- // Leaked By listofmyregrets
        Tact = 15, -- // Leaked By listofmyregrets
        Silencer = 15, -- // Leaked By listofmyregrets
        AK47 = 15, -- // Leaked By listofmyregrets
        AR = 15, -- // Leaked By listofmyregrets
	},
	Both = {    
        UseLay = false, -- // Leaked By listofmyregrets
		LayKeybind = "v", -- // Leaked By listofmyregrets
        Macro = "x", -- // Leaked By listofmyregrets
        Noclip = "n", -- // Leaked By listofmyregrets
        WallCheck = true, -- // Leaked By listofmyregrets
        KOCheck = true, -- // Leaked By listofmyregrets
        KnockedCheck = true, -- // Leaked By listofmyregrets
		VisibleCheck = true, -- // Leaked By listofmyregrets
        GrabbedCheckAndKnockedCheck = true, -- // Leaked By listofmyregrets
		CrewCheck = false, -- // Leaked By listofmyregrets
		FriendCheck = false, -- // Leaked By listofmyregrets
		TeamCheck = false, -- // Leaked By listofmyregrets
		SendNotification = true -- // Leaked By listofmyregrets
	}, -- // Leaked By listofmyregrets
	Commands = { -- // Leaked By listofmyregrets
		Enabled = false, -- // Enable / Disable Chat Command
		Silent_Enabled = "!senabled", -- // The Command To Enable / Disable Silent (With false/true)
		Silent_Prediction = "!spred", -- // The Command To Change Silent Prediction (With Numbers)
		Silent_Fov_Size = "!sfov", -- // The Command To Change Silent Fov (With Numbers)
		Silent_Fov_Show = "!sshow", -- // The Command To Change Silent (With false/true)
		Silent_HitChance = "!schance", -- // The Command To Change Silent HitChance (With Numbers)
 -- // Leaked By listofmyregrets
 -- // Leaked By listofmyregrets
		AimAssist_Enabled = "!aenabled", -- // The Command To Enable / Disable AimAssist (With false/true)
		AimAssist_Prediction = "!apred", -- // The Command To Change AimAssist Prediction (With Numbers)
		AimAssist_Fov_Size = "!afov", -- // The Command To Change AimAssist Fov (With Numbers)
		AimAssist_Fov_Show = "!ashow", -- // The Command To Change AimAssist (With false/true)
		AimAssist_SmoothX = "!smoothx", -- // The Command To Change AimAssist SmoothNess X Value (With Numbers)
		AimAssist_SmoothY = "!smoothy", -- // The Command To Change AimAssist SmoothNess Y Value (With Numbers)
		AimAssist_Shake = "!ashake", -- // The Command To Change AimAssist Shake Value (With Numbers)
 -- // Leaked By listofmyregrets
		CrashMode = ". ", -- // The Command To Crash Roblox
	},
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
local Euleon = getgenv().Euleon
local OldSilentAimPart = Euleon.Silent.HitPart.Part
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
	if Msg == Euleon.Commands.CrashMode then
		while true do end
	end
	local Splitted = string.split(Msg, " ")
	if Splitted[1] and Splitted[2] and Euleon.Commands.Enabled then
		if Splitted[1] == Euleon.Commands.Silent_Prediction then
			Euleon.Silent.PredictionVelocity = Splitted[2]
		elseif Splitted[1] == Euleon.Commands.Silent_Fov_Size then
			Euleon.SilentFov.Radius = Splitted[2]
		elseif Splitted[1] == Euleon.Commands.Silent_Fov_Show then
			if Splitted[2] == "true" then
				Euleon.SilentFov.Visible = true
			else
				Euleon.SilentFov.Visible = false
			end
		elseif Splitted[1] == Euleon.Commands.Silent_Enabled then
			if Splitted[2] == "true" then
				Euleon.Silent.Enabled = true
			else
				Euleon.Silent.Enabled = false 
			end
		elseif Splitted[1] == Euleon.Commands.Silent_HitChance then
			Euleon.Silent.HitChance = Splitted[2]
		elseif Splitted[1] == Euleon.Commands.AimAssist_Prediction then
			Euleon.AimAssist.PredictionVelocity = Splitted[2]
		elseif Splitted[1] == Euleon.Commands.AimAssist_Fov_Size then
			Euleon.AimAssistFov.Radius = Splitted[2]
		elseif Splitted[1] == Euleon.Commands.AimAssist_Fov_Show then
			if Splitted[2] == "true" then
				Euleon.AimAssistFov.Visible = true
			else
				Euleon.AimAssistFov.Visible = false
			end
		elseif Splitted[1] == Euleon.Commands.AimAssist_Enabled then
			if Splitted[2] == "true" then
				Euleon.AimAssist.Enabled = true
			else
				Euleon.AimAssist.Enabled = false
			end
		elseif Splitted[1] == Euleon.Commands.AimAssist_SmoothX then
			Euleon.AimAssist.Smoothness_X = Splitted[2]
		elseif Splitted[1] == Euleon.Commands.AimAssist_SmoothY then
			Euleon.AimAssist.Smoothness_Y = Splitted[2]
		elseif Splitted[1] == Euleon.Commands.AimAssist_Shake then
			Euleon.AimAssist.ShakeValue = Splitted[2]
		end
	end
end)

-- // KeyDown Check
Mouse.KeyDown:Connect(function(Key)
	local Keybind = Euleon.AimAssist.Key:lower()
	if Key == Keybind then
		if Euleon.AimAssist.Enabled then
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
	local Keybind2 = Euleon.Silent.Keybind:lower()
	if Key == Keybind2 and Euleon.Silent.UseKeybind then
		Euleon.Silent.Enabled = not Euleon.Silent.Enabled
		if Euleon.Both.SendNotification then
			game.StarterGui:SetCore("SendNotification",{
				Title = "Euleon.cc",
				Text = "Silent Aim: " .. tostring(Euleon.Silent.Enabled),
				Icon = "rbxassetid://12225612888",
				Duration = 1
			})
		end
	end
	local Keybind3 = Euleon.Both.UnderGroundKey:lower()
	if Key == Keybind3 and Euleon.Both.UseUnderGroundKeybind then
		Euleon.Main.Resolver.Enabled = not Euleon.Main.Resolver.Enabled
		if Euleon.Both.SendNotification then
			game.StarterGui:SetCore("SendNotification",{
				Title = "Euleon.cc",
				Text = "UnderGround Resolver: " .. tostring(Euleon.Main.Resolver.Enabled),
				Icon = "rbxassetid://12225612888",
				Duration = 1
			})
		end
	end
	local Keybind4 = Euleon.Both.DetectDesyncKey:lower()
	if Key == Keybind4 and Euleon.Both.UseDetectDesyncKeybind then
		Euleon.Main.DetectDesync = not Euleon.Both.DetectDesync
		if Euleon.Both.SendNotification then
			game.StarterGui:SetCore("SendNotification",{
				Title = "Euleon.cc",
				Text = "Desync Resolver: " .. tostring(Euleon.Both.DetectDesync),
				Icon = "rbxassetid://12225612888",
				Duration = 1
			})
		end
	end
	local Keybind5 = Euleon.Both.LayKeybind:lower()
	if Key == Keybind5 and Euleon.Both.UseLay then
		local Args = {
			[1] = "AnimationPack",
			[2] = "Lay"
		}
		game:GetService("ReplicatedStorage"):FindFirstChild("MainEvent"):FireServer(unpack(Args))
	end
	local Keybind6 = Euleon.Esp.EspKey:lower()
	if Key == Keybind6 and Euleon.Esp.UseEspKeybind then
		if Euleon.Esp.HoldMode then
			Euleon.Esp.Enabled = true
		else
			Euleon.Esp.Enabled = not Euleon.Esp.Enabled
		end
	end
end)

-- // KeyUp Check
Mouse.KeyUp:Connect(function(Key)
	local Keybind = Euleon.Esp.EspKey:lower()
	if Key == Keybind and Euleon.Esp.UseEspKeybind and Euleon.Esp.HoldMode then
		Euleon.Esp.Enabled = false
	end
	local Keybind2 = Euleon.AimAssist.Key:lower()
	if Key == Keybind2 and Euleon.AimAssist.Enabled and Euleon.AimAssist.HoldMode then
		IsTargetting = false
		AimTarget = nil
	end
end)

-- // Disabled If AntiAimViewer Is On
if Euleon.Main.Resolver.AntiAimViewer then
	AntiAimViewer = false
else
	AntiAimViewer = true
end

-- // Blocks Mouse Triggering
game:GetService("ContextActionService"):BindActionAtPriority("LeftMouseBlock", function()
	if AntiAimViewer == false and Euleon.Main.Resolver.AntiAimViewer and Client.Character and Client.Character:FindFirstChildWhichIsA("Tool") then
		return Enum.ContextActionResult.Sink
	else
		return Enum.ContextActionResult.Pass
	end
end, true, Enum.ContextActionPriority.Low.Value, Enum.UserInputType.MouseButton1)

-- // Delaying The Mouse Trigger
Uis.InputBegan:connect(function(input)
	if input.UserInputType == Enum.UserInputType[Euleon.Silent.TriggerBotKey] and Euleon.Silent.UseTriggerBotKeybind then
		Euleon.Silent.TriggerBot = true
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 and Euleon.Main.Resolver.AntiAimViewer and Client.Character and Client.Character:FindFirstChildWhichIsA("Tool") then
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
	if input.UserInputType == Enum.UserInputType[Euleon.Silent.TriggerBotKey] and Euleon.Silent.UseTriggerBotKeybind then
		Euleon.Silent.TriggerBot = true
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 and Euleon.Main.Resolver.AntiAimViewer and Client.Character and Client.Character:FindFirstChildWhichIsA("Tool") then
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

local EuleonGunList = {
	["Double-Barrel SG"] = {["FOV"] = Euleon.GunFOV.DB },
	["Revolver"] = {["FOV"] = Euleon.GunFOV.Rev },
	["SMG"] = {["FOV"] = Euleon.GunFOV.SMG },
	["Shotgun"] = {["FOV"] = Euleon.GunFOV.ShotGun },
	["Rifle"] = {["FOV"] = Euleon.GunFOV.Rifle },
	["TacticalShotgun"] = {["FOV"] = Euleon.GunFOV.Tact },
	["Silencer"] = {["FOV"] = Euleon.GunFOV.Silencer },
	["AK47"] = {["FOV"] = Euleon.GunFOV.AK47 },
	["AR"] = {["FOV"] = Euleon.GunFOV.AR },
}


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
	local HitChance = Script.Functions.CalculateChance(Euleon.Silent.HitChance)

	if not HitChance then
		return nil
	end
	for _, v in pairs(Players:GetPlayers()) do
		if v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart") then
			if not Script.Functions.OnScreen(v.Character.HumanoidRootPart) then 
				continue 
			end
			if Euleon.Both.WallCheck and not Script.Functions.RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
				continue 
			end
			if Euleon.Both.KOCheck and v.Character:FindFirstChild("BodyEffects") then
				local KoCheck = v.Character.BodyEffects:FindFirstChild("K.O").Value
				local Grabbed = v.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
				if KoCheck or Grabbed then
					continue
				end
			end
			if Euleon.Both.KnockedCheck and v.Character:FindFirstChild("Humanoid") then
				if v.Character.Humanoid.health < 4 then
					continue
				end
			end
			if Euleon.Both.VisibleCheck and v.Character:FindFirstChild("Head") then
				if v.Character.Head.Transparency > 0.5 then
					continue
				end
			end
			if Euleon.Both.CrewCheck and Script.Functions.FindCrew(v) and v.DataFolder.Information:FindFirstChild("Crew").Value == Client.DataFolder.Information:FindFirstChild("Crew").Value then
				continue
			end
			if Euleon.Both.TeamCheck then
				if v.Team ~= Client.Team then
					continue
				end
			end
			if Euleon.Both.FriendCheck then
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
			if Euleon.Both.WallCheck and not Script.Functions.RayCastCheck(v.Character.HumanoidRootPart, v.Character) then 
				continue 
			end
			local Distance = Script.Functions.GetMagnitudeFromMouse(v.Character.HumanoidRootPart)

			if Distance < Closest then
				if (Euleon.AimAssistFov.UseCircleRadius and Script.Drawing.AimAssistCircle.Radius + 10 < Distance) then continue end
				Closest = Distance
				Target = v
			end
		end
	end

	if Script.Functions.Alive(Target) then
		if Euleon.Both.VisibleCheck then
			if Target.Character.Head.Transparency > 0.5 then
				return nil
			end
		end
		if Euleon.Both.CrewCheck and Script.Functions.FindCrew(Target) and Target.DataFolder.Information:FindFirstChild("Crew").Value == Client.DataFolder.Information:FindFirstChild("Crew").Value then
			return nil
		end
	end
	if Euleon.Both.TeamCheck and Target then
		if Target.Team == Client.Team then
			return nil
		end
	end
	if Euleon.Both.FriendCheck then
		if table.find(Script.Friends, Target.UserId) then
			return nil
		end
	end

	AimTarget = Target
end

-- // Server Side Mouse Position Changer
local OldIndex = nil 
OldIndex = hookmetamethod(game, "__index", function(self, Index)
	if not checkcaller() and Mouse and self == Mouse and Index == "Hit" and Euleon.Silent.Enabled and AntiAimViewer then
		if Script.Functions.Alive(SilentTarget) and Players[tostring(SilentTarget)].Character:FindFirstChild(Euleon.Silent.HitPart.Part) then
			local EndPoint = nil
			local TargetCF = nil
			local TargetVel = Players[tostring(SilentTarget)].Character.HumanoidRootPart.Velocity
			local TargetMov = Players[tostring(SilentTarget)].Character.Humanoid.MoveDirection

			if Euleon.Silent.HitPart.HitPartMode == "Nearest Point" then
				TargetCF = ClosestPointCF
			else
				TargetCF = Players[tostring(SilentTarget)].Character[Euleon.Silent.HitPart.Part].CFrame
			end

			if Euleon.Main.Resolver.AutoResolve then
				local Magnitude = TargetVel.magnitude
				local Magnitude2 = TargetMov.magnitude
				if Magnitude > Euleon.Main.Resolver.MaxVelocity then
					DetectedDesync = true
				else
					DetectedDesync = false
				end
			else
				DetectedDesync = false
			end
			if Euleon.Silent.HitPart.AntiGroundShots then
				if TargetVel.Y < 20 then
					DetectedFreeFall = true
				else
					DetectedFreeFall = false
				end
			end
			if Euleon.Main.Resolver.Enabled then 
				if TargetVel.Y < Euleon.Main.Resolver.MinVelocity then            
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
					EndPoint = TargetCF + (MoveDirection * Euleon.Silent.PredictionVelocity)
				elseif DetectedUnderGround then
					EndPoint = TargetCF + (Vector3.new(TargetVel.X, 0, TargetVel.Z) * Euleon.Silent.PredictionVelocity)
				elseif DetectedFreeFall then
					EndPoint = TargetCF + (Vector3.new(TargetVel.X, (TargetVel.Y * 0.5), TargetVel.Z) * Euleon.Silent.PredictionVelocity)
				elseif Euleon.Silent.PredictMovement then
					EndPoint = TargetCF + (Vector3.new(TargetVel.X, (TargetVel.Y * 0.5), TargetVel.Z) * Euleon.Silent.PredictionVelocity)
				else
					EndPoint = TargetCF
				end
				if Euleon.Silent.Humanize then
					local HumanizeValue = Euleon.Silent.HumanizeValue 
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
	if Euleon.Silent.Enabled and Script.Functions.Alive(SilentTarget) then
		if Euleon.Silent.UseAirPart then
			if SilentTarget.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall then
				Euleon.Silent.HitPart.Part = Euleon.Silent.AirPart
			else
				Euleon.Silent.HitPart.Part= OldSilentAimPart
			end
		end
		if Euleon.Silent.TriggerBot then
			mouse1click()
		end
	end
	if Euleon.Silent.AutoPrediction then
		local ping = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
		if ping < 10 then
			Euleon.Silent.PredictionVelocity = 0.07
		elseif ping < 20 then
			Euleon.Silent.PredictionVelocity = 0.155
		elseif ping < 30 then
			Euleon.Silent.PredictionVelocity = 0.132
		elseif ping < 40 then
			Euleon.Silent.PredictionVelocity = 0.136
		elseif ping < 50 then
			Euleon.Silent.PredictionVelocity = 0.130
		elseif ping < 60 then
			Euleon.Silent.PredictionVelocity = 0.136
		elseif ping < 70 then
			Euleon.Silent.PredictionVelocity = 0.138
		elseif ping < 80 then
			Euleon.Silent.PredictionVelocity = 0.138
		elseif ping < 90 then
			Euleon.Silent.PredictionVelocity = 0.146
		elseif ping < 100 then
			Euleon.Silent.PredictionVelocity = 0.14322
		elseif ping < 110 then
			Euleon.Silent.PredictionVelocity = 0.146
		elseif ping < 120 then
			Euleon.Silent.PredictionVelocity = 0.149
		elseif ping < 130 then
			Euleon.Silent.PredictionVelocity = 0.151
		elseif ping < 140 then
			Euleon.Silent.PredictionVelocity = 0.1223333
		elseif ping < 150 then
			Euleon.Silent.PredictionVelocity = 0.15
		elseif ping < 160 then
			Euleon.Silent.PredictionVelocity = 0.16
		elseif ping < 170 then
			Euleon.Silent.PredictionVelocity = 0.1923111
		elseif ping < 180 then
			Euleon.Silent.PredictionVelocity = 0.19284
		elseif ping > 180 then
			Euleon.Silent.PredictionVelocity = 0.166547
		end
	end
end

if SilentTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then

    getgenv().Valve.Silent.PredictionVelocity = getgenv().Valve.Silent.PredictionVelocityY
end

-- // The AimAssist Mouse Dragging/Check Functions
Script.Functions.MouseChanger = function()
	if Euleon.AimAssist.Enabled and Script.Functions.Alive(AimTarget) and Players[tostring(AimTarget)].Character:FindFirstChild(Euleon.AimAssist.HitPart.Part) and Script.Functions.OnScreen(Players[tostring(AimTarget)].Character[Euleon.AimAssist.HitPart.Part]) then
		local EndPosition = nil
		local TargetPos = Players[tostring(AimTarget)].Character[Euleon.AimAssist.HitPart.Part].Position
		local TargetVel = Players[tostring(AimTarget)].Character[Euleon.AimAssist.HitPart.Part].Velocity
		local TargetMov = Players[tostring(AimTarget)].Character.Humanoid.MoveDirection

		if Euleon.Main.Resolver.AutoResolve then
			local Magnitude = TargetVel.magnitude
			local Magnitude2 = TargetMov.magnitude
			if Magnitude > Euleon.Main.Resolver.MaxVelocity then
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
		if Euleon.Main.Resolver.Enabled then 
			if TargetVel.Y < Euleon.Main.Resolver.MinVelocity then            
				DetectedUnderGroundV2 = true
			else
				DetectedUnderGroundV2 = false
			end
		else
			DetectedUnderGroundV2 = false
		end

		if Script.Functions.Alive(Client) then
			if Euleon.Both.KOCheck then
				if Client.Character.Humanoid.health < 4 then
					AimTarget = nil
					IsTargetting = false
					return
				end
			end
			if Euleon.AimAssistFov.Disable_Outside_Of_Circle then
				local Magnitude = Script.Functions.GetMagnitudeFromMouse(AimTarget.Character.HumanoidRootPart)
				if Script.Drawing.AimAssistCircle.Radius < Magnitude then
					AimTarget = nil
					IsTargetting = false
					return
				end
			end
		end

		if Euleon.Both.GrabbedCheckAndKnockedCheck and AimTarget.Character:FindFirstChild("BodyEffects") then 
			local KoCheck = AimTarget.Character.BodyEffects:FindFirstChild("K.O").Value
			local Grabbed = AimTarget.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
			if KoCheck or Grabbed then
				AimTarget = nil
				IsTargetting = false
				return
			end
		end
		if Euleon.Both.KnockedCheck then
			if AimTarget.Character.Humanoid.health < 4 then
				AimTarget = nil
				IsTargetting = false
				return
			end
		end

		if DetectedDesyncV2 and Euleon.AimAssist.PredictMovement then
			local MoveDirection = TargetMov * 16
			EndPosition = Camera:WorldToScreenPoint(TargetPos + (MoveDirection * Euleon.AimAssist.PredictionVelocity))
		elseif DetectedUnderGroundV2 and Euleon.AimAssist.PredictMovement then
			EndPosition = Camera:WorldToScreenPoint(TargetPos + (Vector3.new(TargetVel.X, 0, TargetVel.Z) * Euleon.AimAssist.PredictionVelocity))
		elseif Euleon.AimAssist.PredictMovement then
			if Euleon.AimAssist.HitPart.UseShake and Script.Functions.Alive(Client) then
				local Shake = Euleon.AimAssist.HitPart.ShakeValue / 100
				local Mag = math.ceil((TargetPos - Client.Character.HumanoidRootPart.Position).Magnitude)
				EndPosition = Camera:WorldToScreenPoint(TargetPos + (TargetVel * Euleon.AimAssist.PredictionVelocity) + Script.Functions.RandomVec(Mag * Shake, 0.1))
			else
				EndPosition = Camera:WorldToScreenPoint(TargetPos + (TargetVel * Euleon.AimAssist.PredictionVelocity))
			end
		else
			if Euleon.AimAssist.HitPart.UseShake and Script.Functions.Alive(Client) then
				local Shake = Euleon.AimAssist.HitPart.ShakeValue / 100
				local Mag = math.ceil((TargetPos - Client.Character.HumanoidRootPart.Position).Magnitude)
				EndPosition = Camera:WorldToScreenPoint(TargetPos + Script.Functions.RandomVec(Mag * Shake, 0.1))
			else
				EndPosition = Camera:WorldToScreenPoint(TargetPos)
			end
		end

		if EndPosition ~= nil then
			local InCrementX = (EndPosition.X - Mouse.X) * Euleon.AimAssist.HitPart.Smoothness_X
			local InCrementY = (EndPosition.Y - Mouse.Y) * Euleon.AimAssist.HitPart.Smoothness_Y
			mousemoverel(InCrementX, InCrementY)
		end
	end
end

--// Update Size/Position Of Circle
Script.Functions.UpdateFOV = function()
	if (not Script.Drawing.SilentCircle and not Script.Drawing.AimAssistCircle) then
		return Script.Drawing.SilentCircle and Script.Drawing.AimAssistCircle
	end

	Script.Drawing.AimAssistCircle.Visible = Euleon.AimAssistFov.Visible
	Script.Drawing.AimAssistCircle.Filled = Euleon.AimAssistFov.Filled
	Script.Drawing.AimAssistCircle.Color = Euleon.AimAssistFov.Color
	Script.Drawing.AimAssistCircle.Transparency = Euleon.AimAssistFov.Transparency
	Script.Drawing.AimAssistCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiS:GetGuiInset().Y)
	Script.Drawing.AimAssistCircle.Radius = Euleon.AimAssistFov.Radius * 3

	Script.Drawing.SilentCircle.Visible = Euleon.SilentFov.Visible
	Script.Drawing.SilentCircle.Color = Euleon.SilentFov.Color
	Script.Drawing.SilentCircle.Filled = Euleon.SilentFov.Filled
	Script.Drawing.SilentCircle.Transparency = Euleon.SilentFov.Transparency
	Script.Drawing.SilentCircle.Position = Vector2.new(Mouse.X, Mouse.Y + GuiS:GetGuiInset().Y)
	Script.Drawing.SilentCircle.Radius = Euleon.SilentFov.Radius * 3

if Euleon.GunFOV.Enabled then
		local CurrentGun = Script.Functions.GetCurrentWeaponName()
		if Euleon.GunFOV.Enabled then
			local WeaponSettings = EuleonGunList[CurrentGun]
			if WeaponSettings ~= nil then
				Euleon.SilentFov.Radius = WeaponSettings.FOV
			end
		end
    end
end

-- // Updates Esp Posistions
Script.Functions.UpdateEsp = function()
	for i,v in pairs(Script.EspPlayers) do
		if Euleon.Esp.Enabled and i ~= Client and i.Character and i.Character:FindFirstChild("Humanoid") and i.Character:FindFirstChild("HumanoidRootPart") and i.Character:FindFirstChild("Head") then
			local Hum = i.Character.Humanoid
			local Hrp = i.Character.HumanoidRootPart

			local Vector, OnScreen = Camera:WorldToViewportPoint(i.Character.HumanoidRootPart.Position)
			local Size = (Camera:WorldToViewportPoint(Hrp.Position - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(Hrp.Position + Vector3.new(0, 2.6, 0)).Y) / 2
			local BoxSize = Vector2.new(math.floor(Size * 1.5), math.floor(Size * 1.9))
			local BoxPos = Vector2.new(math.floor(Vector.X - Size * 1.5 / 2), math.floor(Vector.Y - Size * 1.6 / 2))
			local BottomOffset = BoxSize.Y + BoxPos.Y + 1

			if OnScreen then
				if Euleon.Esp.Name.Enabled then
					v.Name.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 16)
					v.Name.Outline = Euleon.Esp.Name.OutLine
					v.Name.Text = tostring(i)
					v.Name.Color = Euleon.Esp.Name.Color
					v.Name.OutlineColor = Color3.fromRGB(0, 0, 0)
					v.Name.Font = 0
					v.Name.Size = 16

					v.Name.Visible = true
				else
					v.Name.Visible = false
				end
				if Euleon.Esp.Distance.Enabled and Client.Character and Client.Character:FindFirstChild("HumanoidRootPart") then
					v.Distance.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BottomOffset)
					v.Distance.Outline = Euleon.Esp.Distance.OutLine
					v.Distance.Text = "[" .. math.floor((Hrp.Position - Client.Character.HumanoidRootPart.Position).Magnitude) .. "m]"
					v.Distance.Color = Euleon.Esp.Distance.Color
					v.Distance.OutlineColor = Color3.fromRGB(0, 0, 0)
					BottomOffset = BottomOffset + 15

					v.Distance.Font = 0
					v.Distance.Size = 16

					v.Distance.Visible = true
				else
					v.Distance.Visible = false
				end
				if Euleon.Esp.Box.Enabled then
					v.BoxOutline.Size = BoxSize
					v.BoxOutline.Position = BoxPos
					v.BoxOutline.Visible = Euleon.Esp.Box.OutLine
					v.BoxOutline.Color = Color3.fromRGB(0, 0, 0)

					v.Box.Size = BoxSize
					v.Box.Position = BoxPos
					v.Box.Color = Euleon.Esp.Box.Color
					v.Box.Visible = true
				else
					v.BoxOutline.Visible = false
					v.Box.Visible = false
				end
				if Euleon.Esp.HealthBar.Enabled then
					v.HealthBar.From = Vector2.new((BoxPos.X - 5), BoxPos.Y + BoxSize.Y)
					v.HealthBar.To = Vector2.new(v.HealthBar.From.X, v.HealthBar.From.Y - (Hum.Health / Hum.MaxHealth) * BoxSize.Y)
					v.HealthBar.Color = Euleon.Esp.HealthBar.Color
					v.HealthBar.Visible = true

					v.HealthBarOutline.From = Vector2.new(v.HealthBar.From.X, BoxPos.Y + BoxSize.Y + 1)
					v.HealthBarOutline.To = Vector2.new(v.HealthBar.From.X, (v.HealthBar.From.Y - 1 * BoxSize.Y) -1)
					v.HealthBarOutline.Color = Color3.fromRGB(0, 0, 0)
					v.HealthBarOutline.Visible = Euleon.Esp.HealthBar.OutLine
				else
					v.HealthBarOutline.Visible = false
					v.healthBar.Visible = false
				end
				if Euleon.Esp.HealthText.Enabled then
					v.HealthText.Text = tostring(math.floor((Hum.Health / Hum.MaxHealth) * 100 + 0.5))
					v.HealthText.Position = Vector2.new((BoxPos.X - 20), (BoxPos.Y + BoxSize.Y - 1 * BoxSize.Y) -1)
					v.HealthText.Color = Euleon.Esp.HealthText.Color
					v.HealthText.OutlineColor = Color3.fromRGB(0, 0, 0)
					v.HealthText.Outline = Euleon.Esp.HealthText.OutLine

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
	if Euleon.Silent.Enabled and Euleon.Silent.HitPart.HitPartMode == "Nearest Point" and Script.Functions.Alive(SilentTarget) and Players[tostring(SilentTarget)].Character:FindFirstChild(Euleon.Silent.HitPart.Part) then
		local ClosestPoint = Script.Functions.GetClosestPointOfPart(Players[tostring(SilentTarget)].Character[Euleon.Silent.HitPart.Part])
		ClosestPointCF = CFrame.new(ClosestPoint.X, ClosestPoint.Y, ClosestPoint.Z)
	end
	if Euleon.AimAssist.Enabled and Script.Functions.Alive(AimTarget) and Euleon.Silent.HitPart.HitPartMode == "Nearest Part" and Script.Functions.Alive(SilentTarget) then
		local currentpart = tostring(Script.Functions.GetClosestBodyPart(AimTarget.Character))
		if Euleon.AimAssist.HitPart.NearestPart then
			Euleon.AimAssist.HitPart.Part = currentpart
		end
		if Euleon.Silent.HitPart.HitPartMode == "Nearest Part" then
			Euleon.Silent.HitPart.Part = currentpart
			OldSilentAimPart = Euleon.Silent.HitPart.Part
		end
		return
	end
	if Euleon.AimAssist.Enabled and Euleon.AimAssist.HitPart.NearestPart and Script.Functions.Alive(AimTarget) then
		Euleon.AimAssist.HitPart.Part = tostring(Script.Functions.GetClosestBodyPart(AimTarget.Character))
	end
	if Euleon.Silent.Enabled and Euleon.Silent.HitPart.HitPartMode == "Nearest Part"and Script.Functions.Alive(SilentTarget) then
		Euleon.Silent.HitPart.Part = tostring(Script.Functions.GetClosestBodyPart(SilentTarget.Character))
		OldSilentAimPart = Euleon.Silent.HitPart.Part
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

task.spawn(function()
    pcall(function()
        repeat wait() until game.CoreGui.RobloxGui:FindFirstChild("PerformanceStats") 
        for __, v in pairs(game.CoreGui.RobloxGui.PerformanceStats:GetChildren()) do
            if v.Name == "PS_Button" and v.StatsMiniTextPanelClass.TitleLabel.Text == "Mem" then
                Memory = v.StatsMiniTextPanelClass.ValueLabel
            end
        end
        
        Memory:GetPropertyChangedSignal("Text"):Connect(function()
            if Euleon.Main.MemorySpoof then 
                local random1 = math.random(Euleon.Main.MemorySpoof.MinMemory, Euleon.Main.MemorySpoof.MaxMemory)
                local rand1 = math.random(0,9)
                local rand2 = math.random(0,9)
                Memory.Text = "".. random1 .. "." .. rand1 .. rand2.. " MB"
            end
        end)
    end)
end)