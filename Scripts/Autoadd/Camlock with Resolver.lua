-- [ Variables (Global Environmnet) ]

--// Aimlock Settings
getgenv().AimPart = "HumanoidRootPart" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
getgenv().AimlockToggleKey = "Y" -- Toggles Aimbot On/Off
getgenv().AimRadius = 50 -- How far away from someones character you want to lock on at

--// Prediction
getgenv().PredictionVelocity =  0.11934 -- (8.1)
getgenv().AimKey = Enum.KeyCode.X
getgenv().Hold = false -- Rather or not you have to hold AimKey for it to lock
getgenv().AntiBypass = false
getgenv().BypassKey = Enum.KeyCode.Q

--// Whitelist
getgenv().CrewWhitelist = {12039890} -- Won't lock into people who are in code

--// Anti-Lock Settings
getgenv().AntiLock = Enum.KeyCode.C
getgenv().Velocity = Vector3.new(200,0,200)


--// Constants
local Players, UIS, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
local Heartbeat, RStepped, Stepped = RService.Heartbeat, RService.RenderStepped, RService.Stepped
local RVelocity, YVelocity = nil, 0.1
local Character = Client.Character
local RootPart  = Character:FindFirstChild("HumanoidRootPart")

--// Bools / Targets
local LockEnabled = false
local Aimlock, MousePressed = true, false;
local AimlockTarget;
local AntiEnabled = false
local PreviousPosition;


-- // Functions to get target
TargetFunctions = {

	WorldToViewportPoint = function(P)
		return Camera:WorldToViewportPoint(P)
	end,

	WorldToScreenPoint = function(P)
		return Camera.WorldToScreenPoint(Camera, P)
	end,

	GetObscuringObjects = function(T)
		if T and T:FindFirstChild(AimPart) and Client and Client.Character:FindFirstChild("Head") then
			local RayPos = workspace:FindPartOnRay(RNew(
				T[AimPart].Position, Client.Character.Head.Position)
			)
			if RayPos then return RayPos:IsDescendantOf(T) end
		end
	end,

	checkPlayer = function(plr)
		if plr and plr.Character then
			local playerCharacter = plr.Character
			local isKO = (playerCharacter.BodyEffects["K.O"].Value == false or playerCharacter:FindFirstChild("GRABBING_CONSTRAINT") ~= nil)
			local NotYou = (playerCharacter.Name ~= Client.Name)
			local foundCrew;
			local dFolder = plr:FindFirstChild("DataFolder")
			local iFolder = dFolder:FindFirstChild("Information")
			local crew = iFolder:FindFirstChild("Crew")
			for i,v in pairs(CrewWhitelist) do
				if dFolder and iFolder and crew then
					foundCrew = (crew.Value ~= tostring(v))
					print(foundCrew, " Data")
				else
					foundCrew = true
				end
			end
			print(isKO, NotYou, foundCrew, " after list")
			return (isKO and NotYou and foundCrew)
		end
		return false
	end,

	GetNearestTarget = function()
		-- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
		local players = {}
		local PLAYER_HOLD  = {}
		local DISTANCES = {}
		for i, v in pairs(Players:GetPlayers()) do
			if v ~= Client then
				table.insert(players, v)
			end
		end

		for i, v in pairs(players) do
			if v.Character ~= nil then
				local AIM = v.Character:FindFirstChild("Head")
					local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
					local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
					local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
					local DIFF = math.floor((POS - AIM.Position).magnitude)
					PLAYER_HOLD[v.Name .. i] = {}
					PLAYER_HOLD[v.Name .. i].dist= DISTANCE
					PLAYER_HOLD[v.Name .. i].plr = v
					PLAYER_HOLD[v.Name .. i].diff = DIFF
					table.insert(DISTANCES, DIFF)
			end
		end

		if unpack(DISTANCES) == nil then
			return nil
		end

		local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
		if L_DISTANCE > getgenv().AimRadius then
			return nil
		end

		for i, v in pairs(PLAYER_HOLD) do
			if v.diff == L_DISTANCE then
				return v.plr
			end
		end
		return nil
	end

}

InputFunctions = {

	HandleAimToggle = function()
		if not Hold then
			if LockEnabled then
				LockEnabled = false
				if AimlockTarget ~= nil then AimlockTarget = nil end
				if MousePressed ~= false then MousePressed = false end
			else
				LockEnabled = true
				pcall(function()
					if MousePressed ~= true then MousePressed = true end
					local Target;Target = TargetFunctions.GetNearestTarget()
					if Target ~= nil then
						AimlockTarget = Target
					end
				end)
			end
		elseif Hold then
			pcall(function()
				if MousePressed ~= true then MousePressed = true end
				local Target;Target = TargetFunctions.GetNearestTarget()
				if Target ~= nil then
					AimlockTarget = Target
				end
			end)
		end
	end,

	HandleAntiToggle = function()
		if AntiEnabled then
			AntiEnabled = false
		else
			AntiEnabled = true
			task.spawn(function()
				print("Enabled")
				while AntiEnabled do
					--// this a dumb check asnilsadsa
					if (not RootPart) or (not RootPart.Parent) or (not RootPart.Parent.Parent) then
						repeat task.wait() RootPart = Character:FindFirstChild("HumanoidRootPart") until RootPart ~= nil
					else
						RVelocity = RootPart.Velocity

						RootPart.Velocity = type(Velocity) == "vector" and Velocity or Velocity(RVelocity)

						RStepped:wait()

						RootPart.Velocity = RVelocity
					end
					Heartbeat:wait()
				end
			end)
		end
	end,

	InputType = function(input)
		if input.KeyCode == AimKey then
			InputFunctions.HandleAimToggle()
		elseif input.KeyCode == Enum.KeyCode[AimlockToggleKey] then
			Aimlock = not Aimlock
		elseif input.KeyCode == AntiLock then
			InputFunctions.HandleAntiToggle()
		elseif input.KeyCode == BypassKey then
			if AntiBypass then
				AntiBypass = false
			else
				AntiBypass = true
			end
		end
	end,
}

HeartBeatFunctions = {
	Checks = function()
		if Aimlock == true and MousePressed == true then
			if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) then
				if TargetFunctions.checkPlayer(AimlockTarget) then
					return true
				end
			end
		end
	end,

	CalculateVelocity = function(Before, After, deltaTime)
		-- // Vars
		local Displacement = (After - Before)
		local Velocity = Displacement / deltaTime

		-- // Return
		return Velocity
	end,

	lockOn = function(Target, Velocity)
		Camera.CFrame = CF(Camera.CFrame.p, Target.Position + Velocity*PredictionVelocity)
	end,
}

UIS.InputBegan:Connect(function(input, gp)
	if not (UIS:GetFocusedTextBox()) then
		InputFunctions.InputType(input)
	end
end)

UIS.InputEnded:Connect(function(input, gp)
	if not (UIS:GetFocusedTextBox()) then
		if not Hold then return end
		if input.KeyCode == AimKey then
			if AimlockTarget ~= nil then AimlockTarget = nil end
			if MousePressed ~= false then
				MousePressed = false
			end
		end
	end
end)

RService.Heartbeat:Connect(function(delta)
	if HeartBeatFunctions.Checks() then
		local Aim_Part = AimlockTarget.Character[AimPart]
		if (not PreviousPosition) then
			PreviousPosition = Aim_Part.Position
		end
		if AntiBypass then
			local Velocity = HeartBeatFunctions.CalculateVelocity(PreviousPosition, Aim_Part.Position, delta)
			HeartBeatFunctions.lockOn(Aim_Part, Velocity)
		else
			local Velocity = Aim_Part.Velocity
			HeartBeatFunctions.lockOn(Aim_Part, Velocity)
		end
		PreviousPosition = Aim_Part.Position
	else
		PreviousPosition = nil
	end
end)