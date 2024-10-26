local player = game.Players.LocalPlayer
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "HIII", HidePremium = false, SaveConfig = false, ConfigFolder = "Datstupidthing"})
local IntroEnabled = true
local Name = "TEST GUI"
local Icon = "rbxassetid://14758471752"
local IntroText = "Hello HUB"
local IntroIcon = "rbxassetid://14758471752"
local Tab = Window:MakeTab({
	Name = "Tabe number one",
	Icon = "rbxassetid://14758471752",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Sectionnn!!!"
})
Tab:AddButton({
	Name = "Kick yourself",
	Callback = function()
      		player:Kick("You get kicked, what did you thought that button would do?")
  	end    
})
Tab:AddToggle({
	Name = "Funny toggle",
	Default = false,
	Callback = function(Value)
		print("You toggled!!! Congrats")
	end    
})
Tab:AddToggle({
	Name = "Unfunny toggle",
	Default = false,
	Callback = function(Value)
		player:Kick("Don't dare turning that on again")	--why
	end    
})
Tab:AddSlider({
	Name = "Speed",
	Min = 16,
	Max = 9999,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed (REALLY HIGH NUMBERS)",
	Callback = function(Value)
		workspace:FindFirstChild(player.Name):FindFirstChild("Humanoid").WalkSpeed = Value
	end    
})
OrionLib:Init()