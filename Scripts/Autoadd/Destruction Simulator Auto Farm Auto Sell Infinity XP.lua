local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Mimic Hub", HidePremium = false, SaveConfig = true, IntroText = "Mimic Hub"})

local Tab = Window:MakeTab({
 Name = "Auto Farm",
 Icon = "rbxassetid://7495464623",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Auto-Farm"
})

Tab:AddToggle({
 Name = "Auto Rankup",
 Default = false,
 Callback = function(v)
  getgenv().infXP = v
  while true do
   if not getgenv().infXP then return end
            game:GetService("ReplicatedStorage").Remotes.rankUp:FireServer()
   wait(0.5)
  end
 end
})

Tab:AddToggle({
 Name = "Auto Sell",
 Default = false,
 Callback = function(v)
  getgenv().autoSell = v
  while true do
   if not getgenv().autoSell then return end
            game:GetService("ReplicatedStorage").Remotes.sellBricks:FireServer()
   wait(0.5)
  end
 end
})

local Tab = Window:MakeTab({
 Name = "Local Player",
 Icon = "rbxassetid://7549504320",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Local-Player"
})

Tab:AddSlider({
 Name = "WalkSpeed",
 Min = 16,
 Max = 200,
 Default = 16,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "MP/h",
 Callback = function(v)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
 end   
})

Tab:AddSlider({
 Name = "JumpPower",
 Min = 50,
 Max = 200,
 Default = 16,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "Feet",
 Callback = function(v)
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
 end   
})

local Tab = Window:MakeTab({
 Name = "Teleports",
 Icon = "rbxassetid://7549514426",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Areas"
})

local selectedLocationArea
Tab:AddDropdown({
 Mame = "Choose Area",
 Default = "1",
 Options = {"Level 1", "Level 5", "Level 10", "Level 15", "Level 20", "Level 25", "Level 30", "Level 35", "Level 40", "Level 45", "Level 50", "Level 55", "Rank 2", "Rank 3", "Rank 4", "Rank 5"},
 Callback = function(v)
  selectedLocationArea = v
 end
})

Tab:AddButton({
 Name = "Teleport",
 Default = false,
 Callback = function(v)
  if selectedLocationArea == "Level 1" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area1.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 5" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area2.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 10" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area3.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 15" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area4.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 20" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area5.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 25" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area6.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 30" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area7.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 35" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area8.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 40" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area9.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 45" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area10.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 50" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area11.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Level 55" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area12.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Rank 2" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area13.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Rank 3" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area14.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Rank 4" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area15.Spawns.Spawn1.Position)
  end
  if selectedLocationArea == "Rank 5" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Areas.Area16.Spawns.Spawn1.Position)
  end
 end
})

local Tab = Window:MakeTab({
 Name = "OP",
 Icon = "rbxassetid://7541920650",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "OP-Features"
})

Tab:AddToggle({
 Name = "INF XP",
 Default = false,
 Callback = function(v)
  getgenv().infXP = v
  while true do
   if not getgenv().infXP then return end
   local args = {
    [1] = "Levels",
    [2] = 600,
    [3] = 3
   }
   game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer(unpack(args))
   wait(0.5)
  end
 end
})

OrionLib:MakeNotification({
 Name = "Mimic Hub Loaded!",
 Content = "Mimic Hub Has Loaded Successfully! Have Fun!",
 Image = "rbxassetid://4483345998",
 Time = 10
})

OrionLib:Init()