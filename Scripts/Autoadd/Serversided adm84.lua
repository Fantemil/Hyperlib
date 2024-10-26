-- DO NOT SKID
-- made by noxyhub
if game.PlaceId ~= 13864667823 then
	if game.PlaceId == 14775231477 or game.PlaceId == 13864661000 then
		
	-- Free Gamepasses (LOBBY)
		local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/OrionLibKeybind.lua')))()
		local Window = OrionLib:MakeWindow({
			Name = "NoxyHub",
			HidePremium = false,
			SaveConfig = true,
			ConfigFolder = "OrionTest",
			IntroText = "Loading Script..."
		})
		local Tab = Window:MakeTab({
			Name = "Free Gamepasses",
			Icon = "rbxassetid://4483345998",
			PremiumOnly = false
		})
		Tab:AddButton({
			Name = "Free Hacker Role",
			Callback = function()
				game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole:FireServer("Phone", true, false)
			end
		})
		Tab:AddButton({
			Name = "Free Nerd Kid Role",
			Callback = function()
				game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole:FireServer("Book", true, false)
			end
		})
		OrionLib:Init()
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v.Name == "Part" and v:FindFirstChild("TouchInterest") then
				firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
			end
		end
	else
		game:GetService("Players").LocalPlayer:Kick("Error! Game Not Supported!")
	end
else
    	-- Floating Part
	local Part = Instance.new("Part")
	Part.Size = Vector3.new(5, 1, 5)
	Part.Parent = game:GetService("Workspace")
	Part.Anchored = true
	Part.Transparency = 1

	-- Locals
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/OrionLibKeybind.lua')))()
	local Events = game:GetService("ReplicatedStorage"):WaitForChild("Events")
	local SelectedItem = "Med Kit"
	local Damange = 5
	local namecall
	local ScriptLoaded = false
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local Lighting = game:GetService("Lighting")
	local OriginalWalkspeed = LocalPlayer.Character.Humanoid.WalkSpeed
	local OriginalJumpPower = LocalPlayer.Character.Humanoid.JumpPower
	local ModifiedWalkspeed = 50
	local ModifiedJumpPower = 100
	local OriginalBrightness = Lighting.Brightness
	local OriginalFog = Lighting.FogEnd
	local OriginalShadow = Lighting.GlobalShadows
	local HailClone = game:GetService("Workspace").Hails:Clone()
	getgenv().RemoveSlipping = false
	getgenv().SemiGodmode = false

    -- Remove Slipping Handler
	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(self, ...)
		local args = {
			...
		}
		if getnamecallmethod() == 'FireServer' and self.Name == 'IceSlip' and RemoveSlipping == true then
			return task.wait(387420489)
		end
		return old(self, unpack(args))
	end)

    -- Semi-Godmode Handler
	namecall = hookmetamethod(game, "__namecall", function(self, ...)
		local args = {
			...
		}
		if getnamecallmethod() == 'FireServer' and self.Name == 'Energy' then
			if SemiGodmode == true then
				if args[1] < 0 then
					args[1] = 0
				end
			else
				args[1] = args[1]
			end
			return namecall(self, unpack(args))
		end
		return namecall(self, ...)
	end)

-- Tables
	local SecretEndingTable = {
		"HatCollected",
		"MaskCollected",
		"CrowbarCollected"
	}

	local ItemsTable = {
		"Crowbar 1",
		"Crowbar 2",
		"Bat",
		"Pitchfork",
		"Hammer",
		"Wrench",
		"Broom",
		"Armor",
		"Med Kit",
		"Key",
		"Gold Key",
		"Louise",
		"Lollipop",
		"Chips",
		"Golden Apple",
		"Pizza",
		"Gold Pizza",
		"Rainbow Pizza",
		"Rainbow Pizza Box",
		"Book",
		"Phone",
		"Cookie",
		"Apple",
		"Bloxy Cola",
		"Expired Bloxy Cola",
		"Bottle",
		"Ladder",
		"Battery"
	}

	-- Functions
	local function Notify(name, content, image, time)
		OrionLib:MakeNotification({
			Name = name,
			Content = content,
			Image = image,
			Time = time
		})
	end

	local function Delete(Instance)
		pcall(function()
			Events:WaitForChild("OnDoorHit"):FireServer(Instance)
		end)
	end

	local function UnequipAllTools()
		for i, v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = LocalPlayer.Backpack
			end
		end
	end

	local function EquipAllTools()
		for i, v in pairs(LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = LocalPlayer.Character
			end
		end
	end

	local function GiveItem(Item)
		if Item == "Armor" then
			Events:WaitForChild("Vending"):FireServer(3, "Armor2", "Armor", tostring(LocalPlayer), 1)
		elseif Item == "Crowbar 1" or Item == "Crowbar 2" or Item == "Bat" or Item == "Pitchfork" or Item == "Hammer" or Item == "Wrench" or Item == "Broom" then
			Events.Vending:FireServer(3, tostring(Item:gsub(" ", "")), "Weapons", LocalPlayer.Name, 1)
			Notify('Easter EGG', "uwu daddy mwah", 'rbxassetid://4483345998', 3)
		else
			Events:WaitForChild("GiveTool"):FireServer(tostring(Item:gsub(" ", "")))
		end
	end

	local function GetBestTool()
		for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Assets.Note.Note.Note:GetChildren()) do
			if v.Name:match("Circle") and v.Visible == true then
				GiveItem(tostring(v.Name:gsub("Circle", "")))
			end
		end
	end

	local function Train(Ability)
		Events:WaitForChild("RainbowWhatStat"):FireServer(Ability)
	end

	local function TakeDamange(Amount)
		Events:WaitForChild("Energy"):FireServer(-Amount, false, false)
	end

	local function TeleportTo(CFrameArg)
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameArg
	end

	local function GiveAll()
		GetBestTool()
		task.wait(.1)
		GiveItem("Armor")
		task.wait(.1)
		for i = 1, 5 do
			Train("Speed")
			Train("Strength")
		end
		task.wait(.1)
		UnequipAllTools()
		for i = 1, 15 do
			GiveItem("Gold Pizza")
			task.wait(0.05)
		end
	end

	local function HealAllPlayers()
		UnequipAllTools()
		task.wait(.2)
		GiveItem("Golden Apple")
		task.wait(.5)
		LocalPlayer.Backpack:WaitForChild("GoldenApple").Parent = LocalPlayer.Character
		task.wait(.5)
		Events:WaitForChild("HealTheNoobs"):FireServer()
	end

	local function HealYourself()
		GiveItem("Pizza")
		Events.Energy:FireServer(25, "Pizza")
	end

	local function BreakBarricades()
		for i, v in pairs(game:GetService("Workspace").FallenTrees:GetChildren()) do
			for i = 1, 20 do
				if v:FindFirstChild("TreeHitPart") then
					Events.RoadMissionEvent:FireServer(1, v.TreeHitPart, 5)
				end
			end
		end
	end

	local function BreakEnemies()
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").BadGuys:GetChildren()) do
				v:FindFirstChild("Humanoid", true).Health = 0
			end
			for i, v in pairs(game:GetService("Workspace").BadGuysBoss:GetChildren()) do
				v:FindFirstChild("Humanoid", true).Health = 0
			end
			for i, v in pairs(game:GetService("Workspace").BadGuysFront:GetChildren()) do
				v:FindFirstChild("Humanoid", true).Health = 0
			end
		end)
	end

	local function KillEnemies()
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").BadGuys:GetChildren()) do
				Events:WaitForChild("HitBadguy"):FireServer(v, 64.8, 4)
			end
			for i, v in pairs(game:GetService("Workspace").BadGuysBoss:GetChildren()) do
				Events:WaitForChild("HitBadguy"):FireServer(v, 64.8, 4)
			end
			for i, v in pairs(game:GetService("Workspace").BadGuysFront:GetChildren()) do
				Events:WaitForChild("HitBadguy"):FireServer(v, 64.8, 4)
			end
			if game:GetService("Workspace"):FindFirstChild("BadGuyPizza", true) then
				Events:WaitForChild("HitBadguy"):FireServer(game:GetService("Workspace"):FindFirstChild("BadGuyPizza", true), 64.8, 4)
			end
			if game:GetService("Workspace"):FindFirstChild("BadGuyBrute") then
				Events:WaitForChild("HitBadguy"):FireServer(game:GetService("Workspace").BadGuyBrute, 64.8, 4)
			end
		end)
	end

	local function GetDog()
		for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Assets.Note.Note.Note:GetChildren()) do
			if v.Name:match("Circle") and v.Visible == true then
				GiveItem(tostring(v.Name:gsub("Circle", "")))
				task.wait(.1)
				LocalPlayer.Backpack:WaitForChild(tostring(v.Name:gsub("Circle", ""))).Parent = LocalPlayer.Character
				TeleportTo(CFrame.new(-257.56839, 29.4499969, -910.452637, -0.238445505, 7.71292363e-09, 0.971155882, 1.2913591e-10, 1, -7.91029819e-09, -0.971155882, -1.76076387e-09, -0.238445505))
				task.wait(.5)
				Events:WaitForChild("CatFed"):FireServer(tostring(v.Name:gsub("Circle", "")))
			end
		end
		task.wait(2)
		for i = 1, 3 do
			TeleportTo(CFrame.new(-203.533081, 30.4500484, -790.901428, -0.0148558766, 8.85941187e-09, -0.999889672, 2.65695732e-08, 1, 8.46563175e-09, 0.999889672, -2.64408779e-08, -0.0148558766) + Vector3.new(0, 5, 0))
			task.wait(.1)
		end
	end

	local function GetAgent()
		GiveItem("Louise")
		task.wait(.1)
		LocalPlayer.Backpack:WaitForChild("Louise").Parent = LocalPlayer.Character
		Events:WaitForChild("LouiseGive"):FireServer(2)
	end

	local function GetUncle()
		GiveItem("Key")
		task.wait(.1)
		LocalPlayer.Backpack:WaitForChild("Key").Parent = LocalPlayer.Character
		wait(.5)
		Events.KeyEvent:FireServer()
	end

	local function ClickPete()
		fireclickdetector(game:GetService("Workspace").UnclePete.ClickDetector)
	end

	local function CollectCash()
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v.Name == "Part" and v:FindFirstChild("TouchInterest") and v:FindFirstChild("Weld") and v.Transparency == 1 then
				firetouchinterest(v, LocalPlayer.Character.HumanoidRootPart, 0)
			end
		end
	end

	local function GetAllOutsideItems()
		TeleportTo(CFrame.new(-199.240555, 30.0009422, -790.182739, 0.08340507, 2.48169538e-08, 0.996515751, -2.7112752e-09, 1, -2.46767993e-08, -0.996515751, -6.43658127e-10, 0.08340507))
		for i, v in pairs(game:GetService("Workspace").OutsideParts:GetChildren()) do
			fireclickdetector(v.ClickDetector)
		end
		LocalPlayer.Character.Humanoid:MoveTo(LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(-10, 0, 0))
	end

	local function BringAllEnemies()
		pcall(function()
			for i, v in pairs(game:GetService("Workspace").BadGuys:GetChildren()) do
				v.HumanoidRootPart.Anchored = true
				v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4)
			end
			for i, v in pairs(game:GetService("Workspace").BadGuysBoss:GetChildren()) do
				v.HumanoidRootPart.Anchored = true
				v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4)
			end
			
			for i, v in pairs(game:GetService("Workspace").BadGuysFront:GetChildren()) do
				v.HumanoidRootPart.Anchored = true
				v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4)
			end
		end)
	end

	local function Noclip(State)
		LocalPlayer.Character.HumanoidRootPart.CanCollide = State
		for i, v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("MeshPart") then
				v.CanCollide = State
			end
		end
	end

	local function GetSecretEnding()
		for i, v in next, SecretEndingTable do
			Events.LarryEndingEvent:FireServer(v, true)
		end
	end

	local function GetGAppleBadge()
		if game:GetService("Workspace"):FindFirstChild("FallenTrees") then
			for i, v in pairs(game:GetService("Workspace").FallenTrees:GetChildren()) do
				for i = 1, 20 do
					if v:FindFirstChild("TreeHitPart") then
						Events.RoadMissionEvent:FireServer(1, v.TreeHitPart, 5)
					end
				end
			end
			task.wait(1)
			TeleportTo(CFrame.new(61.8781624, 29.4499969, -534.381165, -0.584439218, -1.05103076e-07, 0.811437488, -3.12853778e-08, 1, 1.06993674e-07, -0.811437488, 3.71451705e-08, -0.584439218))
			task.wait(.5)
			fireclickdetector(game:GetService("Workspace").GoldenApple.ClickDetector)
		else
			Notify("Error", "Golden Apple Has Not Spawned Yet, Please Wait Until the First Wave.", 'rbxassetid://4483345998', 3)
		end
	end

	local function AntiMud(Touchable)
		for i, v in pairs(game:GetService("Workspace").BogArea.Bog:GetDescendants()) do
			if v.Name == "Mud" and v:IsA("Part") then
				if Touchable == true then
					v.CanTouch = false
				else 
					v.CanTouch = false
				end
			end
		end
	end

	local function SSAntiWind()
		if game:GetService("Workspace"):FindFirstChild("WavePart") then
			Delete(game:GetService("Workspace").WavePart)
		end
	end

	local function AntiWind()
		if game:GetService("Workspace"):FindFirstChild("WavePart") then
			game:GetService("Workspace").WavePart.CanTouch = false
		end
	end
	
	-- Main Script / GUI
	local Window = OrionLib:MakeWindow({
		Name = "NoxyHub",
		HidePremium = false,
		SaveConfig = false,
		ConfigFolder = "OrionTest",
		IntroText = "Loading Script..."
	})

	local Tab = Window:MakeTab({
		Name = "Game Breaking",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})
	
	Tab:AddLabel("Server-Side Deletion")
	
	local Section = Tab:AddSection({
		Name = "Mass Deletion"
	})

	Tab:AddButton({
		Name = "Delete The Game",
		Callback = function()
			for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
				Delete(v)
			end
		end    
	})

	Tab:AddButton({
		Name = "Delete The House",
		Callback = function()
			for i, v in pairs(game:GetService("Workspace").TheHouse:GetChildren()) do
				if v.Name ~= "FloorLayer" then
					Delete(v)
				end
			end
		end    
	})

	local Section = Tab:AddSection({
		Name = "Humanoid Deletion"
	})

	Tab:AddTextbox({
		Name = "Delete Player's Humanoid",
		Default = "PlayerName",
		TextDisappear = false,
		Callback = function(Value)
			Delete(game:GetService("Workspace")[Value])
		end	  
	})

	Tab:AddButton({
		Name = "Delete Other's Humanoid",
		Callback = function()
			for i, v in pairs(game:GetService("Players"):GetChildren()) do
				if v.Name ~= tostring(game:GetService("Players").LocalPlayer.Name) then
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name), true))
				end
			end
		end    
	})

	Tab:AddButton({
		Name = "Delete Everyone's Humanoid",
		Callback = function()
			for i, v in pairs(game:GetService("Players"):GetChildren()) do
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name), true))
			end
		end    
	})

	local Section = Tab:AddSection({
		Name = "Limbs Deletion"
	})

	Tab:AddTextbox({
		Name = "Delete Player's Limbs",
		Default = "PlayerName",
		TextDisappear = false,
		Callback = function(Value)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).LeftHand)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).LeftFoot)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).LeftLowerArm)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).LeftLowerLeg)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).LeftUpperArm)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).LeftUpperLeg)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).RightFoot)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).RightHand)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).RightLowerArm)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).RightLowerLeg)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).RightUpperArm)
			Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).RightUpperLeg)
		end	  
	})

	Tab:AddButton({
		Name = "Delete Other's Limbs",
		Callback = function()
			for i, v in pairs(game:GetService("Players"):GetChildren()) do
				if v.Name ~= tostring(game:GetService("Players").LocalPlayer.Name) then
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftHand)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftFoot)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftLowerArm)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftLowerLeg)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftUpperArm)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftUpperLeg)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightFoot)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightHand)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightLowerArm)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightLowerLeg)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightUpperArm)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightUpperLeg)
				end
			end
		end    
	})

	Tab:AddButton({
		Name = "Delete Everyone's Limbs",
		Callback = function()
			for i, v in pairs(game:GetService("Players"):GetChildren()) do
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftHand)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftFoot)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftLowerArm)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftLowerLeg)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftUpperArm)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LeftUpperLeg)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightFoot)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightHand)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightLowerArm)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightLowerLeg)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightUpperArm)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).RightUpperLeg)
			end
		end    
	})

	local Section = Tab:AddSection({
		Name = "Character Freezing"
	})

	Tab:AddTextbox({
		Name = "Freeze Player",
		Default = "PlayerName",
		TextDisappear = false,
		Callback = function(Value)
			pcall(function()
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).LowerTorso)
			end)
		end	  
	})

	Tab:AddButton({
		Name = "Freeze Other's Characters",
		Callback = function()
			for i, v in pairs(game:GetService("Players"):GetChildren()) do
				if v.Name ~= tostring(game:GetService("Players").LocalPlayer.Name) and v:FindFirstChild("LowerTorso") then
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LowerTorso)
				end
			end
		end    
	})

	Tab:AddButton({
		Name = "Freeze Everyone's Characters",
		Callback = function()
			for i, v in pairs(game:GetService("Players"):GetChildren()) do
				if v:FindFirstChild("LowerTorso") then
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).LowerTorso)
				end
			end
		end    
	})

	local Section = Tab:AddSection({
		Name = "Kill Players"
	})

	Tab:AddTextbox({
		Name = "Kill Player",
		Default = "PlayerName",
		TextDisappear = false,
		Callback = function(Value)
			pcall(function()
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).Head)
				Delete(game:GetService("Workspace"):FindFirstChild(tostring(Value)).UpperTorso)
			end)
		end	  
	})

	Tab:AddButton({
		Name = "Kill Others",
		Callback = function()
			for i, v in pairs(game:GetService("Players"):GetChildren()) do
				if v.Name ~= tostring(game:GetService("Players").LocalPlayer.Name) then
					pcall(function()
						Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).Head)
						Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).UpperTorso)
					end)
				end
			end
		end    
	})

	Tab:AddButton({
		Name = "Kill Everyone",
		Callback = function()
			for i, v in pairs(game:GetService("Players"):GetChildren()) do
				pcall(function()
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).Head)
					Delete(game:GetService("Workspace"):FindFirstChild(tostring(v.Name)).UpperTorso)
				end)
			end
		end    
	})

	local Section = Tab:AddSection({
		Name = "Delete Models"
	})

	Tab:AddButton({
		Name = "Delete Treadmills",
		Callback = function()
			Delete(game:GetService("Workspace").Tredmills)
		end    
	})

	Tab:AddButton({
		Name = "Delete Benches",
		Callback = function()
			Delete(game:GetService("Workspace").BenchPresses)
		end    
	})

	Tab:AddButton({
		Name = "Delete TV",
		Callback = function()
			Delete(game:GetService("Workspace").TheHouse.Projector)
		end    
	})

	Tab:AddButton({
		Name = "Delete Vending Machines",
		Callback = function()
			Delete(game:GetService("Workspace").VendingMachines)
		end    
	})

	Tab:AddButton({
		Name = "Delete Boss Room",
		Callback = function()
			Delete(game:GetService("Workspace").Final.BossRoom)
		end    
	})

	local Section = Tab:AddSection({
		Name = "Delete Enemies"
	})

	Tab:AddButton({
		Name = "Delete Bad Guys",
		Callback = function()
			for i, v in pairs(game:GetService("Workspace").BadGuys:GetChildren()) do
				Delete(v)
			end
			for i, v in pairs(game:GetService("Workspace").BadGuysBoss:GetChildren()) do
				Delete(v)
			end
			for i, v in pairs(game:GetService("Workspace").BadGuysFront:GetChildren()) do
				Delete(v)
			end
		end    
	})

	Tab:AddButton({
		Name = "Delete Pizza Miniboss",
		Callback = function()
			Delete(game:GetService("Workspace"):FindFirstChild("BadGuyPizza", true))
		end    
	})

	Tab:AddButton({
		Name = "Delete Brute",
		Callback = function()
			Delete(game:GetService("Workspace").BadGuyBrute)
		end    
	})

	Tab:AddButton({
		Name = "Delete Scary Mary",
		Callback = function()
			if game:GetService("Workspace"):FindFirstChild("Villainess") then
				Delete(game:GetService("Workspace").Villainess)
			else
				Notify('Warning', "Scary Marry Is Already Deleted Or Boss Fight Hasnt Started!", 'rbxassetid://4483345998', 7)
			end
		end
	})

	Tab:AddButton({
		Name = "Delete Scary Larry",
		Callback = function()
			if game:GetService("Workspace"):FindFirstChild("BigBoss") then
				Delete(game:GetService("Workspace").BigBoss)
			else
				Notify('Warning', "Scary Larry Is Already Deleted Or Boss Fight Hasnt Started!", 'rbxassetid://4483345998', 7)
			end
		end
	})

	local Section = Tab:AddSection({
		Name = "Weather Modifications"
	})

	Tab:AddToggle({
		Name = "Remove Wind For Everyone",
		Default = false,
		Callback = function(Value)
			getgenv().NoWindSS = Value
			while NoWindSS == true do
				SSAntiWind() 
				task.wait(.1)
			end
		end    
	})

	Tab:AddButton({
		Name = "Remove Ice For Everyone",
		Callback = function()
			Delete(game:GetService("Workspace").Terrain)
		end    
	})

	Tab:AddButton({
		Name = "Remove Hailing For Everyone",
		Callback = function()
			Delete(game:GetService("Workspace").Hails)
		end    
	})

	Tab:AddButton({
		Name = "Remove Mud For Everyone",
		Callback = function()
			for i, v in pairs(game:GetService("Workspace").BogArea.Bog:GetDescendants()) do
				if v.Name == "Mud" and v:IsA("Part") then
					Delete(v)
				end
			end
		end    
	})
	
	local Tab = Window:MakeTab({
		Name = "Overpowered",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local Section = Tab:AddSection({
		Name = "Item Giver"
	})

	Tab:AddParagraph("Note:", "Getting/Spamming Multiple Of 1 Type Of Items May Cause The Item To Break And Be Unuseable/Unequippable.\nIt Is Recommended To Only Grab 1 Item At Once, Especially If Its An Item Everyone Can Use.")

	Tab:AddDropdown({
		Name = "Item",
		Default = "Med Kit",
		Options = ItemsTable,
		Callback = function(Value)
			if Value == 'Book' or Value == 'Phone' then
				Notify('Warning', Value .. " Wont Work Unless You Own The Corresponding Gamepass.", 'rbxassetid://4483345998', 7)
			end
			SelectedItem = Value
		end
	})

	Tab:AddButton({
		Name = "Get Item",
		Callback = function()
			GiveItem(SelectedItem)
		end
	})

	local Section = Tab:AddSection({
		Name = "Training"
	})

	Tab:AddButton({
		Name = "Train Strength",
		Callback = function()
			Train("Strength")
		end
	})

	Tab:AddButton({
		Name = "Train Speed",
		Callback = function()
			Train("Speed")
		end
	})

	local Section = Tab:AddSection({
		Name = "Heal Youself"
	})

	Tab:AddButton({
		Name = "Heal Yourself",
		Callback = function()
			for i = 1, 10 do
				HealYourself()
			end
		end
	})

	Tab:AddToggle({
		Name = "Loop Heal Yourself",
		Default = false,
		Callback = function(Value)
			getgenv().HealLoop = Value
			while HealLoop do
				HealYourself()
				task.wait(.1)
			end
		end
	})

	local Section = Tab:AddSection({
		Name = "Heal All"
	})

	Tab:AddButton({
		Name = "Heal All",
		Callback = function()
			HealAllPlayers()
		end
	})

	Tab:AddToggle({
		Name = "Loop Heal All",
		Default = false,
		Callback = function(Value)
			getgenv().HealAllLoop = Value
			while HealAllLoop do
				HealAllPlayers()
				task.wait(3)
			end
		end
	})

	local Section = Tab:AddSection({
		Name = "Quality Of Life"
	})

	Tab:AddToggle({
		Name = "Semi-Godmode",
		Default = false,
		Callback = function(Value)
			getgenv().SemiGodmode = Value
			if SemiGodmode == true then
				Notify('Info', "What Semi-Godmode Works On: Special Attacks (Pizza Boss's Pepper Attack, All Scarry Larry/Marry Attacks Except Monster Spawner), Hailing And Possibly Some Others\nWhat Semi-Godmode Doesnt Work On: Enemies, Ice (Use Anti Slip), Getting Locked In A Room While An Enemy Wave Comes, And Possibly Some Others.", 'rbxassetid://4483345998', 7)
			end
		end
	})

	Tab:AddToggle({
		Name = "Remove Slipping",
		Default = false,
		Callback = function(Value)
			getgenv().RemoveSlipping = Value
			if RemoveSlipping == true then
				Notify('Easter EGG', "Galaxy is the best.", 'rbxassetid://4483345998', 7)
			end
		end
	})

	Tab:AddToggle({
		Name = "Remove Hailing",
		Default = false,
		Callback = function(Value)
			if Value == false then
				if ScriptLoaded == true then
					HailClone.Parent = game:GetService("Workspace")
				end
			else
				HailClone = game:GetService("Workspace").Hails:Clone()
				game:GetService("Workspace").Hails:Destroy()
			end
		end
	})

	Tab:AddToggle({
		Name = "Remove Wind",
		Default = false,
		Callback = function(Value)
			getgenv().NoWind = Value
			while NoWind == true do
				AntiWind()
				task.wait(.5)
			end
		end
	})

	Tab:AddToggle({
		Name = "Remove Mud",
		Default = false,
		Callback = function(Value)
			AntiMud(Value)
		end
	})

	local Section = Tab:AddSection({
		Name = "Kitchen Food"
	})

	Tab:AddSlider({
		Name = "Table Food Slot",
		Min = 0,
		Max = 4,
		Default = 1,
		Color = Color3.fromRGB(0, 255, 0),
		Increment = 1,
		ValueName = "",
		Callback = function(Value)
			Position = Value
		end    
	})
	
	Tab:AddButton({
		Name = "Spawn Pizza Box",
		Callback = function()
			Events:WaitForChild("OutsideFood"):FireServer(6, {
				["item2"] = "Pizza",
				["placement"] = Position
			})
		end    
	})
	
	Tab:AddButton({
		Name = "Spawn Bloxy Cola",
		Callback = function()
			Events:WaitForChild("OutsideFood"):FireServer(6, {
				["item2"] = "BloxyPack",
				["placement"] = Position
			})
		end    
	})

	local Section = Tab:AddSection({
		Name = "Others"
	})

	Tab:AddToggle({
		Name = "Lag/Crash The Server",
		Default = false,
		Callback = function(Value)
			while Value == true do 
				for i = 1, 10 do
					for i = 1, 4 do
						Events:WaitForChild("OutsideFood"):FireServer(6, {
							["item2"] = "Pizza",
							["placement"] = i
						})
						Events:WaitForChild("OutsideFood"):FireServer(6, {
							["item2"] = "BloxyPack",
							["placement"] = i
						})
					end
				end
				task.wait(.1)
			end
		end    
	})

	Tab:AddButton({
		Name = "Break The Game",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.UnclePete.PrimaryPart.CFrame
			task.wait(.5)
			game.Workspace.UnclePete:MoveTo(Vector3.new(math.huge, math.huge, math.huge))	
		end    
	})

	Tab:AddButton({
		Name = "Teleport To Private Lobby",
		Callback = function()
			game:GetService("TeleportService"):Teleport(14775231477, LocalPlayer)
		end
	})

	Tab:AddButton({
		Name = "Unlock Secret Ending",
		Callback = function()
			GetSecretEnding()
		end
	})

	Tab:AddButton({
		Name = "Get The Best Weapon",
		Callback = function()
			GetBestTool()
		end
	})

	Tab:AddButton({
		Name = "Get All Equipment",
		Callback = function()
			GiveAll()
		end
	})

	local Tab = Window:MakeTab({
		Name = "Teleports",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local Section = Tab:AddSection({
		Name = "Main"
	})

	Tab:AddButton({
		Name = "Boss Fight",
		Callback = function()
			TeleportTo(CFrame.new(-1565.78772, -368.711945, -1040.66626, 0.0929690823, -1.97564436e-08, 0.995669007, -1.53269308e-08, 1, 2.1273511e-08, -0.995669007, -1.72383299e-08, 0.0929690823))
		end
	})

	Tab:AddButton({
		Name = "Shop",
		Callback = function()
			TeleportTo(CFrame.new(-246.653229, 30.4500484, -847.319275, 0.999987781, -9.18427645e-08, -0.00494772941, 9.19905787e-08, 1, 2.96483353e-08, 0.00494772941, -3.01031164e-08, 0.999987781))
		end
	})

	Tab:AddButton({
		Name = "Kitchen",
		Callback = function()
			TeleportTo(CFrame.new(-249.753555, 30.4500484, -732.703125, -0.999205947, -1.97705017e-08, 0.0398429185, -2.00601384e-08, 1, -6.86967372e-09, -0.0398429185, -7.66347341e-09, -0.999205947))
		end
	})

	Tab:AddButton({
		Name = "Fighting Arena",
		Callback = function()
			TeleportTo(CFrame.new(-255.521988, 62.7139359, -723.436035, -0.0542500541, 4.28905356e-09, -0.998527408, 1.07862625e-08, 1, 3.70936082e-09, 0.998527408, -1.05691456e-08, -0.0542500541))
		end
	})

	Tab:AddButton({
		Name = "The Gym",
		Callback = function()
			TeleportTo(CFrame.new(-256.477448, 63.4500465, -840.825562, 0.999789953, 2.17116263e-08, 0.020495005, -2.15169358e-08, 1, -9.7199333e-09, -0.020495005, 9.27690191e-09, 0.999789953))
		end
	})

	Tab:AddButton({
		Name = "Golden Apple",
		Callback = function()
			TeleportTo(CFrame.new(61.8781624, 29.4499969, -534.381165, -0.584439218, -1.05103076e-07, 0.811437488, -3.12853778e-08, 1, 1.06993674e-07, -0.811437488, 3.71451705e-08, -0.584439218))
		end
	})

	Tab:AddButton({
		Name = "Feeding Instructions",
		Callback = function()
			TeleportTo(CFrame.new(-207.885056, 60.4500465, -830.583557, 0.118373089, 3.89876789e-08, -0.992969215, 3.47791551e-09, 1, 3.96783406e-08, 0.992969215, -8.15031065e-09, 0.118373089))
		end
	})

	Tab:AddButton({
		Name = "Middle Room",
		Callback = function()
			TeleportTo(CFrame.new(-209.951859, 30.4590473, -789.723877, -0.0485812724, 6.74905039e-08, 0.998819232, 1.19352916e-09, 1, -6.75122394e-08, -0.998819232, -2.08771045e-09, -0.0485812724))
		end
	})

	Tab:AddButton({
		Name = "Scarry Mary Pillar",
		Callback = function()
			TeleportTo(CFrame.new(-1501.49597, -325.156891, -1060.63367, -0.691015959, 7.43958628e-09, 0.722839475, -5.03345055e-09, 1, -1.51040194e-08, -0.722839475, -1.40754954e-08, -0.691015959))
		end
	})

	Tab:AddButton({
		Name = "Outside Loot",
		Callback = function()
			TeleportTo(game:GetService("Workspace").OutsideParts:FindFirstChildWhichIsA("Part", true).CFrame + Vector3.new(10, 0, 0))
		end
	})

	Tab:AddButton({
		Name = "Experiment Room",
		Callback = function()
			TeleportTo(game:GetService("Workspace").Final.Factory.RedDesk.Drawer:GetChildren()[2].CFrame + Vector3.new(20, 0, 0))
		end
	})

	Tab:AddButton({
		Name = "Cafeteria",
		Callback = function()
			TeleportTo(game:GetService("Workspace").Final.Factory:FindFirstChild("Legs", true).CFrame)
		end
	})

	Tab:AddButton({
		Name = "Rainbow Pizza Box",
		Callback = function()
			TeleportTo(game:GetService("Workspace").RainbowPizzaBox.CFrame)
		end
	})

	local Section = Tab:AddSection({
		Name = "Npc's"
	})

	Tab:AddButton({
		Name = "Secret Agent Bradley",
		Callback = function()
			TeleportTo(CFrame.new(-281.792053, 95.4500275, -790.556946, -0.116918251, -7.95074726e-08, -0.993141532, -2.79918044e-09, 1, -7.97270019e-08, 0.993141532, -6.54155974e-09, -0.116918251))
		end
	})

	Tab:AddButton({
		Name = "Twando The Dog",
		Callback = function()
			TeleportTo(CFrame.new(-257.56839, 29.4499969, -910.452637, -0.238445505, 7.71292363e-09, 0.971155882, 1.2913591e-10, 1, -7.91029819e-09, -0.971155882, -1.76076387e-09, -0.238445505))
		end
	})

	Tab:AddButton({
		Name = "Uncle Pete",
		Callback = function()
			TeleportTo(CFrame.new(-294.208923, 63.4182587, -737.712036, -0.998669028, -7.34403613e-08, -0.05157727, -7.2258743e-08, 1, -2.47743781e-08, 0.05157727, -2.1014495e-08, -0.998669028))
		end
	})

	local Section = Tab:AddSection({
		Name = "Secret Ending"
	})

	Tab:AddButton({
		Name = "Golden Crowbar",
		Callback = function()
			TeleportTo(CFrame.new(-147.337204, 29.4477005, -929.365295, 0.756779075, 4.53537341e-09, -0.653670728, 5.82708326e-09, 1, 1.36845468e-08, 0.653670728, -1.4165173e-08, 0.756779075))
		end
	})

	Tab:AddButton({
		Name = "Purple Mask",
		Callback = function()
			TeleportTo(CFrame.new(102.560722, 29.2477055, -976.389954, -0.951403797, 3.76210636e-08, -0.307946175, 1.89752569e-08, 1, 6.35433466e-08, 0.307946175, 5.46120233e-08, -0.951403797))
		end
	})

	Tab:AddButton({
		Name = "Homeless Kid",
		Callback = function()
			TeleportTo(CFrame.new(-79.4871826, 29.4477024, -932.782715, -0.215949073, 3.18771427e-08, 0.976404607, -7.60385461e-08, 1, -4.94647345e-08, -0.976404607, -8.49262562e-08, -0.215949073))
		end
	})

	local Tab = Window:MakeTab({
		Name = "Humanoid",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local Section = Tab:AddSection({
		Name = "Settings"
	})

	Tab:AddSlider({
		Name = "Walk Speed",
		Min = 0,
		Max = 500,
		Default = 50,
		Color = Color3.fromRGB(0, 255, 0),
		Increment = 1,
		ValueName = "Speed",
		Callback = function(Value)
			ModifiedWalkspeed = Value
		end    
	})

	Tab:AddSlider({
		Name = "Jump Power",
		Min = 0,
		Max = 500,
		Default = 100,
		Color = Color3.fromRGB(0, 255, 0),
		Increment = 1,
		ValueName = "Power",
		Callback = function(Value)
			ModifiedJumpPower = Value
		end    
	})

	local Section = Tab:AddSection({
		Name = "Humanoid"
	})

	Tab:AddToggle({
		Name = "Enable Walk Speed",
		Default = false,
		Callback = function(Value)
			if Value == true then
				OriginalWalkspeed = LocalPlayer.Character.Humanoid.WalkSpeed
				LocalPlayer.Character.Humanoid.WalkSpeed = ModifiedWalkspeed
			else
				LocalPlayer.Character.Humanoid.WalkSpeed = OriginalWalkspeed
			end
		end    
	})

	Tab:AddToggle({
		Name = "Enable Jump Power",
		Default = false,
		Callback = function(Value)
			if Value == true then
				OriginalJumpPower = LocalPlayer.Character.Humanoid.JumpPower
				LocalPlayer.Character.Humanoid.JumpPower = ModifiedJumpPower
				LocalPlayer.Character.Humanoid.UseJumpPower = Value
			else
				LocalPlayer.Character.Humanoid.JumpPower = OriginalJumpPower
			end
		end    
	})

	Tab:AddToggle({
		Name = "Enable Noclip",
		Default = false,
		Callback = function(Value)
			getgenv().Noclipping = Value
			if Noclipping == true then
				spawn(function()
					while Noclipping == true do
						Noclip(false)
						task.wait(.05)
					end
				end)
			end
			if Noclipping == false then
				Noclip(true)
			end
		end
	})

	Tab:AddToggle({
		Name = "Enable Floating",
		Default = false,
		Callback = function(Value)
			getgenv().Float = Value
			if Float == true then
				spawn(function()
					while Float == true do
						Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
						task.wait(.05)
					end
				end)
			end
			if Float == false then
				Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 999, 0)
			end
		end
	})

	local Tab = Window:MakeTab({
		Name = "Combat",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local Section = Tab:AddSection({
		Name = "Kill Enemies"
	})

	Tab:AddButton({
		Name = "Kill All Enemies",
		Callback = function()
			for i = 1, 10 do
				KillEnemies()
			end
		end
	})

	Tab:AddToggle({
		Name = "Loop Kill All",
		Default = false,
		Callback = function(Value)
			getgenv().KillAllLoop = Value
			while KillAllLoop do
				for i = 1, 3 do
					KillEnemies()
				end
				task.wait(.1)
			end
		end
	})

	local Section = Tab:AddSection({
		Name = "Break Enemies"
	})

	Tab:AddButton({
		Name = "Break All Enemies",
		Callback = function()
			BreakEnemies()
		end
	})

	Tab:AddToggle({
		Name = "Loop Break All",
		Default = false,
		Callback = function(Value)
			getgenv().BreakAllLoop = Value
			while BreakAllLoop do
				BreakEnemies()
				task.wait(1)
			end
		end
	})

	local Section = Tab:AddSection({
		Name = "Bring Enemies"
	})
	
	Tab:AddButton({
		Name = "Bring All Enemies",
		Callback = function()
			BringAllEnemies()
		end
	})

	Tab:AddToggle({
		Name = "Loop Bring All",
		Default = false,
		Callback = function(Value)
			getgenv().BringAllLoop = Value
			while BringAllLoop do
				BringAllEnemies()
				task.wait(.1)
			end
		end
	})

	local Tab = Window:MakeTab({
		Name = "Badges",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	Tab:AddButton({
		Name = "Dream Team (And The 3 Below)",
		Callback = function()
			GetDog()
			task.wait(5)
			GetAgent()
			task.wait(1)
			GetUncle()
		end
	})

	Tab:AddButton({
		Name = "Operation: Dog Rescue",
		Callback = function()
			GetDog()
		end
	})

	Tab:AddButton({
		Name = "Wake Up, Bradley!",
		Callback = function()
			GetAgent()
		end
	})

	Tab:AddButton({
		Name = "Uncle Pete's Return",
		Callback = function()
			GetUncle()
		end
	})

	Tab:AddButton({
		Name = "The Golden Apple",
		Callback = function()
			GetGAppleBadge()
		end    
	})

	Tab:AddButton({
		Name = "Delivery's Here",
		Callback = function()
			GetAllOutsideItems()
		end    
	})

	Tab:AddButton({
		Name = "So Speedy",
		Callback = function()
			for i = 1, 5 do
				Train("Speed")
			end
		end
	})

	Tab:AddButton({
		Name = "So Strong",
		Callback = function()
			for i = 1, 5 do
				Train("Strength")
			end
		end
	})

	Tab:AddButton({
		Name = "Reformed",
		Callback = function()
			GetSecretEnding()
		end
	})

	Tab:AddButton({
		Name = "Avoid Humiliation",
		Callback = function()
			GiveAll()
			task.wait(4)
			GetDog()
			task.wait(5)
			GetAgent()
			task.wait(1)
			GetUncle()
		end
	})

	local Tab = Window:MakeTab({
		Name = "Misc",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local Section = Tab:AddSection({
		Name = "Harmful"
	})

	Tab:AddSlider({
		Name = "Damange Amount",
		Min = 0,
		Max = 200,
		Default = 5,
		Color = Color3.fromRGB(0, 255, 0),
		Increment = 1,
		ValueName = "Damange",
		Callback = function(Value)
			Damange = Value
		end
	})

	Tab:AddButton({
		Name = "Damange Yourself",
		Callback = function()
			if SemiGodmode == false then
				TakeDamange(Damange)
			else
				Notify('Warning', "Damanging Yourself Won't Work Due To Having 'Semi Godmode' Enabled!", 'rbxassetid://4483345998', 7)
			end
		end
	})

	Tab:AddButton({
		Name = "Slip",
		Callback = function()
			if RemoveSlipping == false then
				Events:WaitForChild("IceSlip"):FireServer(Vector3.new(0, 0, 0))
			else
				Notify('Warning', "Slipping Won't Work Due To Having 'Remove Slipping' Enabled!", 'rbxassetid://4483345998', 7)
			end
		end
	})
        
	local Section = Tab:AddSection({
		Name = "Tools"
	})

	Tab:AddButton({
		Name = "Equip All",
		Callback = function()
			EquipAllTools()
		end
	})

	Tab:AddButton({
		Name = "Unequip All",
		Callback = function()
			UnequipAllTools()
		end
	})

	local Section = Tab:AddSection({
		Name = "Bosses"
	})

	Tab:AddButton({
		Name = "Delete Scary Mary",
		Callback = function()
			if game:GetService("Workspace"):FindFirstChild("Villainess") then
				game:GetService("Workspace").Villainess:Destroy()
			else
				Notify('Warning', "Scary Marry Is Already Deleted Or Boss Fight Hasnt Started!", 'rbxassetid://4483345998', 7)
			end
		end
	})

	Tab:AddButton({
		Name = "Delete Scary Larry",
		Callback = function()
			if game:GetService("Workspace"):FindFirstChild("BigBoss") then
				game:GetService("Workspace").BigBoss:Destroy()
			else
				Notify('Warning', "Scary Larry Is Already Deleted Or Boss Fight Hasnt Started!", 'rbxassetid://4483345998', 7)
			end
		end
	})

	local Section = Tab:AddSection({
		Name = "NPC's"
	})

	Tab:AddButton({
		Name = "Get All NPC's",
		Callback = function()
			GetDog()
			task.wait(5)
			GetAgent()
			task.wait(1)
			GetUncle()
		end
	})

	Tab:AddButton({
		Name = "Get Dog",
		Callback = function()
			GetDog()
		end
	})

	Tab:AddButton({
		Name = "Get Agent Bradley",
		Callback = function()
			GetAgent()
		end
	})

	Tab:AddButton({
		Name = "Get Uncle Pete",
		Callback = function()
			GetUncle()
		end
	})

	local Section = Tab:AddSection({
		Name = "Cash"
	})

	Tab:AddButton({
		Name = "Collect Cash",
		Callback = function()
			CollectCash()
		end    
	})

	Tab:AddToggle({
		Name = "Auto Collect Cash",
		Default = false,
		Callback = function(Value)
			getgenv().CollectAllCash = Value

			while CollectAllCash do
				CollectCash()
				task.wait(1)
			end
		end    
	})

	local Section = Tab:AddSection({
		Name = "Others"
	})
	
	Tab:AddToggle({
		Name = "Auto Claim Uncle Pete Quests",
		Default = false,
		Callback = function(Value)
			getgenv().AutoPete = Value

			while AutoPete do
				ClickPete()
				task.wait(10)
			end
		end    
	})

	Tab:AddButton({
		Name = "Get All Items From Outside",
		Callback = function()
			GetAllOutsideItems()
		end    
	})

	Tab:AddButton({
		Name = "Break Fallen Trees",
		Callback = function()
			BreakBarricades()
		end    
	})

	Tab:AddToggle({
		Name = "Hidden Items ESP",
		Default = false,
		Callback = function(Value)
			if Value == true then
				for i, v in pairs(game:GetService("Workspace").Hidden:GetChildren()) do
					local highlight = Instance.new("Highlight")
					highlight.Parent = v
					highlight.FillColor = Color3.fromRGB(255, 0, 255)
					highlight.FillTransparency = 0
					highlight.OutlineTransparency = 0
					highlight.OutlineColor = Color3.fromRGB(0, 0, 255)
				end
			else
				for i, v in pairs(game:GetService("Workspace").Hidden:GetChildren()) do
					if v:FindFirstChild("Highlight") then
						v:FindFirstChild("Highlight"):Destroy()
					end
				end
			end
		end    
	})

	Tab:AddToggle({
		Name = "Full Bright",
		Default = false,
		Callback = function(Value)
			if Value == true then
				Lighting.Brightness = 1
				Lighting.FogEnd = 999999
				Lighting.GlobalShadows = false
			else
				Lighting.Brightness = OriginalBrightness
				Lighting.FogEnd = OriginalFog
				Lighting.GlobalShadows = GlobalShadows
			end
		end    
	})

	Notify('Loaded!', "Script Successfully Loaded!", 'rbxassetid://4483345998', 15)
	ScriptLoaded = true
	OrionLib:Init()
end