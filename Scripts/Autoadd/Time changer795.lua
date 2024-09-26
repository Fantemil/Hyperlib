local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Time Changer", HidePremium = false, SaveConfig = true})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Set Time to 90 Seconds",
	Callback = function()
		game:GetService("Lighting").ClockTime = 90
	end
})