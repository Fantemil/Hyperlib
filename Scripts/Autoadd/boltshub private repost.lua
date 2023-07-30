--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
Client = {
	Modules = {
		ClientEnvoirment,
		ClientMain,
		CreateProj,
		CretTrail,
		ModsShit
	},
	Toggles = {
		BHop = false,
		Infammo = false,
		Automtatic = false,
		FireRate = false,
		NoRecoil = false,
		NoSpread = false,
		WallBang = false,
		InstantRespawn = false,
		AntiAim = false,
		AutoAmmo = false,
		AutoHealth = false,
		Trac = false,
		Sight = false,
		FOV = false,
		Golden = true,
		Visiblecheck = false,
		SilentAim = false,

	},
	Values = {
		JumpPower = 50,
		LookMeth = 'Look Up',                                                                                                                                                                                                                                                 
		Test = '',
		FOV = 150,
		ChatMsg = 'Bolts Hub v6 Winning',
		AimPart = 'Head'


	}
}



local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

local s = VLib:Window("Bolts Hub v6 Private", "Cracked by Inno ez", "B")

local Combat = s:Tab("Combat")
local Gunmods = s:Tab("Gun Mods")
local Player = s:Tab("Local Player")
local ESP = s:Tab("Visuals")
local FE = s:Tab("FE/Trolling/Funny")
local NFE = s:Tab("Not FE")
local CombatW = s:Tab("Frame Youtubers")
local Credits = s:Tab("Credits & Info")

local CurrentCamera = workspace.CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
	local MaxDist, Closest = math.huge
	for i,v in pairs(Players.GetPlayers(Players)) do
		local Head = v.Character.FindFirstChild(v.Character, "Head")
		if Head then 
			local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
			if Vis then
				local MousePos, TheirPos = Vector2.new(Mouse.X, Mouse.Y), Vector2.new(Pos.X, Pos.Y)
				local Dist = (TheirPos - MousePos).Magnitude
				if Dist < MaxDist and Dist <= Client.Values.FOV then
					MaxDist = Dist
					Closest = v
				end
			end
		end

	end
	return Closest
end

function GetAimPart()
	if Client.Values.AimPart == 'Head' then
		return 'Head'
	end
	if Client.Values.AimPart == 'LowerTorso' then
		return 'LowerTorso'
	end
	if Client.Values.AimPart == 'Random' then
		if math.random(1,4) == 1 then
			return 'Head'
		else
			return 'LowerTorso'
		end
	end
end

local mt = getrawmetatable(game)
local namecallold = mt.__namecall
local index = mt.__index
setreadonly(mt, false)
mt.__namecall = newcclosure(function(self, ...)
	local Args = {...}
	NamecallMethod = getnamecallmethod()
	if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" and Client.Toggles.WallBang then
		table.insert(Args[2], workspace.Map)
	end
	if NamecallMethod == "FindPartOnRayWithIgnoreList" and not checkcaller() and Client.Toggles.SilentAim then
		local CP = ClosestPlayer()
		if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, GetAimPart()) then
			Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character[GetAimPart()].Position - CurrentCamera.CFrame.Position).Unit * 1000)
			return namecallold(self, unpack(Args))
		end
	end
	if tostring(NamecallMethod) == "FireServer" and tostring(self) == "ControlTurn" then
		if Client.Toggles.AntiAim == true then
			if Client.Values.LookMeth == "Look Up" then
				Args[1] = 1.3962564026167
			end
			if Client.Values.LookMeth == "Look Down" then
				Args[1] = -1.5962564026167
			end
			if Client.Values.LookMeth == "Smell Your Butt" then
				Args[1] = -8.1
			end
			if Client.Values.LookMeth == "Give Your Self Top" then
				Args[1] = -3.1 --3.1
			end
			if Client.Values.LookMeth == "Torso In Legs" then
				Args[1] = -6.1;
			end
			return namecallold(self, unpack(Args))
		end
	end
	return namecallold(self, ...)
end)
setreadonly(mt, true)
local FOVCircle = Drawing.new("Circle")
FOVCircle.Thickness = 2
FOVCircle.NumSides = 460
FOVCircle.Filled = false
FOVCircle.Transparency = 0.6
FOVCircle.Radius = Client.Values.FOV
FOVCircle.Color = Color3.new(255,0,0)
game:GetService("RunService").Stepped:Connect(function()
	if Client.Toggles.FireRate == true then
		Client.Modules.ClientEnvoirment.DISABLED = false
		Client.Modules.ClientEnvoirment.DISABLED2 = false
	end
	if Client.Toggles.NoRecoil == true then
		Client.Modules.ClientEnvoirment.recoil = 0
	end
	if Client.Toggles.NoSpread == true then
		Client.Modules.ClientEnvoirment.currentspread = 0
		Client.Modules.ClientEnvoirment.spreadmodifier = 0
	end
	if Client.Toggles.AlwaysAuto == true then
		Client.Modules.ClientEnvoirment.mode = 'automatic'
	end
	if Client.Toggles.InfAmmo == true then
		debug.setupvalue(Client.Modules.ModsShit, 3, 70)
	end
	FOVCircle.Radius = Client.Values.FOV
	if Client.Toggles.FOV == true then
		FOVCircle.Visible = true
	else
		FOVCircle.Visible = false
	end
	FOVCircle.Position = game:GetService('UserInputService'):GetMouseLocation()
end)

spawn(function()
	while true do
		wait()
		if Client.Toggles.BHop == true then
			game.Players.LocalPlayer.Character.Humanoid.Jump = true
		end
		if Client.Toggles.JumpPower == true then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = Client.Values.JumpPower
		end
		if Client.Toggles.InstantRespawn == true then
			if not game.Players.LocalPlayer.Character:FindFirstChild('Spawned') and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cam") then
				if game.Players.LocalPlayer.PlayerGui.Menew.Enabled == false then
					game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
					wait()
				end
			end
		end
	end
end)

function RandomPlr()
	tempPlrs = {}
	for i,v in pairs(game.Players:GetPlayers()) do
		if v and v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Spawned") then
			table.insert(tempPlrs,v)
		end
	end
	return tempPlrs[math.random(1,#tempPlrs)]    
end
function SwitchToKnife()
	local N = game:GetService("VirtualInputManager")
	N:SendKeyEvent(true, 51, false, game)
	N:SendKeyEvent(false, 51, false, game)	
end
function KnifeKill()

	OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	local Crit = math.random() > .6 and true or false;
	Target = RandomPlr()
	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(Target.Character.Head.CFrame * CFrame.new(0,0,0))
end

Combat:Button('Kill All',function()


	local Farming = false
	local Hopped = false
	local TimeLeft = 30
	local TurnBack = 4
	local CheckTick = tick()
	local PlayerLocked
	local Back = true

	function DetectPlayer()
		local Blacklist = {workspace.CurrentCamera}
		if game:GetService("Players").LocalPlayer.Character then
			table.insert(Blacklist, game:GetService("Players").LocalPlayer.Character)
		end
		if workspace:FindFirstChild("Map") then
			table.insert(Blacklist, workspace.Map)
		end

		local RaycastParam = RaycastParams.new()
		RaycastParam.FilterType = Enum.RaycastFilterType.Blacklist
		RaycastParam.FilterDescendantsInstances = Blacklist

		local NewRay = Ray.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1.5, 0), workspace.CurrentCamera.CFrame.LookVector * 50000, RaycastParam)
		local PlayerGot

		if NewRay.Instance then
			if NewRay.Instance:IsDescendantOf(workspace) then
				if NewRay.Instance.Parent:IsA("Model") then
					if game:GetService("Players"):GetPlayerFromCharacter(NewRay.Instance.Parent) then
						PlayerGot = game:GetService("Players"):GetPlayerFromCharacter(NewRay.Instance.Parent)
					end
				elseif NewRay.Instance.Parent:IsA("Accessory") then
					if game:GetService("Players"):GetPlayerFromCharacter(NewRay.Instance.Parent.Parent) then
						PlayerGot = game:GetService("Players"):GetPlayerFromCharacter(NewRay.Instance.Parent.Parent)
					end
				end
			end

			if PlayerGot and PlayerGot.Status.Team.Value ~= game:GetService("Players").LocalPlayer.Status.Team.Value and PlayerGot.NRPBS.Health.Value > 0 then
				return true
			end
		end

		return false
	end


	function StartAutofarm()
		repeat wait() until game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == false
		if game:GetService("ReplicatedStorage").wkspc.Status.LastGamemode.Value:lower():find("hackula") then ServerHop() return end

		Farming = true
		for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Infinite Ammo" end end
		-- lol infinite ammo, didn't feel like making my own script to modify the client's local variables, so I figure why not just use hackula's built in infinite ammo?



		spawn(function()
			repeat
				if game:GetService("Players").LocalPlayer.Status.Team.Value ~= "Spectator" then
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if v ~= game:GetService("Players").LocalPlayer then
							if v.Character then
								if v.NRPBS.Health.Value > 0 then
									if v.Status.Team.Value ~= "Spectator" then
										if v.Character:FindFirstChild("Spawned") and v.Status.Team.Value ~= game:GetService("Players").LocalPlayer.Status.Team.Value then
											TimeLeft = 25
											TurnBack = 4
											Back = true
											repeat
												PlayerLocked = v
												wait(.1)
												TurnBack = TurnBack - 0.1
												if TurnBack <= 0 then
													Back = false
												elseif TurnBack <= -4 then
													break
												end
											until game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value or not v or not v.Character or not v.Character:FindFirstChild("Spawned") or v.NRPBS.Health.Value <= 0 or v.Status.Team.Value == "Spectator" or v.Status.Alive.Value == false or game:GetService("Players").LocalPlayer.Status.Team.Value == v.Status.Team.Value
										end
									end
								end
							end
						end
					end
				end
				wait(1)
			until game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == true

			wait(5)
			print("f")
		end)
	end

	spawn(function()
		while wait(3) do
			game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
			wait(1)
			game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
		end
	end)

	spawn(function()
		while wait(1) do
			if game:GetService("Players").LocalPlayer.NRPBS.Health.Value <= 0 and game:GetService("Players").LocalPlayer.Status.Team.Value ~= "Spectator" then
				game:GetService("ReplicatedStorage").Events.LoadCharacter:FireServer()
			end
		end
	end)
	spawn(function()
		while wait(1) do

			if game:GetService("ReplicatedStorage").wkspc.Status.LastGamemode.Value:lower():find("hackula") then 
				print("f")
				break 
			end
		end
	end)
	local num = 6
	local up = 0
	game:GetService("RunService").RenderStepped:Connect(function()
		if Farming then
			if workspace:FindFirstChild("Map") and PlayerLocked and PlayerLocked.Character and PlayerLocked.NRPBS.Health.Value > 0 and PlayerLocked.Character:FindFirstChild("HeadHB") then
				workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, PlayerLocked.Character.HeadHB.Position)
				if Back then num = 2 up = 0 else num = -2 up = 2 end
				game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(
				PlayerLocked.Character.HumanoidRootPart.CFrame * CFrame.new(-1.0, up, num)
				)

				local RayParams = RaycastParams.new()
				RayParams.FilterType = Enum.RaycastFilterType.Blacklist
				RayParams.FilterDescendantsInstances = {workspace.CurrentCamera, game:GetService("Players").LocalPlayer.Character, workspace.Map.Ignore, workspace.Map.Clips}

				local Result = workspace:Raycast(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.LookVector * 10000, RayParams)
				local Player

				if Result and Result.Instance then
					if Result.Instance:IsDescendantOf(PlayerLocked.Character) then
						game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
					end
				end
			end
		end

		if game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value == true then PlayerLocked = nil end
		if not game:GetService("Players").LocalPlayer.Character then PlayerLocked = nil end
		if game:GetService("Players").LocalPlayer.NRPBS.Health.Value <= 0 then PlayerLocked = nil end
	end)
	for i,v in next, game.ReplicatedStorage.Weapons:GetChildren() do
		for i,c in next, v:GetChildren() do -- for some reason, using GetDescendants dsent let you modify weapon ammo, so I do this instead
			for i,x in next, getconnections(c.Changed) do
				x:Disable() -- probably not needed
			end
			if c.Name == "Ammo" or c.Name == "StoredAmmo" then
				c.Value = 300 -- don't set this above 300 or else your guns wont work
			elseif c.Name == "AReload" or c.Name == "RecoilControl" or c.Name == "EReload" or c.Name == "SReload" or c.Name == "ReloadTime" or c.Name == "EquipTime" or c.Name == "Spread" or c.Name == "MaxSpread" then
				c.Value = 0
			elseif c.Name == "Range" then
				c.Value = 9e9
			elseif c.Name == "Auto" then
				c.Value = true
			elseif c.Name == "FireRate" or c.Name == "BFireRate" then
				c.Value = 0.02 -- don't set this lower than 0.02 or else your game will crash
			end
		end
	end
	game:GetService('RunService').Stepped:connect(function() -- Infinite Ammo by Frontman#9917
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999 -- dont do it higher then 999
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
	end)
	StartAutofarm()

end)

Combat:Button("TP To Random Person", function()
	KnifeKill()
end

)



Combat:Button('Aimlock',function()
	local ScreenGui = Instance.new("ScreenGui")
	local Aimbot = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Toggle = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Aimbot.Name = "Aimbot"
	Aimbot.Parent = ScreenGui
	Aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Aimbot.Position = UDim2.new(0.0599842146, 0, 0.358722359, 0)
	Aimbot.Size = UDim2.new(0, 126, 0, 152)

	Title.Name = "Title"
	Title.Parent = Aimbot
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.Size = UDim2.new(0, 126, 0, 50)
	Title.Font = Enum.Font.SourceSans
	Title.Text = "Aimlock"
	Title.TextColor3 = Color3.fromRGB(20, 30, 69)
	Title.TextSize = 20.000

	Toggle.Name = "Toggle"
	Toggle.Parent = Aimbot
	Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0, 0, 0.473684222, 0)
	Toggle.Size = UDim2.new(0, 126, 0, 50)
	Toggle.Font = Enum.Font.SourceSans
	Toggle.Text = "Off"
	Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
	Toggle.TextSize = 40.000

	-- Scripts:

	local function PNHLOYF_fake_script() -- Toggle.LocalScript 
		local script = Instance.new('LocalScript', Toggle)

		_G.aimbot = false
		local camera = game.Workspace.CurrentCamera
		local localplayer = game:GetService("Players").LocalPlayer

		script.Parent.MouseButton1Click:Connect(function()
			if _G.aimbot == false then
				_G.aimbot = true
				script.Parent.TextColor3 = Color3.fromRGB(0,170,0)
				script.Parent.Text = "On"
				function closestplayer()
					local dist = math.huge -- math.huge means a really large number, 1M+.
					local target = nil --- nil means no value
					for i,v in pairs (game:GetService("Players"):GetPlayers()) do
						if v ~= localplayer then
							if v.Character and v.Character:FindFirstChild("Head") and v.TeamColor ~= localplayer.TeamColor and _G.aimbot and v.Character.Humanoid.Health > 0 then --- creating the checks
								local magnitude = (v.Character.Head.Position - localplayer.Character.Head.Position).magnitude
								if magnitude < dist then
									dist = magnitude
									target = v
								end

							end
						end
					end
					return target
				end

			else
				_G.aimbot = false
				script.Parent.TextColor3 = Color3.fromRGB(255,0,0)
				script.Parent.Text = "Off"
			end
		end)

		local settings = {
			keybind = Enum.UserInputType.MouseButton2
		}

		local UIS = game:GetService("UserInputService")
		local aiming = false --- this toggle will make it so we lock on to the person when we press our keybind

		UIS.InputBegan:Connect(function(inp)
			if inp.UserInputType == settings.keybind then
				aiming = true
			end
		end)

		UIS.InputEnded:Connect(function(inp)
			if inp.UserInputType == settings.keybind then ---- when we stop pressing the keybind it would unlock off the player
				aiming = false
			end
		end)

		game:GetService("RunService").RenderStepped:Connect(function()
			if aiming then
				camera.CFrame = CFrame.new(camera.CFrame.Position,closestplayer().Character.Head.Position) -- locks into the HEAD
			end
		end)
	end
	coroutine.wrap(PNHLOYF_fake_script)()
end)

Combat:Button('TriggerBot(Synapse X Only)',function()
	local player = game:GetService("Players").LocalPlayer
	local mouseGet = player:GetMouse()
	game:GetService("RunService").RenderStepped:Connect(function()
		if mouseGet.Target.Parent:FindFirstChild("Humanoid") and mouseGet.Target.Parent:FindFirstChild("Head") and mouseGet.Target.Parent.Name ~= player.Name and game.Players:GetPlayerFromCharacter(mouseGet.Target.Parent).Team ~= player.Team then
			mouse1press() wait() mouse1release()
		end
	end)
end)

Combat:Toggle('Silent Aim',function(state)
	Client.Toggles.SilentAim = state
end)
Combat:Toggle('Semi-WallBang',function(state)
	Client.Toggles.WallBang = state
end)

Combat:Dropdown('Aim Part',{'Head','LowerTorso','Random'},function(Selected)
	Client.Values.AimPart = Selected
end)

Combat:Toggle('Draw FOV',function(state)
	Client.Toggles.FOV = state
end)
Combat:Slider('FOV',1, 950, 690, function(num)
	Client.Values.FOV = num
end)
Combat:Slider('FOV Num Sides',1, 50, 27, function(num)
	FOVCircle.NumSides = num
end)
Combat:Slider('FOV Thickness',1, 1000, 69, function(num)
	FOVCircle.Thickness = num
end)
Combat:Colorpicker("FOV Color",Color3.fromRGB(225, 0, 0), function(color)
	FOVCircle.Color = color
end)


Config = {
	Infammo = false,
	Automtatic = false,
	FireRate = false,
	NoRecoil = false,
	NoSpread = false
}
Gunmods:Button('Press For Best Gun Mods',function()
	for i,v in next, game.ReplicatedStorage.Weapons:GetChildren() do
		for i,c in next, v:GetChildren() do 
			for i,x in next, getconnections(c.Changed) do
				x:Disable() -- probably not needed
			end
			if c.Name == "Ammo" or c.Name == "StoredAmmo" then
				c.Value = 300 -- don't set this above 300 or else your guns wont work
			elseif c.Name == "AReload" or c.Name == "RecoilControl" or c.Name == "EReload" or c.Name == "SReload" or c.Name == "ReloadTime" or c.Name == "EquipTime" or c.Name == "Spread" or c.Name == "MaxSpread" then
				c.Value = 0
			elseif c.Name == "Range" then
				c.Value = 9e9
			elseif c.Name == "Auto" then
				c.Value = true
			elseif c.Name == "FireRate" or c.Name == "BFireRate" then
				c.Value = 0.02 -- don't set this lower than 0.02 or else your game will crash
			end
		end
	end
	game:GetService('RunService').Stepped:connect(function() -- Infinite Ammo by Frontman#9917
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999 -- dont do it higher then 999
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
	end)
end)

Gunmods:Toggle('Infinite Ammo',function(state)
	Config.Infammo = state
	game:GetService("RunService").Stepped:connect(function()
		task.spawn(function()
			if Config.Infammo then
				getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).ammocount.Value = 25
				getsenv(game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).ammocount.Value = 26
			end
		end)
	end)
end)

Gunmods:Toggle('Always Auto',function(state)
	Config.Automtatic = state
	for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
		if v.Name == "Auto" or v.Name == "AutoFire" or v.Name == "Automtatic" or v.Name == "AutoShoot" or v.Name == "AutoGun" then
			if Config.Automtatic then
				v.Value = true 
			else
				v.Value = false
			end
		end
	end
end)

Gunmods:Toggle('FastFire Rate',function(state)
	Config.FireRate = state
	for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
		if v.Name == "FireRate" then
			if Config.FireRate then
				v.Value = 0.02 -- Fast Firerate
			else
				return -- v.Value = 0.8
			end
		end
	end
end)

Gunmods:Toggle('No Recoil',function(state)
	Config.NoRecoil = state
	for i, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
		if v.Name == "RecoilControl" or v.Name == "Recoil" then
			if Config.NoRecoil then
				v.Value = 0 
			else
				v.Value = 1
			end
		end
	end
end)

Gunmods:Toggle("No Spread",function(state)
	Config.NoSpread = state
	for i, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
		if v.Name == "MaxSpread" or v.Name == "Spread" or v.Name == "SpreadControl" then
			if Config.NoSpread then
				v.Value = 0 
			else
				v.Value = 1
			end
		end
	end
end)



Player:Toggle('Walkspeed',function(state)
	if state then 
		local walkSpeed = 100
		local gmt = getrawmetatable(game)
		setreadonly(gmt, false)
		local oldindex = gmt.__index
		gmt.__index = newcclosure(function(self,b)
			if b == "WalkSpeed" then
				return 100
			end
			return oldindex(self,b)
		end)
	else
		local walkSpeed = 125
		local gmt = getrawmetatable(game)
		setreadonly(gmt, false)
		local oldindex = gmt.__index
		gmt.__index = newcclosure(function(self,b)
			if b == "WalkSpeed" then
				return 25
			end
			return oldindex(self,b)
		end)
	end
end)

Player:Toggle('Fast Heal',function()
	while game.RunService.RenderStepped:Wait()do
		pcall(function()
			if game.Players.LocalPlayer.Character then
				if game.Players.LocalPlayer.NRPBS.Health.Value<=99 then
					if game.Players.LocalPlayer.Character:FindFirstChild("Spawned")then
						for _,v in pairs(game.Workspace.Debris:GetChildren())do
							if v.Name=="DeadHP"then
								v.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								v.Transparency=1
							end
						end
						local args = {
							[1] = game:GetService("ReplicatedStorage").Weapons["Stake Launcher"],
							[2] = "Rolled!"
						}

						game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(unpack(args))

						game.ReplicatedStorage.Events.HealBoy:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart)
						local args = {
							[1] = game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value,
							[2] = "Rolled!"
						}

						game:GetService("ReplicatedStorage").Events.ApplyGun:FireServer(unpack(args))

						wait(0.1)
					end
				end
			end
		end)
	end

end)


Player:Toggle('Auto Deploy(Buggy)', function()
	if not game.ReplicatedStorage.wkspc.Status.Preparation.Value and not game.ReplicatedStorage.wkspc.Status.RoundOver.Value then
		if game:GetService("Players").LocalPlayer.Status.Team.Value=="Spectator"then
			local teamto="TRC"
			local teamtable={}
			if game:GetService("ReplicatedStorage").wkspc.TwoTeams.Value then
				teamtable={
					TRC=game:GetService("ReplicatedStorage").wkspc.Status.NumTRC.Value,
					TBC=game:GetService("ReplicatedStorage").wkspc.Status.NumTBC.Value,
				}
			elseif game:GetService("ReplicatedStorage").wkspc.FFA.Value then
				teamtable={
					Random=0,
				}
			else
				teamtable={
					TRC=game:GetService("ReplicatedStorage").wkspc.Status.NumTRC.Value,
					TBC=game:GetService("ReplicatedStorage").wkspc.Status.NumTBC.Value,
					TGC=game:GetService("ReplicatedStorage").wkspc.Status.NumTGC.Value,
					TYC=game:GetService("ReplicatedStorage").wkspc.Status.NumTYC.Value,
				}
			end
			local num=math.huge
			for i,v in pairs(teamtable)do
				if v<num then
					num=v
					teamto=i
				end
			end
			game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer(teamto)
		end
		if game.Players.LocalPlayer.PlayerGui.Menew.Enabled then
			game.Players.LocalPlayer.PlayerGui.Menew.Enabled=false
		end
		if not game.Players.LocalPlayer.PlayerGui.GUI.Enabled then
			game.Players.LocalPlayer.PlayerGui.GUI.Enabled=true
		end
		if game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Visible then
			game.Players.LocalPlayer.PlayerGui.GUI.TeamSelection.Visible=false
		end
		if game.Players.LocalPlayer.PlayerGui.GUI.BottomFrame.Visible then
			game.Players.LocalPlayer.PlayerGui.GUI.BottomFrame.Visible=false
		end
	end
end)

Player:Toggle('Fly (Press T To Toggle On And Off)',function(state)
	repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
	local mouse = game.Players.LocalPlayer:GetMouse() 
	repeat wait() until mouse
	local plr = game.Players.LocalPlayer 
	local torso = plr.Character.Head 
	local flying = false
	local deb = true 
	local ctrl = {f = 0, b = 0, l = 0, r = 0} 
	local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
	local maxspeed = 100
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
		if key:lower() == "t" then 
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
Player:Toggle('Infinite Jump', function(state)
	Client.Toggles.InfJump = state
end)
Player:Toggle('Third Person',function(state)
	if state then 
		game:GetService("Players")["LocalPlayer"].PlayerGui.GUI.Client.Variables.thirdperson.Value = true
	else
		game:GetService("Players")["LocalPlayer"].PlayerGui.GUI.Client.Variables.thirdperson.Value = false
	end
end)
game:GetService("UserInputService").JumpRequest:connect(function()
	if Client.Toggles.InfJump == true then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

Player:Toggle('Bunny Hop',function(state)
	Client.Toggles.BHop = state
end)
Player:Toggle('Instant Respawn',function(state)
	Client.Toggles.InstantRespawn = state
end)

Player:Toggle('Noclip',function()
	local noclip = false
	local Noclipping = nil
	local Clip = false
	local speaker = game.Players.LocalPlayer
	wait(0.1)
	local function NoclipLoop()
		if Clip == false and speaker.Character ~= nil then
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
end)

Player:Toggle('Chat Spam',function(state)
	Client.Toggles.SpamChat = state
end)
spawn(function()
	while true do
		wait(.01)
		if Client.Toggles.SpamChat == true then

			local args = {
				[1] = "Trolling42",
				[2] = Client.Values.ChatMsg,
				[3] = false,
				[5] = false,
				[6] = true
			}

			game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))

			wait(0.1)
		end
	end
end)
Player:Textbox(
	"Chat Message",
	true,
	function(Text)
		Client.Values.ChatMsg = tostring(Text)
	end
)



Player:Button('Rejoin',function()
	local TeleportService = game:GetService("TeleportService")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local Rejoin = coroutine.create(function()
		local Success, ErrorMessage = pcall(function()
			TeleportService:Teleport(game.PlaceId, LocalPlayer)
		end)

		if ErrorMessage and not Success then
			warn(ErrorMessage)
		end
	end)

	coroutine.resume(Rejoin)
end)
Player:Button('Server Hop (Level 7 Executers Only)',function()
	local a={}
	for _,v in pairs(game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?limit=100")).data)do
		if v.playing<v.maxPlayers then
			table.insert(a,v.id)
		end
	end
	while wait(0.5)do
		game.TeleportService:TeleportToPlaceInstance(game.PlaceId,a[math.random(1,#a)])
	end
end)
Player:Slider('Arsenal FOV',10, 120, 90, function(num)
	game:GetService("Players").LocalPlayer.Settings.FOV.Value = num
end)


Player:Slider('Gravity',1, 100, 45, function(value)
	game:GetService("ReplicatedStorage").CurrentGrav.Value = value
end)
Player:Slider('TimeScale',1, 10, 1, function(TimeScaleFR)

	game:GetService("ReplicatedStorage").wkspc.TimeScale.Value = TimeScaleFR
end)    
Player:Textbox(
	"Kick Reason(Troll Your Friends)",
	true,
	function(Kick)
		game.Players.LocalPlayer:Kick(Kick)
	end)

Player:Dropdown('Select Curse',{'None','Self Knockback','Fast Hands','Slowed Tap','Slowed','Speedy','Inf Ammo','Double Tap','Mystery','Hidden','Enraged','Quacks','No Jumps'}, function(curse)
	if curse == 'None' then
		None()
	end

	if curse == 'Self Knockback' then
		SelfBack()
	end

	if curse == 'Fast Hands' then
		Hands()
	end

	if curse == 'Slowed Tap' then
		STap()
	end

	if curse == 'Slowed' then
		Slowedd()
	end

	if curse == 'Speedy' then
		Spedy()
	end

	if curse == 'Inf Ammo' then
		InfAmm0()
	end

	if curse == 'Double Tap' then
		DTap()
	end

	if curse == 'Mystery' then
		Myst3ry()
	end

	if curse == 'Hidden' then
		HideMe()
	end

	if curse == 'Enraged' then
		BoltsRaged()
	end

	if curse == 'Quacks' then
		Quacklol()
	end

	if curse == 'No Jumps' then
		JumpingFalse()
	end
end)

function None()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "None" end end
end

function SelfBack()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Self-Knockback" end end
end

function Hands()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Fast Hands" end end
end

function Slowedd()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Slowed" end end
end

function Spedy()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Speedy" end end
end

function InfAmm0()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Infinite Ammo" end end
end

function DTap()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Double Tap" end end
end

function Myst3ry()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Mystery" end end
end

function HideMe()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Hidden" end end
end

function BoltsRaged()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Enraged" end end
end

function Quacklol()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Quacks" end end
end

function JumpingFalse()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "No Jumps" end end
end

function STap()
	for i,v in pairs(game:GetService("ReplicatedStorage").wkspc:GetDescendants()) do if v.Name:lower():find("curse") then v.Value = "Slowed Tap" end end
end






local Config = {
	Visuals = {
		BoxEsp = false,
		TracerEsp = false,
		TracersOrigin = "Bottom", 
		NameEsp = false,
		DistanceEsp = false,
		SkeletonEsp = false,
		EnemyColor = Color3.fromRGB(255, 0, 0),
		TeamColor = Color3.fromRGB(0, 255, 0),
		MurdererColor = Color3.fromRGB(255, 0, 0)
	}
}

local Funcs = {}
function Funcs:IsAlive(player)
	if player and player.Character and player.Character:FindFirstChild("Head") and
		workspace:FindFirstChild(player.Character.Name)
	then
		return true
	end
end

function Funcs:Round(number)
	return math.floor(tonumber(number) + 0.5)
end

function Funcs:DrawSquare()
	local Box = Drawing.new("Square")
	Box.Color = Color3.fromRGB(190, 190, 0)
	Box.Thickness = 1.4
	Box.Filled = false
	Box.Transparency = 1
	return Box
end

function Funcs:DrawLine()
	local line = Drawing.new("Line")
	line.Color = Color3.new(190, 190, 0)
	line.Thickness = 1.5
	return line
end

function Funcs:DrawText()
	local text = Drawing.new("Text")
	text.Color = Color3.fromRGB(190, 190, 0)
	text.Size = 19
	text.Outline = true
	text.Center = true
	return text
end

local Services =
	setmetatable(
		{
			LocalPlayer = game:GetService("Players").LocalPlayer,
			Camera = workspace.CurrentCamera
		},
		{
			__index = function(self, idx)
				return rawget(self, idx) or game:GetService(idx)
			end
		}
	)

function Funcs:AddEsp(player)
	local Box = Funcs:DrawSquare()
	local Tracer = Funcs:DrawLine()
	local Name = Funcs:DrawText()
	local Distance = Funcs:DrawText()
	local SnapLines = Funcs:DrawLine()
	local HeadLowerTorso = Funcs:DrawLine()
	local NeckLeftUpper = Funcs:DrawLine()
	local LeftUpperLeftLower = Funcs:DrawLine()
	local NeckRightUpper = Funcs:DrawLine()
	local RightUpperLeftLower = Funcs:DrawLine()
	local LowerTorsoLeftUpper = Funcs:DrawLine()
	local LeftLowerLeftUpper = Funcs:DrawLine()
	local LowerTorsoRightUpper = Funcs:DrawLine()
	local RightLowerRightUpper = Funcs:DrawLine()
	Services.RunService.Stepped:Connect(
		function()
			if Funcs:IsAlive(player) and player.Character:FindFirstChild("HumanoidRootPart") then
				local RootPosition, OnScreen =
					Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
				local HeadPosition =
					Services.Camera:WorldToViewportPoint(player.Character.Head.Position + Vector3.new(0, 0.5, 0))
				local LegPosition =
					Services.Camera:WorldToViewportPoint(
						player.Character.HumanoidRootPart.Position - Vector3.new(0, 4, 0)
					)
				if Config.Visuals.BoxEsp then
					Box.Visible = OnScreen
					Box.Size = Vector2.new((2350 / RootPosition.Z) + 2.5, HeadPosition.Y - LegPosition.Y)
					Box.Position = Vector2.new((RootPosition.X - Box.Size.X / 2) - 1, RootPosition.Y - Box.Size.Y / 2)
				else
					Box.Visible = false
				end
				if Config.Visuals.TracerEsp then
					Tracer.Visible = OnScreen
					if Config.Visuals.TracersOrigin == "Top" then
						Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, 0)
						Tracer.From =
							Vector2.new(
								Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
								RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2
							)
					elseif Config.Visuals.TracersOrigin == "Middle" then
						Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, Services.Camera.ViewportSize.Y / 2)
						Tracer.From =
							Vector2.new(
								Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
								(RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2) -
								((HeadPosition.Y - LegPosition.Y) / 2)
							)
					elseif Config.Visuals.TracersOrigin == "Bottom" then
						Tracer.To = Vector2.new(Services.Camera.ViewportSize.X / 2, 1000)
						Tracer.From =
							Vector2.new(
								Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
								RootPosition.Y - (HeadPosition.Y - LegPosition.Y) / 2
							)
					elseif Config.Visuals.TracersOrigin == "Mouse" then
						Tracer.To = game:GetService("UserInputService"):GetMouseLocation()
						Tracer.From =
							Vector2.new(
								Services.Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position).X - 1,
								(RootPosition.Y + (HeadPosition.Y - LegPosition.Y) / 2) -
								((HeadPosition.Y - LegPosition.Y) / 2)
							)
					end
				else
					Tracer.Visible = false
				end
				if Config.Visuals.NameEsp then
					Name.Visible = OnScreen
					Name.Position =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y - 40
						)
					Name.Text = "[ " .. player.Name .. " ]"
				else
					Name.Visible = false
				end
				if Config.Visuals.DistanceEsp and player.Character:FindFirstChild("Head") then
					Distance.Visible = OnScreen
					Distance.Position =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y - 25
						)
					Distance.Text =
						"[ " ..
						Funcs:Round(
							(game:GetService("Players").LocalPlayer.Character.Head.Position -
								player.Character.Head.Position).Magnitude
						) ..
						" Studs ]"
				else
					Distance.Visible = false
				end
				if Config.Visuals.SkeletonEsp then
					HeadLowerTorso.Visible = OnScreen
					HeadLowerTorso.From =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y
						)
					HeadLowerTorso.To =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
						)
					NeckLeftUpper.Visible = OnScreen
					NeckLeftUpper.From =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y +
							((Services.Camera:WorldToViewportPoint(player.Character.UpperTorso.Position).Y -
								Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y) /
								3)
						)
					NeckLeftUpper.To =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).Y
						)
					LeftUpperLeftLower.Visible = OnScreen
					LeftUpperLeftLower.From =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.LeftLowerArm.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.LeftLowerArm.Position).Y
						)
					LeftUpperLeftLower.To =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.LeftUpperArm.Position).Y
						)
					NeckRightUpper.Visible = OnScreen
					NeckRightUpper.From =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.Head.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y +
							((Services.Camera:WorldToViewportPoint(player.Character.UpperTorso.Position).Y -
								Services.Camera:WorldToViewportPoint(player.Character.Head.Position).Y) /
								3)
						)
					NeckRightUpper.To =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).Y
						)
					RightUpperLeftLower.Visible = OnScreen
					RightUpperLeftLower.From =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.RightLowerArm.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.RightLowerArm.Position).Y
						)
					RightUpperLeftLower.To =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.RightUpperArm.Position).Y
						)
					LowerTorsoLeftUpper.Visible = OnScreen
					LowerTorsoLeftUpper.From =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
						)
					LowerTorsoLeftUpper.To =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).Y
						)
					LeftLowerLeftUpper.Visible = OnScreen
					LeftLowerLeftUpper.From =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.LeftLowerLeg.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.LeftLowerLeg.Position).Y
						)
					LeftLowerLeftUpper.To =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.LeftUpperLeg.Position).Y
						)
					LowerTorsoRightUpper.Visible = OnScreen
					LowerTorsoRightUpper.From =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.RightLowerLeg.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.RightLowerLeg.Position).Y
						)
					LowerTorsoRightUpper.To =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).Y
						)
					RightLowerRightUpper.Visible = OnScreen
					RightLowerRightUpper.From =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.LowerTorso.Position).Y
						)
					RightLowerRightUpper.To =
						Vector2.new(
							Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).X,
							Services.Camera:WorldToViewportPoint(player.Character.RightUpperLeg.Position).Y
						)
				else
					HeadLowerTorso.Visible = false
					NeckLeftUpper.Visible = false
					LeftUpperLeftLower.Visible = false
					NeckRightUpper.Visible = false
					RightUpperLeftLower.Visible = false
					LowerTorsoLeftUpper.Visible = false
					LeftLowerLeftUpper.Visible = false
					LowerTorsoRightUpper.Visible = false
					RightLowerRightUpper.Visible = false
				end
				if game.Players.LocalPlayer.TeamColor ~= player.TeamColor then
					Box.Color = Config.Visuals.EnemyColor
					Tracer.Color = Config.Visuals.EnemyColor
					Name.Color = Config.Visuals.EnemyColor
					Distance.Color = Config.Visuals.EnemyColor
					HeadLowerTorso.Color = Config.Visuals.EnemyColor
					NeckLeftUpper.Color = Config.Visuals.EnemyColor
					LeftUpperLeftLower.Color = Config.Visuals.EnemyColor
					NeckRightUpper.Color = Config.Visuals.EnemyColor
					RightUpperLeftLower.Color = Config.Visuals.EnemyColor
					LowerTorsoLeftUpper.Color = Config.Visuals.EnemyColor
					LeftLowerLeftUpper.Color = Config.Visuals.EnemyColor
					LowerTorsoRightUpper.Color = Config.Visuals.EnemyColor
					RightLowerRightUpper.Color = Config.Visuals.EnemyColor
				else
					Box.Color = Config.Visuals.TeamColor
					Tracer.Color = Config.Visuals.TeamColor
					Name.Color = Config.Visuals.TeamColor
					Distance.Color = Config.Visuals.TeamColor
					HeadLowerTorso.Color = Config.Visuals.TeamColor
					NeckLeftUpper.Color = Config.Visuals.TeamColor
					LeftUpperLeftLower.Color = Config.Visuals.TeamColor
					NeckRightUpper.Color = Config.Visuals.TeamColor
					RightUpperLeftLower.Color = Config.Visuals.TeamColor
					LowerTorsoLeftUpper.Color = Config.Visuals.TeamColor
					LeftLowerLeftUpper.Color = Config.Visuals.TeamColor
					LowerTorsoRightUpper.Color = Config.Visuals.TeamColor
					RightLowerRightUpper.Color = Config.Visuals.TeamColor
				end
			else
				Box.Visible = false
				Tracer.Visible = false
				Name.Visible = false
				Distance.Visible = false
				HeadLowerTorso.Visible = false
				NeckLeftUpper.Visible = false
				LeftUpperLeftLower.Visible = false
				NeckRightUpper.Visible = false
				RightUpperLeftLower.Visible = false
				LowerTorsoLeftUpper.Visible = false
				LeftLowerLeftUpper.Visible = false
				LowerTorsoRightUpper.Visible = false
				RightLowerRightUpper.Visible = false
			end
		end
	)
end

for i, v in pairs(Services.Players:GetPlayers()) do
	if v ~= Services.LocalPlayer then
		Funcs:AddEsp(v)
	end
end

Services.Players.PlayerAdded:Connect(
	function(player)
		if v ~= Services.LocalPlayer then
			Funcs:AddEsp(player)
		end
	end
)

local bolts = "buifzuifiqzuifizfui"

ESP:Toggle('Banana ESP (Monkey Business Mode)',function(boltss)
	for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
		if v.ClassName == 'TouchTransmitter' and v.Parent.Name == 'Banana' then -- checks if it has a handle and if its a touchtransmitter
			if boltss then 
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label

				BillboardGui.Parent = v.Parent -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0,2,0)
				BillboardGui.Name = bolts

				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
				TextLabel.Text = "🍌" -- what the label says
				TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
				TextLabel.TextScaled = false -- if the text is scaled or not
			else 
				v.Parent:FindFirstChild(bolts):Destroy()
			end
		end
	end
end)

local jsp = "czecqgzgzegzqgzeqgzg"

ESP:Toggle('Ammo Box ESP',function(enabled)
	for i,v in pairs(game.Workspace:GetDescendants()) do -- grabs everything from workspace
		if v.ClassName == 'TouchTransmitter' and v.Parent.Name == 'DeadAmmo' then -- checks if it has a handle and if its a touchtransmitter
			if enabled then
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label

				BillboardGui.Parent = v.Parent -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0,2,0)
				BillboardGui.Name = jsp

				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
				TextLabel.Text = "Ammo Box" -- what the label says
				TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
				TextLabel.TextScaled = false -- if the text is scaled or not
			else 
				v.Parent:FindFirstChild(jsp):Destroy()
			end
		end
	end
end)

local espTilesName = 'espTiles-abcdefghijklmnopqrstuvwxyz'

ESP:Toggle('HP Jug ESP', function(enable)
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v.ClassName == 'TouchTransmitter' and v.Parent.Name == 'DeadHP' then
			if enable then
				local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
				local TextLabel = Instance.new('TextLabel') -- makes text label

				BillboardGui.Parent = v.Parent -- what the billboardgui goes into
				BillboardGui.AlwaysOnTop = true -- if its on top or not
				BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
				BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
				BillboardGui.Name = espTilesName -- name of it

				TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
				TextLabel.BackgroundColor3 = Color3.new(1, 1, 1) -- color
				TextLabel.BackgroundTransparency = 1 -- transparency
				TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
				TextLabel.Text = "HP Jar" -- what the label says
				TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
				TextLabel.TextScaled = false -- if the text is scaled or not
			else
				v.Parent:FindFirstChild(espTilesName):Destroy()
			end
		end
	end
end)

ESP:Toggle('3D Box ESP (Cant Change Color)',function(state)
	on = state
	if on == true then 
		--// Made by Blissful#4992
		--// Locals:
		local workspace = game:GetService("Workspace")
		local player = game:GetService("Players").LocalPlayer
		local camera = workspace.CurrentCamera

		--// Settings:

		local Box_Color = Color3.fromRGB(255, 0, 0)
		local Box_Thickness = 2
		local Box_Transparency = 1 -- 1 Visible, 0 Not Visible

		local Tracers = false
		local Tracer_Color = Color3.fromRGB(255, 0, 0)
		local Tracer_Thickness = 2
		local Tracer_Transparency = 1 -- 1 Visible, 0 Not Visible

		local Autothickness = false -- Makes screen less encumbered

		local Team_Check = true
		local red = Color3.fromRGB(227, 52, 52)
		local green = Color3.fromRGB(88, 217, 24)

		local function NewLine()
			local line = Drawing.new("Line")
			line.Visible = false
			line.From = Vector2.new(0, 0)
			line.To = Vector2.new(1, 1)
			line.Color = Box_Color
			line.Thickness = Box_Thickness
			line.Transparency = Box_Transparency
			return line
		end

		--// Main Function:
		for i, v in pairs(game.Players:GetChildren()) do
			--// Lines for 3D box (12)
			local lines = {
				line1 = NewLine(),
				line2 = NewLine(),
				line3 = NewLine(),
				line4 = NewLine(),
				line5 = NewLine(),
				line6 = NewLine(),
				line7 = NewLine(),
				line8 = NewLine(),
				line9 = NewLine(),
				line10 = NewLine(),
				line11 = NewLine(),
				line12 = NewLine(),
				Tracer = NewLine()
			}

			lines.Tracer.Color = Tracer_Color
			lines.Tracer.Thickness = Tracer_Thickness
			lines.Tracer.Transparency = Tracer_Transparency

			--// Updates ESP (lines) in render loop
			local function ESP()
				local connection
				connection = game:GetService("RunService").RenderStepped:Connect(function()
					if on and v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Name ~= player.Name and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Head") ~= nil then
						local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
						if vis then
							local Scale = v.Character.Head.Size.Y/2
							local Size = Vector3.new(2, 3, 1.5) * (Scale * 2) -- Change this for different box size

							local Top1 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, -Size.Z)).p)
							local Top2 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, Size.Z)).p)
							local Top3 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, Size.Z)).p)
							local Top4 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, -Size.Z)).p)

							local Bottom1 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, -Size.Z)).p)
							local Bottom2 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, Size.Z)).p)
							local Bottom3 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, Size.Z)).p)
							local Bottom4 = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, -Size.Z)).p)

							--// Top:
							lines.line1.From = Vector2.new(Top1.X, Top1.Y)
							lines.line1.To = Vector2.new(Top2.X, Top2.Y)

							lines.line2.From = Vector2.new(Top2.X, Top2.Y)
							lines.line2.To = Vector2.new(Top3.X, Top3.Y)

							lines.line3.From = Vector2.new(Top3.X, Top3.Y)
							lines.line3.To = Vector2.new(Top4.X, Top4.Y)

							lines.line4.From = Vector2.new(Top4.X, Top4.Y)
							lines.line4.To = Vector2.new(Top1.X, Top1.Y)

							--// Bottom:
							lines.line5.From = Vector2.new(Bottom1.X, Bottom1.Y)
							lines.line5.To = Vector2.new(Bottom2.X, Bottom2.Y)

							lines.line6.From = Vector2.new(Bottom2.X, Bottom2.Y)
							lines.line6.To = Vector2.new(Bottom3.X, Bottom3.Y)

							lines.line7.From = Vector2.new(Bottom3.X, Bottom3.Y)
							lines.line7.To = Vector2.new(Bottom4.X, Bottom4.Y)

							lines.line8.From = Vector2.new(Bottom4.X, Bottom4.Y)
							lines.line8.To = Vector2.new(Bottom1.X, Bottom1.Y)

							--//S ides:
							lines.line9.From = Vector2.new(Bottom1.X, Bottom1.Y)
							lines.line9.To = Vector2.new(Top1.X, Top1.Y)

							lines.line10.From = Vector2.new(Bottom2.X, Bottom2.Y)
							lines.line10.To = Vector2.new(Top2.X, Top2.Y)

							lines.line11.From = Vector2.new(Bottom3.X, Bottom3.Y)
							lines.line11.To = Vector2.new(Top3.X, Top3.Y)

							lines.line12.From = Vector2.new(Bottom4.X, Bottom4.Y)
							lines.line12.To = Vector2.new(Top4.X, Top4.Y)

							--// Tracer:
							if Tracers then
								local trace = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(0, -Size.Y, 0)).p)

								lines.Tracer.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)
								lines.Tracer.To = Vector2.new(trace.X, trace.Y)
							end

							--// Teamcheck:
							if Team_Check then
								if v.TeamColor == player.TeamColor then
									for u, x in pairs(lines) do
										x.Color = green
									end
								else 
									for u, x in pairs(lines) do
										x.Color = red
									end
								end
							end

							--// Autothickness:
							if Autothickness then
								local distance = (player.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
								local value = math.clamp(1/distance*100, 0.1, 4) --0.1 is min thickness, 6 is max
								for u, x in pairs(lines) do
									x.Thickness = value
								end
							else 
								for u, x in pairs(lines) do
									x.Thickness = Box_Thickness
								end
							end

							for u, x in pairs(lines) do
								if x ~= lines.Tracer then
									x.Visible = true
								end
							end
							if Tracers then
								lines.Tracer.Visible = true
							end
						else 
							for u, x in pairs(lines) do
								x.Visible = false
							end
						end
					else 
						for u, x in pairs(lines) do
							x.Visible = false
						end
						if game.Players:FindFirstChild(v.Name) == nil then
							connection:Disconnect()
						end
					end
				end)
			end
			coroutine.wrap(ESP)()
		end

		game.Players.PlayerAdded:Connect(function(newplr)
			--// Lines for 3D box (12)
			local lines = {
				line1 = NewLine(),
				line2 = NewLine(),
				line3 = NewLine(),
				line4 = NewLine(),
				line5 = NewLine(),
				line6 = NewLine(),
				line7 = NewLine(),
				line8 = NewLine(),
				line9 = NewLine(),
				line10 = NewLine(),
				line11 = NewLine(),
				line12 = NewLine(),
				Tracer = NewLine()
			}

			lines.Tracer.Color = Tracer_Color
			lines.Tracer.Thickness = Tracer_Thickness
			lines.Tracer.Transparency = Tracer_Transparency

			--// Updates ESP (lines) in render loop
			local function ESP()
				local connection
				connection = game:GetService("RunService").RenderStepped:Connect(function()
					if on and newplr.Character ~= nil and newplr.Character:FindFirstChild("Humanoid") ~= nil and newplr.Character:FindFirstChild("HumanoidRootPart") ~= nil and newplr.Name ~= player.Name and newplr.Character.Humanoid.Health > 0 and newplr.Character:FindFirstChild("Head") ~= nil then
						local pos, vis = camera:WorldToViewportPoint(newplr.Character.HumanoidRootPart.Position)
						if vis then
							local Scale = newplr.Character.Head.Size.Y/2
							local Size = Vector3.new(2, 3, 1.5) * (Scale * 2) -- Change this for different box size

							local Top1 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, -Size.Z)).p)
							local Top2 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, Size.Z)).p)
							local Top3 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, Size.Z)).p)
							local Top4 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, -Size.Z)).p)

							local Bottom1 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, -Size.Z)).p)
							local Bottom2 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, Size.Z)).p)
							local Bottom3 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, Size.Z)).p)
							local Bottom4 = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, -Size.Z)).p)

							--// Top:
							lines.line1.From = Vector2.new(Top1.X, Top1.Y)
							lines.line1.To = Vector2.new(Top2.X, Top2.Y)

							lines.line2.From = Vector2.new(Top2.X, Top2.Y)
							lines.line2.To = Vector2.new(Top3.X, Top3.Y)

							lines.line3.From = Vector2.new(Top3.X, Top3.Y)
							lines.line3.To = Vector2.new(Top4.X, Top4.Y)

							lines.line4.From = Vector2.new(Top4.X, Top4.Y)
							lines.line4.To = Vector2.new(Top1.X, Top1.Y)

							--// Bottom:
							lines.line5.From = Vector2.new(Bottom1.X, Bottom1.Y)
							lines.line5.To = Vector2.new(Bottom2.X, Bottom2.Y)

							lines.line6.From = Vector2.new(Bottom2.X, Bottom2.Y)
							lines.line6.To = Vector2.new(Bottom3.X, Bottom3.Y)

							lines.line7.From = Vector2.new(Bottom3.X, Bottom3.Y)
							lines.line7.To = Vector2.new(Bottom4.X, Bottom4.Y)

							lines.line8.From = Vector2.new(Bottom4.X, Bottom4.Y)
							lines.line8.To = Vector2.new(Bottom1.X, Bottom1.Y)

							--//S ides:
							lines.line9.From = Vector2.new(Bottom1.X, Bottom1.Y)
							lines.line9.To = Vector2.new(Top1.X, Top1.Y)

							lines.line10.From = Vector2.new(Bottom2.X, Bottom2.Y)
							lines.line10.To = Vector2.new(Top2.X, Top2.Y)

							lines.line11.From = Vector2.new(Bottom3.X, Bottom3.Y)
							lines.line11.To = Vector2.new(Top3.X, Top3.Y)

							lines.line12.From = Vector2.new(Bottom4.X, Bottom4.Y)
							lines.line12.To = Vector2.new(Top4.X, Top4.Y)

							--// Tracer:
							if Tracers then
								local trace = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(0, -Size.Y, 0)).p)
								lines.Tracer.From = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y)
								lines.Tracer.To = Vector2.new(trace.X, trace.Y)
							end

							--// Teamcheck:
							if Team_Check then
								if newplr.TeamColor == player.TeamColor then
									for u, x in pairs(lines) do
										x.Color = green
									end
								else 
									for u, x in pairs(lines) do
										x.Color = red
									end
								end
							end

							--// Autothickness:
							if Autothickness then
								local distance = (player.Character.HumanoidRootPart.Position - newplr.Character.HumanoidRootPart.Position).magnitude
								local value = math.clamp(1/distance*100, 0.1, 4) --0.1 is min thickness, 6 is max
								for u, x in pairs(lines) do
									x.Thickness = value
								end
							else 
								for u, x in pairs(lines) do
									x.Thickness = Box_Thickness
								end
							end

							for u, x in pairs(lines) do
								if x ~= lines.Tracer then
									x.Visible = true
								end
							end
							if Tracers then
								lines.Tracer.Visible = true
							end
						else 
							for u, x in pairs(lines) do
								x.Visible = false
							end
						end
					else 
						for u, x in pairs(lines) do
							x.Visible = false
						end
						if game.Players:FindFirstChild(newplr.Name) == nil then
							connection:Disconnect()
						end
					end
				end)
			end
			coroutine.wrap(ESP)()
		end)
	end
end)

ESP:Toggle('Box ESP',function(state)
	Config.Visuals.BoxEsp = state
end)

ESP:Toggle('Line ESP',function(state)
	Config.Visuals.TracerEsp = state
end)
ESP:Dropdown(
	"Lines Origin", {'Top','Middle','Bottom','Mouse'}, function(selected)
		Config.Visuals.TracersOrigin = selected
	end)
ESP:Toggle('Name ESP',function(state)
	Config.Visuals.NameEsp = state
end)
ESP:Toggle('Distance ESP',function(state)
	Config.Visuals.DistanceEsp = state
end)
ESP:Toggle('Skeletons ESP',function(state)
	Config.Visuals.SkeletonEsp = state
end)
ESP:Colorpicker(
	"Team Color",
	Color3.fromRGB(0, 255, 0),
	function(Color)
		Config.Visuals.TeamColor = Color
	end
)
ESP:Colorpicker(
	"Enemy Color",
	Color3.fromRGB(255, 0, 0),
	function(Color)
		Config.Visuals.EnemyColor = Color
	end
)

FE:Toggle('Bananas Autofarm',function(Enabled)
	_G.BananaAutoFarm = Enabled
	while _G.BananaAutoFarm do
		wait(0.1)
		if game.Workspace:FindFirstChild("Debris")then
			if game.Workspace.Debris.Bananas then
				for _,v in pairs(game.Workspace.Debris.Bananas:GetChildren())do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
						(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame-
							game.Players.LocalPlayer.Character.HumanoidRootPart.Position+v.Position)
						+Vector3.new(0,.5,0)
				end
			end
		end
	end
end)


FE:Button('FE KillBrick',function()

	local Core = getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript);

	local Loadout;
	for i,v in pairs(getupvalues(Core.ViewItems)) do
		if typeof(v) == "table" then
			if v.Skins then
				Loadout = v;
			end
		end
	end

	table.insert(Loadout.Skins, "KillBrick");
	game.Players.LocalPlayer.Data.Skin.Value = "KillBrick"
	game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
	game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
	game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
	game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
	game.Players.LocalPlayer.Character.LeftFoot:Destroy()
	game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()
	game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
	game.Players.LocalPlayer.Character.RightFoot:Destroy()
	game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
	game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
	game.Players.LocalPlayer.Character.FakeHead:Destroy()
	local esc = game.Players.LocalPlayer.Character.UpperTorso:GetChildren()
	for i, v in pairs(esc) do
		v:Destroy()
		wait()
	end
end)
FE:Button('Sing Pushin’ Dingle In Roblox Chat',function()
	-- Script generated by SimpleSpy - credits to exx#9394

	local args = {
		[1] = "Trolling42",
		[2] = "Goofy Ahh Uncle Productions",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	local args = {
		[1] = "Trolling42",
		[2] = "Im Pushing Dingle",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	-- Script generated by SimpleSpy - credits to exx#9394

	local args = {
		[1] = "Trolling42",
		[2] = "Im Pushing Dingle",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	-- Script generated by SimpleSpy - credits to exx#9394
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "Yeah Im Pushing Dingle",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	-- Script generated by SimpleSpy - credits to exx#9394
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "Im Not Pushing P",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	-- Script generated by SimpleSpy - credits to exx#9394
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "I Might Push That Girl To The Street",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	-- Script generated by SimpleSpy - credits to exx#9394
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "If She Play With Me Im That One Person You Cant Be",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	-- Script generated by SimpleSpy - credits to exx#9394

	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "She A Bad Person Capitol C",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "They Say That Im Not Getting Racks",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "That Stuff Aint Fax",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "That Lil Girl Back And Front On Meat Like A Park Swing",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "Im That Man Im Farting",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "Sniffing On That Good Good And It Smells Like Somones Farting",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "I Fina Get A Ring Not Talking Engagement Im Talking Boxing",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "I Fina Up That Pistol Fina Reload It Get To Shooting",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "I Finna Stuff That Girl",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "Call Me A Roster",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "Doing Somthing Nasty She Caught Me",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "I Finna Do Her",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(2)
	local args = {
		[1] = "Trolling42",
		[2] = "Finna Pull Out My Maneuvers",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(2.5)
	local args = {
		[1] = "Trolling42",
		[2] = "Pull Out The Philps I Finna Screw her",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(2.4)
	local args = {
		[1] = "Trolling42",
		[2] = "She Gonna Ride My Meat Like A Uber",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "Where the hell are your girls? Thats a Mystery Scooby Doo Scooby Doo Scooby Doo Hun?",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(2)
	local args = {
		[1] = "Trolling42",
		[2] = "Im Calling Her Thanos Because Her Hand Is On My Gaunlet",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(2)
	local args = {
		[1] = "Trolling42",
		[2] = "Yeah Im Pushing Dingle",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "I Finna Find Your Mom And Mingle",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
	wait(3)
	local args = {
		[1] = "Trolling42",
		[2] = "Im Gonna Make Her Tingle",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))

	local args = {
		[1] = "Trolling42",
		[2] = "Im Pushing P",
		[3] = false,
		[5] = false,
		[6] = true
	}

	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
end)

FE:Button('FE Sunglasses',function()
	while true do wait(0.1) game:GetService("ReplicatedStorage").Events.Sunglasses:FireServer() end
end)


FE:Button('FE Headless',function()


	if game.Players.LocalPlayer.Character:FindFirstChild("HeadHB")then
		game.Players.LocalPlayer.Character:FindFirstChild("HeadHB"):Destroy()
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("FakeHead")then
		game.Players.LocalPlayer.Character:FindFirstChild("FakeHead"):Destroy()
	end

end)

FE:Button('Free Badge',function()
	game:GetService("ReplicatedStorage").Events.ReplicateGear2:FireServer("coffee");
end) 

FE:Button('Destory Arms And Legs', function()

	game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()

	game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()

	game.Players.LocalPlayer.Character.RightLowerArm:Destroy()

	game.Players.LocalPlayer.Character.RightUpperArm:Destroy()

	game.Players.LocalPlayer.Character.LeftFoot:Destroy()

	game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()

	game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()

	game.Players.LocalPlayer.Character.RightFoot:Destroy()

	game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()

	game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
end)


FE:Button('NonExisty',function()
	game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()

	game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()

	game.Players.LocalPlayer.Character.RightLowerArm:Destroy()

	game.Players.LocalPlayer.Character.RightUpperArm:Destroy()

	game.Players.LocalPlayer.Character.LeftFoot:Destroy()

	game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()

	game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()

	game.Players.LocalPlayer.Character.RightFoot:Destroy()

	game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()

	game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()

	local esc = game.Players.LocalPlayer.Character.LowerTorso:GetChildren()

	for i, v in pairs(esc) do

		v:Destroy()

		wait()

	end

	local vm = game:GetService("ReplicatedStorage").Viewmodels.Arms.Delinquent

	vm.Name = "Holder"

	local toName = game:GetService("ReplicatedStorage").Viewmodels.Arms["Nonexisty"]

	toName.Name = "Delinquent"

	local Core = getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript);


	local Loadout;

	for i,v in pairs(getupvalues(Core.ViewItems)) do

		if typeof(v) == "table" then

			if v.Skins then

				Loadout = v;

			end

		end

	end


	table.insert(Loadout.Skins, "Nonexisty")

end)

FE:Button('God Mode Cant Kill People :(',function()
	if game.Players.LocalPlayer.Character:FindFirstChild("Spawned")then
		game.Players.LocalPlayer.Character.Spawned:Destroy()--simple god mode
	end
	game.Players.LocalPlayer.Character.ChildAdded:Connect(function(x)--keep the player godded after respawn
		if x.Name=="Spawned"then
			wait(.1)
			x:Destroy()
		end
	end)
	game.RunService.RenderStepped:Connect(function()--remove damage effects that can damage godded players
		if game.Players.LocalPlayer.Character then
			if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")then
				if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Engulfed")then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Engulfed:Destroy()
				elseif game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Bleed")then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Bleed:Destroy()
				end
			end
		end
	end)
	local hitparter=debug.getconstant(require(game:GetService("ReplicatedStorage").Modules.ClientFunctions).CreateProjectile,105)--arsenals shitty anti cheat
	local damage={--projectile damage table
		[20]={"Slingshot",0,0,0,0,0,2,0,0,1,0,0},
		[25]={"Slingshot",1,0,0,0,0,2,0,0,1,0,0},
		[30]={"Ice Stars",0,0,0,0,0,2,0,0,1,0,0},
		[37]={"Ice Stars",1,0,0,0,0,2,0,0,1,0,0},
		[40]={"Spellbook",0,0,0,0,0,2,0,0,1,0,0},
		[45]={"Snowball",0,0,0,0,0,2,0,0,1,0,0},
		[50]={"Cone Launcher",0,0,0,0,0,2,0,0,1,0,0},
		[56]={"Snowball",1,0,0,0,0,2,0,0,1,0,0},
		[60]={"Plasma Launcher",0,0,0,0,0,2,0,0,1,0,0},
		[62]={"Cone Launcher",1,0,0,0,0,2,0,0,1,0,0},
		[70]={"Lightning Cannon",0,0,0,0,0,2,0,0,1,0,0},
		[75]={"Plasma Launcher",1,0,0,0,0,2,0,0,1,0,0},
		[76]={"Firework Launcher",0,0,0,0,0,2,0,0,1,0,0},
		[80]={"TP Launcher",0,0,0,0,0,2,0,0,1,0,0},
		[82]={"EM249",0,0,0,0,0,2,0,0,1,0,0},
		[87]={"Lightning Cannon",1,0,0,0,0,2,0,0,1,0,0},
		[90]={"Ultraball",0,0,0,0,0,2,0,0,1,0,0},
		[95]={"Firework Launcher",1,0,0,0,0,2,0,0,1,0,0},
		[100]={"Bow",0,0,0,0,0,2,0,0,1,0,0},
	}
	local finddamage=function(a)--find damage from closest value
		local damagetodo=a
		local upperd={}
		local uppern=math.huge
		local lowerd={}
		local lowern=0
		for i,v in pairs(damage)do
			if i>=damagetodo then
				table.insert(upperd,i)
			end
			if i<=damagetodo then
				table.insert(lowerd,i)
			end
		end
		if #lowerd==0 then
			return(damage[20])--if there are no lower values then do 20
		end
		for _,v in pairs(lowerd)do
			if lowern<v then
				lowern=v
			end
		end
		for _,v in pairs(upperd)do
			if uppern>v then
				uppern=v
			end
		end
		local truenums={
			[lowern]=Vector3.new(lowern-damagetodo,0,0).Magnitude,
			[uppern]=Vector3.new(uppern-damagetodo,0,0).Magnitude,
		}
		local final=math.huge
		local truefinal
		for i,v in pairs(truenums)do
			if final>v then
				final=v
				truefinal=i
			end
		end
		return(damage[truefinal])
	end
	local mt=getrawmetatable(game)
	local oldNamecall=mt.__namecall
	setreadonly(mt,false)
	mt.__namecall=newcclosure(function(a,b,c,d,e,...)
		local method=getnamecallmethod()
		if tostring(method)=="FireServer"then
			if tostring(a)=="HitPart"then
				if game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value then--if the player has a gun then do function
					local Partpos=b.Position+Vector3.new(math.random(),math.random(),math.random())
					local Packedstring=string.pack(
						hitparter,
						Partpos.X,
						Partpos.Y,
						Partpos.Z,
						unpack(finddamage(game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.gun.Value.DMG.Value))--get gun damage
					)
					return oldNamecall(a,b,Packedstring)
				end
			end
		end
		return oldNamecall(a,b,c,d,e,...)
	end)
end)

NFE:Toggle('Rainbow Gun',function()
	local c = 1 function zigzag(X)  return math.acos(math.cos(X * math.pi)) / math.pi end game:GetService("RunService").RenderStepped:Connect(function()  if game.Workspace.Camera:FindFirstChild('Arms') then   for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do    if v.ClassName == 'MeshPart' then      v.Color = Color3.fromHSV(zigzag(c),1,1)     c = c + .0001    end   end  end end)
end)

NFE:Button('Unlock All Skins Works In Game(Brakes When Game Ends)',function()
	function AddSkinDataForMissingSkins()
		for i, v in pairs(game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:GetChildren()) do
			local Data = game:GetService("ReplicatedStorage").ItemData.Images.Skins:FindFirstChild(v.Name);
			if not Data then
				local Skin = Instance.new("StringValue");
				Skin.Name = v.Name;
				Skin.Value = "rbxassetid://0";
				Skin.Parent = game:GetService("ReplicatedStorage").ItemData.Images.Skins;

				local Quality = Instance.new("StringValue");
				Quality.Name = "Quality";
				Quality.Value = "Admin";
				Quality.Parent = Skin;
			end
		end
	end

	AddSkinDataForMissingSkins();

	function ApplyUnusual(player, unusual)
		if player and player.Character and player.Character:FindFirstChild("Head") and unusual then
			if player.Character.Head:FindFirstChild("Unusual") then
				player.Character.Head.Unusual:Destroy();
			end
			if player.Character:FindFirstChild("UnusualAnimation") then
				player.Character.UnusualAnimation:Destroy();
			end
			if game.ReplicatedStorage.Unusual:FindFirstChild(unusual) then
				local v76 = game.ReplicatedStorage.Unusual[unusual];
				if v76:FindFirstChild("Orbit") then
					if v76.Orbit.Value then
						local v77 = v76:Clone();
						v77.UnusualAnimation.Part0 = player.Character.Head;
						v77.UnusualAnimation.Part1 = v77;
						v77.Name = "UnusualAnimation";
						v77.Parent = player.Character;
						player.Character.Humanoid:LoadAnimation(v77.Anim):Play();
					else
						local v78 = {};
						local v79 = v76.Attachment:Clone();
						v79.Name = "Unusual";
						v79.Parent = player.Character.Head;
						local v80, v81, v82 = pairs(v76:GetChildren());
						while true do
							local v83, v84 = v80(v81, v82);
							if v83 then

							else
								break;
							end;
							v82 = v83;
							if v84.Name ~= "Attachment" then
								local v85 = v84:Clone();
								v85.Parent = player.Character.Head;
								table.insert(v78, v85);
							end;						
						end;
						if player.Character.Head:FindFirstChild("b1") then
							local v86, v87, v88 = pairs(v79:GetChildren());
							while true do
								local v89, v90 = v86(v87, v88);
								if v89 then

								else
									break;
								end;
								v88 = v89;
								if v90:IsA("Beam") then
									if v90.Name == "BeamA" then
										v90.Attachment0 = player.Character.Head.a1;
										v90.Attachment1 = player.Character.Head.a2;
									elseif v90.Name == "BeamC" then
										v90.Attachment0 = player.Character.Head.c1;
										v90.Attachment1 = player.Character.Head.c2;
									else
										v90.Attachment0 = player.Character.Head.b1;
										v90.Attachment1 = player.Character.Head.b2;
									end;
								end;							
							end;
						end;
						v79.AncestryChanged:connect(function(p15)
							if not p15 then
								local v91, v92, v93 = pairs(v78);
								while true do
									local v94, v95 = v91(v92, v93);
									if v94 then

									else
										break;
									end;
									v93 = v94;
									v95:Destroy();								
								end;
							end;
						end);
					end;
				else
					v78 = {};
					v79 = v76.Attachment:Clone();
					v79.Name = "Unusual";
					v79.Parent = player.Character.Head;
					v80, v81, v82 = pairs(v76:GetChildren());
					while true do
						v83, v84 = v80(v81, v82);
						if v83 then

						else
							break;
						end;
						v82 = v83;
						if v84.Name ~= "Attachment" then
							v85 = v84:Clone();
							v85.Parent = player.Character.Head;
							table.insert(v78, v85);
						end;					
					end;
					if player.Character.Head:FindFirstChild("b1") then
						v86, v87, v88 = pairs(v79:GetChildren());
						while true do
							v89, v90 = v86(v87, v88);
							if v89 then

							else
								break;
							end;
							v88 = v89;
							if v90:IsA("Beam") then
								if v90.Name == "BeamA" then
									v90.Attachment0 = player.Character.Head.a1;
									v90.Attachment1 = player.Character.Head.a2;
								elseif v90.Name == "BeamC" then
									v90.Attachment0 = player.Character.Head.c1;
									v90.Attachment1 = player.Character.Head.c2;
								else
									v90.Attachment0 = player.Character.Head.b1;
									v90.Attachment1 = player.Character.Head.b2;
								end;
							end;						
						end;
					end;
					v79.AncestryChanged:connect(function(p15)
						if not p15 then
							v91, v92, v93 = pairs(v78);
							while true do
								v94, v95 = v91(v92, v93);
								if v94 then

								else
									break;
								end;
								v93 = v94;
								v95:Destroy();							
							end;
						end;
					end);
				end;
			end;
		end;
	end

	function convert_rgb_to_vertex(c3)
		return Vector3.new(c3.R, c3.G, c3.B)
	end

	function GetColor()
		if game:GetService("Players").LocalPlayer.Neutral then
			return game:GetService("Players").LocalPlayer.DesignColor.Value;
		end
		return game:GetService("Players").LocalPlayer.TeamColor;
	end

	function weldAccessory(accessory, character)
		local newAccessory = accessory:Clone();
		newAccessory.Parent = character;
		if newAccessory:FindFirstChild("Handle") then
			local handle = newAccessory.Handle;
			local mesh = handle:FindFirstChildWhichIsA("SpecialMesh");
			if mesh and mesh.VertexColor == Vector3.new(1, 0, 0.749) then
				mesh.VertexColor = convert_rgb_to_vertex(GetColor().Color);
			end
			if tostring(handle.BrickColor) == "Hot pink" then
				handle.BrickColor = GetColor();
				handle.Color = GetColor().Color;
			end
			local AccessoryWeld;
			for i, v in pairs(handle:GetChildren()) do
				if v.Name == "AccessoryWeld" and v.Part1 ~= nil then
					AccessoryWeld = v;
				end
			end
			if AccessoryWeld then
				AccessoryWeld.Part0 = handle;
				AccessoryWeld.Part1 = character[AccessoryWeld.Part1.Name];
			end
		end
	end

	function EquipSkin(skin, character)
		if not character then return warn("[EquipSkin] character not found") end;
		if not character:FindFirstChild("Head") then return warn("[EquipSkin] Head not found") end;
		if not character:FindFirstChild("HumanoidRootPart") then return warn("[EquipSkin] HumanoidRootPart not found") end;
		local chrModel = game:GetService("ReplicatedStorage").StreamedAssets.ChrModels:FindFirstChild(skin);
		if chrModel then
			for i, v in pairs(character:GetChildren()) do
				if v:IsA("Accessory") then
					v.Parent = nil;
				end
			end
			for i, v in pairs(character:GetChildren()) do
				if v:IsA("MeshPart") and (v.Name:match("Arm") or v.Name:match("Hand")) then
					v.Transparency = (game.Players.LocalPlayer.Data.Skin.Value:match("Buff") and 1 or 0);
				end
			end
			local shirt = chrModel:FindFirstChildWhichIsA("Shirt");
			local pants = chrModel:FindFirstChildWhichIsA("Pants");
			local face = chrModel.Head:FindFirstChild("face");
			if chrModel:FindFirstChildWhichIsA("BodyColors") then
				if character:FindFirstChildWhichIsA("BodyColors") then
					character:FindFirstChildWhichIsA("BodyColors"):Destroy();
				end
				local Parts = { "HeadColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "TorsoColor" }
				local bodycolors = chrModel:FindFirstChildWhichIsA("BodyColors"):Clone();
				bodycolors.Parent = character;
				if character:FindFirstChild("FakeHead") then
					character.FakeHead.Color = bodycolors.HeadColor3;
				end
				for i, v in pairs(Parts) do
					if tostring(bodycolors[v]) == "Hot pink" then
						bodycolors[v] = GetColor();
					end
				end
			end
			if shirt then
				if character:FindFirstChildWhichIsA("Shirt") then
					character:FindFirstChildWhichIsA("Shirt").ShirtTemplate = shirt.ShirtTemplate;
				end
			else
				if character:FindFirstChildWhichIsA("Shirt") then
					character:FindFirstChildWhichIsA("Shirt").ShirtTemplate = "rbxassetid://0";
				end
			end
			if pants then
				if character:FindFirstChildWhichIsA("Pants") then
					character:FindFirstChildWhichIsA("Pants").PantsTemplate = pants.PantsTemplate;
				end
			else
				if character:FindFirstChildWhichIsA("Pants") then
					character:FindFirstChildWhichIsA("Pants").PantsTemplate = "rbxassetid://0";
				end
			end
			if face then
				if character:FindFirstChild("FakeHead") then
					if character.FakeHead:FindFirstChild("face") then
						character.FakeHead.face.Texture = face.Texture;
					end
				end
				if character.Head:FindFirstChild("face") then
					character.Head.face.Texture = face.Texture;
				end
			end
			for i, v in pairs(chrModel:GetChildren()) do
				if v:IsA("Accessory") then
					weldAccessory(v, character);
				end
			end
		else
			return warn("[equipSkin] Skin not found")
		end
	end

	local Core = getsenv(game.Players.LocalPlayer.PlayerGui.Menew.LocalScript);

	local Loadout;
	for i,v in pairs(getupvalues(Core.ViewItems)) do
		if typeof(v) == "table" then
			if v.Skins then
				Loadout = v;
			end
		end
	end

	for i,v in pairs(game:GetService("ReplicatedStorage").ItemData.Images:GetChildren()) do
		if v.Name == "Skins" then
			for _, item in pairs(v:GetChildren()) do
				table.insert(Loadout[v.Name], item.Name)
			end
		end
	end

	local Unusuals = { };
	for a, b in pairs(game:GetService("ReplicatedStorage").Unusual:GetChildren()) do
		table.insert(Unusuals, tostring(b));
	end

	for i, v in pairs(Loadout.Skins) do
		local isUnusual = v:split("_")[2];
		if not isUnusual then
			for a, b in pairs(Unusuals) do
				table.insert(Loadout.Skins, ("%s_%s"):format(tostring(v), tostring(b)));
			end
		end
	end

	setupvalue(Core.ViewItems, 1, Loadout);

	local Hooks = loadstring(game:HttpGet("https://pastebinp.com/raw/ByQs3S0R"))();
	local hkGame = Hooks:new(getrawmetatable(game));

	hkGame:Hook("__namecall", function(self, ...) 
		local args = {...};
		if self.Name == "UpdateLoadout" then
			if args[1] and args[1][1] == "UpdateLoadout" then
				local Loadout = args[1][2]
				local unusual = Loadout.Skin:split("_")[2];
				if unusual then
					game.Players.LocalPlayer.Data.Skin.Value = Loadout.Skin:split("_")[1];
					game.Players.LocalPlayer.Data.Skin.Unusual.Value = Loadout.Skin:split("_")[2];
					ApplyUnusual(game:GetService("Players").LocalPlayer, Loadout.Skin:split("_")[2]);
					args[1][2].Skin = Loadout.Skin:split("_")[1];
				else
					game.Players.LocalPlayer.Data.Skin.Value = Loadout.Skin;
					game.Players.LocalPlayer.Data.Skin.Unusual.Value = "";
					if game.Players.LocalPlayer.Character.Head:FindFirstChild("Unusual") then
						game.Players.LocalPlayer.Character.Head.Unusual:Destroy();
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("UnusualAnimation") then
						game.Players.LocalPlayer.Character.UnusualAnimation:Destroy();
					end
				end
			end
		end
		if self.Name == "SpawnMe" then
			spawn(function()
				EquipSkin(game:GetService("Players").LocalPlayer.Data.Skin.Value, game:GetService("Players").LocalPlayer.Character);
			end)
		end
		if self.Name == "GetInventory" then
			setupvalue(Core.ViewItems, 1, Loadout);
		end	
		return hkGame:getOriginal("__namecall")(self, unpack(args));
	end)

	-- Ragdoll Support
	workspace.Debris.ChildAdded:Connect(function(child)
		if child.Name == game:GetService("Players").LocalPlayer.Name then
			EquipSkin(game:GetService("Players").LocalPlayer.Data.Skin.Value, child);
		end
	end)
end)


NFE:Button('Unlock All Teams',function()

	loadstring(game:HttpGet("https://pastebin.com/raw/aq24yqfL"))()
end)

NFE:Button('Press it if Function Above Crashed', function()
	game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer('TRC')
end)

NFE:Button('Destroy Menu (NSFW Warning :> )',function()
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.BPToggle.Visible = true
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.BPToggle.ImageLabel.ToolTip.Value = "Nigga"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LowerBox.Extra.ToolTip.Value = "Sex"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LowerBox.Codes.ToolTip.Value = "Nigger"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LowerBox.Badges.ToolTip.Value = "OH OH"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LowerBox.Settings.ToolTip.Value = "Cum"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.Shop.ImageLabel.TextLabel.Text = "SEXY BOLTS"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.Locker.ImageLabel.TextLabel.Text = "FUCK ME"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.Play.ImageLabel.TextLabel.Text = "OH OH CUM"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LevelMeter.Visible = false
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.ChallengesLabel.ImageLabel.ToolTip.Value = "Porn"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.ServerToggle.Visible = true
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.PlrName.Text = "PornStar"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.StarterPack.Visible = true
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.StarterPack.TextLabel.Text = "Hot Girl For Sale!"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.StarterPack.Timer.Text = "69:21:37"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.StarterPack.Item.Text = "Naughty Girl"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.StarterPack.Item.Text = "free girl with massive ass and pink hair will want sex"
	game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LAZYBUTTON.Visible = true
end)

NFE:Button('Melee GUI by Gbur XD',function()
	loadstring(game:HttpGet("https://pastebin.com/raw/L70HWut1"))()
end)

NFE:Textbox(
	'Server Location',
	true,
	function(locationofdelaservidorprivado)
		game:GetService("ReplicatedStorage").wkspc.Location.Value = locationofdelaservidorprivado
	end)

NFE:Button("Destroy Locks On Grn/Ylw Team(can't join them)",function()
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons.Ylw.lock:Destroy()
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.TeamSelection.Buttons.Grn.lock:Destroy()
end)
NFE:Button("Copys Your user id backwords for nights edge event",function()
	setclipboard(tostring(game.Players.LocalPlayer.UserId):reverse())
end)
NFE:Textbox(
	'Player Joined Name',
	true,
	function(playerenteredxdOMGniggerballs)
		game:GetService("ReplicatedStorage").wkspc.Status.PlayerEntered.Value = playerenteredxdOMGniggerballs
	end)

NFE:Textbox(
	'Player Left Name',
	true,
	function(playerleftxdOMGniggerballs)
		game:GetService("ReplicatedStorage").wkspc.Status.PlayerLeft.Value = playerleftxdOMGniggerballs
	end)

CombatW:Textbox(
	"Enter Targets Name",
	true,
	function(Text) 
		local Config =
			{
				ProtectedName = Text, --What the protected name should be called.
				OtherPlayers = false, --If other players should also have protected names.
				OtherPlayersTemplate = "NameProtect", --Template for other players protected name (ex: "NamedProtect" will turn into "NameProtect1" for first player and so on)
				RenameTextBoxes = false, --If TextBoxes should be renamed. (could cause issues with admin guis/etc)
				UseFilterPadding = false, --If filtered name should be the same size as a regular name.
				FilterPad = " ", --Character used to filter pad.
				UseMetatableHook = true, --Use metatable hook to increase chance of filtering. (is not supported on wrappers like bleu)
				UseAggressiveFiltering = false --Use aggressive property renaming filter. (renames a lot more but at the cost of lag)
			}
		local ProtectedNames = {}
		local Counter = 1
		if Config.OtherPlayers then
			for I, V in pairs(game:GetService("Players"):GetPlayers()) do
				local Filter = Config.OtherPlayersTemplate .. tostring(Counter)
				if Config.UseFilterPadding then
					if string.len(Filter) > string.len(V.Name) then
						Filter = string.sub(Filter, 1, string.len(V.Name))
					elseif string.len(Filter) < string.len(V.Name) then
						local Add = string.len(V.Name) - string.len(Filter)
						for I=1,Add do
							Filter = Filter .. Config.FilterPad
						end
					end
				end
				ProtectedNames[V.Name] = Filter
				Counter = Counter + 1
			end
			game:GetService("Players").PlayerAdded:connect(function(Player)
				local Filter = Config.OtherPlayersTemplate .. tostring(Counter)
				if Config.UseFilterPadding then
					if string.len(Filter) > string.len(V.Name) then
						Filter = string.sub(Filter, 1, string.len(V.Name))
					elseif string.len(Filter) < string.len(V.Name) then
						local Add = string.len(V.Name) - string.len(Filter)
						for I=1,Add do
							Filter = Filter .. Config.FilterPad
						end
					end
				end
				ProtectedNames[Player.Name] = Filter
				Counter = Counter + 1
			end)
		end
		local LPName = game:GetService("Players").LocalPlayer.Name
		local IsA = game.IsA
		if Config.UseFilterPadding then
			if string.len(Config.ProtectedName) > string.len(LPName) then
				Config.ProtectedName = string.sub(Config.ProtectedName, 1, string.len(LPName))
			elseif string.len(Config.ProtectedName) < string.len(LPName) then
				local Add = string.len(LPName) - string.len(Config.ProtectedName)
				for I=1,Add do
					Config.ProtectedName = Config.ProtectedName .. Config.FilterPad
				end
			end
		end
		local function FilterString(S)
			local RS = S
			if Config.OtherPlayers then
				for I, V in pairs(ProtectedNames) do
					RS = string.gsub(RS, I, V)
				end
			end
			RS = string.gsub(RS, LPName, Config.ProtectedName)
			return RS
		end
		for I, V in pairs(game:GetDescendants()) do
			if Config.RenameTextBoxes then
				if IsA(V, "TextLabel") or IsA(V, "TextButton") or IsA(V, "TextBox") then
					V.Text = FilterString(V.Text)
					if Config.UseAggressiveFiltering then
						V:GetPropertyChangedSignal("Text"):connect(function()
							V.Text = FilterString(V.Text)
						end)
					end
				end
			else
				if IsA(V, "TextLabel") or IsA(V, "TextButton") then
					V.Text = FilterString(V.Text)
					if Config.UseAggressiveFiltering then
						V:GetPropertyChangedSignal("Text"):connect(function()
							V.Text = FilterString(V.Text)
						end)
					end
				end
			end
		end

		if Config.UseAggressiveFiltering then
			game.DescendantAdded:connect(function(V)
				if Config.RenameTextBoxes then
					if IsA(V, "TextLabel") or IsA(V, "TextButton") or IsA(V, "TextBox") then
						V:GetPropertyChangedSignal("Text"):connect(function()
							V.Text = FilterString(V.Text)
						end)
					end
				else
					if IsA(V, "TextLabel") or IsA(V, "TextButton") then
						V:GetPropertyChangedSignal("Text"):connect(function()
							V.Text = FilterString(V.Text)
						end)
					end
				end
			end)
		end

		if Config.UseMetatableHook then
			if not getrawmetatable then
				error("GetRawMetaTable not found")
			end
			local NewCC = function(F)
				if newcclosure then return newcclosure(F) end
				return F
			end
			local SetRO = function(MT, V)
				if setreadonly then return setreadonly(MT, V) end
				if not V and make_writeable then return make_writeable(MT) end
				if V and make_readonly then return make_readonly(MT) end
				error("No setreadonly found")
			end
			local MT = getrawmetatable(game)
			local OldNewIndex = MT.__newindex
			SetRO(MT, false)
			MT.__newindex = NewCC(function(T, K, V)
				if Config.RenameTextBoxes then
					if (IsA(T, "TextLabel") or IsA(T, "TextButton") or IsA(T, "TextBox")) and K == "Text" and type(V) == "string" then
						return OldNewIndex(T, K, FilterString(V))
					end
				else
					if (IsA(T, "TextLabel") or IsA(T, "TextButton")) and K == "Text" and type(V) == "string" then
						return OldNewIndex(T, K, FilterString(V))
					end
				end
				return OldNewIndex(T, K, V)
			end)

			SetRO(MT, true)
		end
	end)
CombatW:Textbox(
	"Enter Targets User Id",
	true,
	function(Text) 
		game.Players.LocalPlayer.UserId = Text
	end)
CombatW:Textbox(
	"Enter Targets Skin (View Model)",
	true,
	function(Text)
		game:GetService("Players").LocalPlayer.Data.Skin.Value = Text
	end)

Credits:Button('Join innos discord',function()
	setclipboard("https://discord.gg/N9Xg6xAkfB")
end)


Credits:Label('Bolts Hub private v6')
Credits:Label('Right Ctrl to Toggle the GUI')
Credits:Label('huge ass skid - Owner')
Credits:Label('Cracked by Inno')
Credits:Button('Press for cum',function()
	print("what")
end)


local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

Notification.new("info", "Inno", "sub to inno") -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)

local notif = Notification.new("success", "Success", "Success body message.")
notif:changeHeading("New Heading") -- Args(<string> NewHeading)
notif:changeBody("New Body") -- Args(<string> NewBody)
notif:deleteTimeout(3) -- Args(<number> DeleteWaitTime)
notif:delete()



Combat:Button('Banana Auto-farm v2 (fast))',function()
	while true do wait()
		pcall(function()
			if game.Players.LocalPlayer.Character then
				local lastcfpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				for _,v in pairs(game.Workspace.Debris.Bananas:GetChildren())do
					if v.Name=="Banana"then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
						v.Transparency= 0.1
						repeat wait() until v.Parent == nil or wait(0.1)
					end
				end
			end
		end)
	end
end)

while true do wait(0.1)
	function Message(text)
		if not text then return false end
		x = game:GetService("Players").LocalPlayer.PlayerGui.Menew.Main.LAZYBUTTON
		x.Visible = true
		x.Text = "\240\159\147\162"..text
	end
	Message("get ready to dominate!!")
end