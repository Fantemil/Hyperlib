local OrionLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/shlexware/Orion/main/source")()
local Window = OrionLib:MakeWindow({Name = "Cloud hub", HidePremium = false, SaveConfig = true, ConfigFolder = "CloudHub"})
local PlayerName = game.Players.LocalPlayer.Name
OrionLib:MakeNotification({
	Name = "Executed!",
	Content = "Made by AlexKrut#9982",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Autofarms = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local cooltoggle = Autofarms:AddToggle({
	Name = "Autofarm (FAST)",
	Default = false,
	Flag = "toggle",
	Callback = function(AutoFast)
		getgenv().FARMFAST = AutoFast
		if AutoFast == true then
			repeat
				wait(4)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(0.7)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(0.7)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(0.7)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(0.7)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(0.7)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(0.7)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(0.7)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(0.7)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(0.7)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(0.7)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger.CFrame
				wait(18)
				workspace.ClaimRiverResultsGold:FireServer()
				wait(10)
			until getgenv().FARMFAST == false 
			if getgenv().FARMFAST == false then
				Float:Destroy()
			end
			end
		end
})
local cooltoggle1 = Autofarms:AddToggle({
	Name = "Autofarm (MEDIUM)",
	Default = false,
	Flag = "toggle1",
	Callback = function(AutoMed)
		getgenv().FARMMED = AutoMed
		if AutoMed == true then
			repeat
				wait(4)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(1.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(1.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(1.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(1.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(1.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(1.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(1.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(1.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(1.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(1.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger.CFrame
				wait(3)
						--Players
		    	Players = game.Players
				--Localplayer
   				 LocalPlayer = Players.LocalPlayer
   				 Character = workspace:FindFirstChild(LocalPlayer.Name)
				Character.Head:Destroy()
				wait(18)
				workspace.ClaimRiverResultsGold:FireServer()
				wait(10)
				
			until getgenv().FARMMED == false
			if getgenv().FARMMED == false then
				Float:Destroy()
			end
			end
	end    
})
local cooltoggle2 = Autofarms:AddToggle({
	Name = "Autofarm (SLOW)",
	Default = false,
	Callback = function(AutoSlow)
		getgenv().FARMSLOW = AutoSlow
		if AutoSlow == true then
			repeat
				wait(4)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(3)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage2.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(3)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage3.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(3)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage4.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(3)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage5.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(3)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage6.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(3)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage7.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(3)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage8.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(3)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage9.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(3)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame
				local Float = Instance.new('Part')
	  			Float.Name = "FLOAT"
				Float.Parent = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart
				Float.Transparency = 1
				Float.Size = Vector3.new(5,0.2,5)
				Float.Anchored = true
				Float.CFrame = game.Workspace.BoatStages.NormalStages.CaveStage10.DarknessPart.CFrame * CFrame.new(0, -3.1 , 0)
				wait(3)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger.CFrame
				wait(18)
				workspace.ClaimRiverResultsGold:FireServer()
				wait(10)
			until getgenv().FARMSLOW == false
			if getgenv().FARMSLOW == false then
				Float:Destroy()
			end
			end
	end    
})

local TPS = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
TPS:AddButton({
	Name = "TP to Red Team",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(427.746552, 0.8000021, -64.7801361, 0, 0, 1, 0, 1, -0, -1, 0, 0)
  	end    
})
TPS:AddButton({
	Name = "TP to Green Team",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-534.877563, 0.8000021, 293.56665, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  	end    
})
TPS:AddButton({
	Name = "TP to Blue Team",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(427.746552, 0.8000021, 300.219849, 0, 0, 1, 0, 1, -0, -1, 0, 0)
  	end    
})
TPS:AddButton({
	Name = "TP to Yellow Team",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-534.877563, 0.8000021, 640.56665, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  	end    
})
TPS:AddButton({
	Name = "TP to Black Team",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-534.877563, 0.8000021, -69.433342, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  	end    
})
TPS:AddButton({
	Name = "TP to Magenta Team",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(427.746552, 0.8000021, 647.219849, 0, 0, 1, 0, 1, -0, -1, 0, 0)
  	end    
})
TPS:AddButton({
	Name = "TP to White Team",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-49.8510132, 0.8000021, -551.420044, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})
TPS:AddButton({
	Name = "TP to End",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.7065125, -340.739624, 9452.35645, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  	end    
})

local Chests = Window:MakeTab({
	Name = "Chests",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
getgenv().ChestCounts = 0
Chests:AddDropdown({
	Name = "Chest Count",
	Default = "1",
	Options = {"1", "5", "10", "15", "20", "30", "40", "50", "70", "100"},
	Callback = function(ChestCountts)
		getgenv().ChestCounts = ChestCountts
	end    
})
Chests:AddDropdown({
	Name = "Chest type",
	Default = "None",
	Options = {"None", "Common Chest", "Uncommon Chest", "Rare Chest", "Epic Chest", "Legendary Chest"},
	Callback = function(ChestValue)
		getgenv().ChestName = ChestValue
	end    
})
Chests:AddButton({
	Name = "Buy chests!",
	Callback = function()
      		if getgenv().ChestName == none then return
      		else
      			local args = {
      				[1] = getgenv().ChestName,
      				[2] = tonumber(getgenv().ChestCounts)
      			}
workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
	end
  	end    
})

local Morph = Window:MakeTab({
	Name = "Morphs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Morph:AddButton({
	Name = "Morph to fox",
	Callback = function()
      		CC = game:GetService("Workspace").ChangeCharacter
            CC:FireServer("FoxCharacter")
  	end    
})
Morph:AddButton({
	Name = "Morph to penguin",
	Callback = function()
      		CC = game:GetService("Workspace").ChangeCharacter
            CC:FireServer("PenguinCharacter")
  	end    
})
Morph:AddButton({
	Name = "Morph to chicken",
	Callback = function()
      		CC = game:GetService("Workspace").ChangeCharacter
            CC:FireServer("ChickenCharacter")
  	end    
})


local Character = Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local a
local nocliptoggle = Character:AddToggle({
    Name = "Noclip",
    Default = false,
    Flag = "nocliptgle",
    Callback = function(Value)
    local zhopa = Value
        getgenv().turn = zhopa
        if getgenv().turn == true then
            a = game:GetService("RunService").Stepped:Connect(function()
                for i, v in pairs(game.Workspace[PlayerName]:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
        elseif getgenv().turn == false then
            a:Disconnect()
    end
end
end)
end
end
})

Character:AddButton({
	Name = "Water destroy",
	Callback = function()
		game.Workspace[PlayerName].WaterDetector:Destroy()
	end
})

OrionLib:MakeNotification({
	Name = "Noclip",
	Content = "Noclip was activated, you can disable it in Character tab",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local WalkSpeedreset = Character:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(0,255,255),
	Increment = 2,
	ValueName = "WalkSpeed",
	Callback = function(WalkValue)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkValue
	end    
})
Character:AddButton({
	Name = "WalkSpeed reset",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
      		WalkSpeedreset:Set(16)
  	end
})
local JPreset = Character:AddSlider({
	Name = "JumpPower",
	Min = 0,
	Max = 350,
	Default = 50,
	Color = Color3.fromRGB(255,0,0),
	Increment = 2,
	ValueName = "JumpPower",
	Callback = function(JumpPowerValue)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPowerValue
	end    
})
Character:AddButton({
	Name = "JumpPower reset",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
      		JPreset:Set(50)
  	end
})
local HPreset = Character:AddSlider({
	Name = "HipHeight",
	Min = 0,
	Max = 100,
	Default = 2,
	Color = Color3.fromRGB(0,255,0),
	Increment = 2,
	ValueName = "HipHeight",
	Callback = function(HipValue)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipValue
	end    
})
Character:AddButton({
	Name = "HipHeight reset",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
      		HPreset:Set(2)
  	end
})
local GRAVreset = Character:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 300,
	Default = 196.2,
	Color = Color3.fromRGB(0,255,0),
	Increment = 2,
	ValueName = "Gravity",
	Callback = function(GravityValue)
		game:GetService("Workspace").Gravity = GravityValue
	end    
})
Character:AddButton({
	Name = "Gravity reset",
	Callback = function()
      		game:GetService("Workspace").Gravity = 196.2
      		GRAVreset:Set(196.2)
  	end
})

OrionLib:Init()