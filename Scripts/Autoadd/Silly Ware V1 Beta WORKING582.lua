local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Silly Ware V1 Beta", HidePremium = false, SaveConfig = true, ConfigFolder = "SillyWarev1"})

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TeleportTab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MainTab:AddLabel("Made by bottlechip. (Polite_Player) and kylosilly (kylo)!")

MainTab:AddLabel("Sorry if the script is bad we started coding 2 days ago.")

TeleportTab:AddLabel("Kinda useless but I added it lol")

CreditsTab:AddLabel("Owner/Developer kylo (kylosilly)")

CreditsTab:AddLabel("Co-Owner bottlechip. (Polite_Player)")

CreditsTab:AddLabel("My script server: discord.gg/TnP3PQGGFw")

CreditsTab:AddLabel("My main server: discord.gg/sets")

MainTab:AddButton({
	Name = "Get all auras!",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/0ngLWx1n"))()
  	end    
})

MainTab:AddButton({
	Name = "Inf yield",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

MainTab:AddButton({
	Name = "Nameless Admin 2.0",
	Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/toyahfur/Nameless-Admin-2.0/main/unfinished-source-code'))()
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport to spawn!",
	Callback = function()
      setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.5, 2.5, -0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport to daily tip reward!",
	Callback = function()
      setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-430.321991, -39.8595085, -79.9779968, 0, 0, 1, 0, 1, -0, -1, 0, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport to cave!",
	Callback = function()
      setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360.249969, 12.6011505, -25.75, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport to f2p shop!",
	Callback = function()
      setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.7804642, 15.8519316, -1.07952976, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport to p2w shop!",
	Callback = function()
      setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.12163544, 5.89996624, 58.9216385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport on top of the mountain!",
	Callback = function()
      setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-361.499969, 96.7162094, 23.75, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport to red balloon!",
	Callback = function()
      setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-323.219971, 79.9998169, -310.586395, -0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, -0.707134247)
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport to blue balloon",
	Callback = function()
      setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(191.250809, 50.8798752, 193.607193, 0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, 0.499959469)
  	end    
})

MiscTab:AddSlider({
	Name = "Fov Changer",
	Min = 0,
	Max = 150,
	Default = 70,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Fov",
	Callback = function (fov)
      local Camera = workspace.CurrentCamera
      Camera.FieldOfView = fov
  end 
})

OrionLib:MakeNotification({
	Name = "Thanks for using our script!",
	Content = "Join discord.gg/g9aQSWAd for updates and report bugs if you find any! :3",
	Image = "rbxassetid://4483345998",
	Time = 10
})