local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Proto Obby Hub Beta 1.1", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Main player",
	Icon = "https://create.roblox.com/marketplace/asset/221748794/BlackWhite-Key",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Players Status"
})

Tab:AddSlider({
	Name = "Players WalkSpeed",
	Min = 16,
	Max = 200,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
		print(s)
	end    
})
Tab:AddSlider({
	Name = "Player Jumppower",
	Min = 50,
	Max = 200,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(s)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
		print(s)
	end    
})
local Section = Tab:AddSection({
	Name = "Others"
})
Tab:AddButton({
	Name = "Fly",
	Callback = function()
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
      		print("button pressed")
  	end    
})
Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})
Tab:AddButton({
	Name = "Infinite Jump",
	Callback = function()
	InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

  	end    
})
local Section = Tab:AddSection({
	Name = "More Coming Soon..."
})
local Tab = Window:MakeTab({
	Name = "GameHubs",
	Icon = "https://create.roblox.com/marketplace/asset/1557343448/gameicon",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Hubs"
})

Tab:AddButton({
	Name = "Tower Of Hell",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
      		print("button pressed")
  	end    
})
Tab:AddButton({
	Name = "Unfair Hub",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
      		print("button pressed")
  	end    
})
local Section = Tab:AddSection({
	Name = "More Coming Soon..."
})
local Tab = Window:MakeTab({
	Name = "Credits & more",
	Icon = "https://create.roblox.com/marketplace/asset/10840766205/Plane-Door",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Made By MrP#5242"
})
local Section = Tab:AddSection({
	Name = "Version Beta 1.1"
})
local Section = Tab:AddSection({
	Name = "More Updates Coming Soon..."
})
