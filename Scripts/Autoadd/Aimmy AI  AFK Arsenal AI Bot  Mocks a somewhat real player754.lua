-- Bot Settings
getgenv().AimSens = 1/35; -- Aimbot sens
getgenv().LookSens = 1/60; -- Aim while walking sens
getgenv().PreAimDis = 45; -- if within 55 Studs then preaim
getgenv().KnifeOutDis = 85; -- if within 85 Studs then swap back to gun
getgenv().ReloadDis = 30; -- if over 50 Studs away then reload
getgenv().RecalDis = 15; -- if player moves over this many studs then recalculate path to them

-- Services
local PathfindingService = game:GetService("PathfindingService");
local Players = game:GetService("Players");
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local RunService = game:GetService("RunService");
local TweenService = game:GetService('TweenService');
local VIM = game:GetService("VirtualInputManager");
local UserInputService = game:GetService("UserInputService");

-- Local Plr
local Plr = Players.LocalPlayer;
local Char = Plr.Character or Plr.CharacterAdded:Wait();
local Head = Char:WaitForChild("Head", 1337);
local Root = Char:WaitForChild("HumanoidRootPart", 1337);
local Humanoid = Char:WaitForChild("Humanoid", 1337);

-- GUI Stuff
local MainMenu = Plr.PlayerGui:WaitForChild("Menew", 1337);
local PlayButton = MainMenu:WaitForChild("Main", 1337).Play;
local MainHUD = Plr.PlayerGui:WaitForChild("GUI", 1337);
local TeamSelection = MainHUD:WaitForChild("TeamSelection", 1337);
local Events = ReplicatedStorage:WaitForChild("Events", 1337);

-- Team/Spawn Stuff
local buttonColors = {"Blu", "Rd", "Ylw", "Grn"};

-- error bypass
for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do v:Disable() end

-- Simple ESP
loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/SimpleESP.lua", true))()

-- Current Path
local currpath = PathfindingService:CreatePath({["WaypointSpacing"] = 5});

-- Aimbot Vars
local Camera = workspace.CurrentCamera;

-- Mouse
local Mouse = Plr:GetMouse();

-- Map Spawns
local Map = workspace:WaitForChild("Map", 1337)
local Spawns = workspace:WaitForChild("Map", 1337):WaitForChild("Spawns", 1337)

-- Ignore
local RayIgnore = workspace:WaitForChild("Ray_Ignore", 1337)
local MapIgnore = Map:WaitForChild("Ignore", 1337)

-- Temp Vars
local CurrentEquipped = "Gun";
local ClosestPlr;
local IsAiming;
local InitialPosition;
local WalkToObject;

-- Get Closest plr
local function getClosestPlr()
	local nearestPlayer, nearestDistance
	for _, player in pairs(Players:GetPlayers()) do
		if player.TeamColor ~= Plr.TeamColor and player ~= Plr then
			local character = player.Character
			if character then
				local nroot = character:FindFirstChild("HumanoidRootPart")
				if nroot and player:FindFirstChild("Status").Alive.Value then
					if character.Humanoid and (character.Humanoid:GetState() ~= Enum.HumanoidStateType.Climbing and character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall) then
						local distance = Plr:DistanceFromCharacter(nroot.Position)
						if (nearestDistance and distance >= nearestDistance) then continue end
						nearestDistance = distance
						nearestPlayer = player
					end
				end
			end
		end
	end
	return nearestPlayer
end

-- Wallcheck / Visible Check
local function IsVisible(target, ignorelist)
	local obsParts = Camera:GetPartsObscuringTarget({target}, ignorelist);

	if #obsParts == 0 then
		return true;
	else
		return false;
	end
end

-- Aimbot/Triggerbot
local function Aimlock()
	-- Temp Holder
	local aimpart = nil;

	-- Detect first visible part
	if ClosestPlr and ClosestPlr.Character then
		for i,v in ipairs(ClosestPlr.Character:GetChildren()) do
			if v and v:IsA("Part") then -- is part
				if IsVisible(v.Position,{Camera,Char,ClosestPlr.Character,RayIgnore,MapIgnore}) then -- is visible
					aimpart = v;
					break;
				end
			end
		end
	end

	-- If visible aim and shoot
	if aimpart then
		IsAiming = true;
		-- Aim at player
		local tcamcframe = Camera.CFrame;
		for i = 0, 1, AimSens do
			if not aimpart then break; end
			if (Head.Position.Y + aimpart.Position.Y) < 0 then break; end -- Stop bot from aiming at the ground
			Camera.CFrame = tcamcframe:Lerp(CFrame.new(Camera.CFrame.p, aimpart.Position), i)
			task.wait(0)
		end

		-- Mouse down and back up
		VIM:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, true, game, 1)
		task.wait(0.25)
		VIM:SendMouseButtonEvent(Mouse.X, Mouse.Y, 0, false, game, 1)
	end

	IsAiming = false;
end

-- Auto Spawn
local function AutoSpawn()
    if MainMenu.Enabled then
        -- Fire play button
        firesignal(PlayButton.MouseButton1Down);

        -- Wait for GUI to change
        repeat task.wait(0.5) until TeamSelection.Visible;

        -- Buttons check and auto team select
        if TeamSelection:FindFirstChild("Buttons").Visible then -- normal
            for i, teamButton in pairs(TeamSelection:FindFirstChild("Buttons"):GetChildren()) do
                if table.find(buttonColors, teamButton.Name) and not teamButton.lock.Visible then
                    firesignal(teamButton.MouseButton1Down);
                    break;
                end
        end
        elseif TeamSelection:FindFirstChild("ButtonsFFA").Visible then -- FFA
            firesignal(TeamSelection:FindFirstChild("ButtonsFFA").FFA.MouseButton1Down);
        end
    end
end

-- Pathfinding to Plr function
WalkToObject = function()
	if ClosestPlr and ClosestPlr.Character then
		-- RootPart
		local CRoot = ClosestPlr.Character:FindFirstChild("HumanoidRootPart")
		if CRoot then
			-- Get start position
			InitialPosition = CRoot.Position;
			
			-- Calculate path
			local success, errorMessage = pcall(function()
				currpath:ComputeAsync(Root.Position, CRoot.Position)
			end)
			
			if success and currpath.Status == Enum.PathStatus.Success then
				local waypoints = currpath:GetWaypoints();

				-- Navigate to each waypoint
				for i, wap in pairs(waypoints) do
					-- Catcher
					if i == 1 then continue end -- skip first waypoint
					if not ClosestPlr or not ClosestPlr.Character or ClosestPlr ~= getClosestPlr() or not ClosestPlr:FindFirstChild("Status").Alive.Value or not Plr:FindFirstChild("Status").Alive.Value then
						ClosestPlr = nil;
						return;
					elseif (InitialPosition - CRoot.Position).Magnitude > RecalDis  then -- moved too far from start
						WalkToObject(); -- restart
						return;
					end

					-- Detect if needing to jump
					if wap.Action == Enum.PathWaypointAction.Jump and Humanoid and Humanoid.Jump == false then
						Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					end

					-- Aim while walking (either path or plr)
					task.spawn(function()
						local primary = ClosestPlr.Character.PrimaryPart.Position;
						local studs = Plr:DistanceFromCharacter(primary)

						local tcamcframe = Camera.CFrame;
						for i = 0, 1, LookSens do
							if IsAiming then break; end
							if primary and studs then
								-- If close aim at player
								if math.floor(studs + 0.5) < PreAimDis then
									if ClosestPlr and ClosestPlr.Character then
										local CChar = ClosestPlr.Character;
										if Char:FindFirstChild("Head") and CChar and CChar:FindFirstChild("Head") then
											local MiddleAim = (Vector3.new(wap.Position.X,Char.Head.Position.Y,wap.Position.Z) + Vector3.new(CChar.Head.Position.X,CChar.Head.Position.Y,CChar.Head.Position.Z))/2;
											Camera.CFrame = tcamcframe:Lerp(CFrame.new(Camera.CFrame.p, MiddleAim), i);
										end
									end
								else -- else aim at waypoint
									local mixedaim = (Camera.CFrame.p.Y + Char.Head.Position.Y)/2;
									Camera.CFrame = tcamcframe:Lerp(CFrame.new(Camera.CFrame.p, Vector3.new(wap.Position.X,mixedaim,wap.Position.Z)), i);
								end
							end
							task.wait(0)
						end
					end)

					-- Auto Knife out (for faster running and realism)
					task.spawn(function()
						local primary = ClosestPlr.Character.PrimaryPart.Position;
						local studs = Plr:DistanceFromCharacter(primary)

						if primary and studs then
							local arms = Camera:FindFirstChild("Arms");
							if arms then
								arms = arms:FindFirstChild("Real");
								if math.floor(studs + 0.5) > KnifeOutDis and not IsVisible(primary, {Camera,Char,ClosestPlr.Character,RayIgnore,MapIgnore}) then
									if arms.Value ~= "Knife" and CurrentEquipped == "Gun" then
										VIM:SendKeyEvent(true, Enum.KeyCode.Q, false, game);
										CurrentEquipped = "Knife";
									end
								elseif arms.Value == "Knife" and CurrentEquipped ~= "Gun" then
									VIM:SendKeyEvent(true, Enum.KeyCode.Q, false, game);
									CurrentEquipped = "Gun";
								end
							end
						end
					end)

					-- Move to Waypoint
					if Humanoid then
						Humanoid:MoveTo(wap.Position);
						Humanoid.MoveToFinished:Wait(); -- Wait for us to get to Waypoint
					end
				end
			else
				-- Can't find path, move to a random spawn.
				warn("[AimmyAI] - Unable to calculate path!");
				WalkToObject(); -- restart
			end
		end
	end
end

-- Walk to the Plr
local function WalkToPlr()
	-- Get Closest Plr
	ClosestPlr = getClosestPlr();

	-- Walk to Plr
	if ClosestPlr and ClosestPlr.Character and ClosestPlr.Character:FindFirstChild("HumanoidRootPart") then
		if Humanoid.WalkSpeed > 0 and Plr:FindFirstChild("Status").Alive.Value and ClosestPlr:FindFirstChild("Status").Alive.Value then
			--Create ESP
			local studs = Plr:DistanceFromCharacter(ClosestPlr.Character.PrimaryPart.Position)
			SESP_Create(ClosestPlr.Character.Head, ClosestPlr.Name, "TempTrack", Color3.new(1, 0, 0), math.floor(studs + 0.5));

			-- Auto Reload (if next plr is far enough and out of site)
			if math.floor(studs + 0.5) > ReloadDis and not IsVisible(ClosestPlr.Character.HumanoidRootPart.Position, {Camera,Char,ClosestPlr.Character,RayIgnore,MapIgnore}) then
				VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game)
			end

			-- AI Walk to Plr
			WalkToObject(ClosestPlr.Character.HumanoidRootPart);
		end
	end
end

-- Loop Auto Spawn
task.spawn(function()
	while task.wait(0.5) do
		AutoSpawn();
	end
end)

-- Loop Pathfind
task.spawn(function()
	while task.wait() do
		if (ClosestPlr == nil or ClosestPlr ~= getClosestPlr()) then
			SESP_Clear("TempTrack");
			WalkToPlr();
		end
	end
end)

-- Loop Aimlock
task.spawn(function()
	while task.wait() do
		if ClosestPlr ~= nil and Camera then
			if Plr:FindFirstChild("Status").Alive.Value and Humanoid.WalkSpeed > 0 then
				Aimlock();
			end
		end
	end
end)


-- Detect Stuck Bot
local stuckamt = 0;
task.spawn(function()
	while task.wait(0.5) do
		if Humanoid then
			if Humanoid.MoveDirection.Magnitude == 0 then
				if stuckamt == 5 then
					-- Double jump
					Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					warn("[AimmyAI] - Attempting to jump out of stuck position..");
					stuckamt = 0;
				elseif stuckamt >= 10 then
					SESP_Clear("TempTrack");
					WalkToPlr();
					warn("[AimmyAI] - Max stuck count, recalculating..");
					stuckamt = 0;
				end
			end
		end
	end
end)