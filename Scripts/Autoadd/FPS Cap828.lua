local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "FPS Cap", HidePremium = true, SaveConfig = true, ConfigFolder = "fpscap"})
local MainW = Window:MakeTab({
	Name = "Main",
	Icon = "",
	PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "FPS Cap",
	Content = "Code - stonifam5@github\nUI - Sirius@v3rm",
	Image = "",
	Time = 5
})
MainW:AddButton({
	Name = "Set FPS to 60",
	Callback = function()
      		setfpscap(60)
  	end    
})
MainW:AddSlider({
	Name = "FPS (Max - 120)",
	Min = 1,
	Max = 120,
	Default = 60,
	Color = Color3.fromRGB(103,146,103),
	Increment = 1,
	ValueName = "FPS",
	Callback = function(fpsCap1)
		setfpscap(fpsCap1)
	end    
})
MainW:AddSlider({
	Name = "FPS (Max - 450)",
	Min = 1,
	Max = 450,
	Default = 60,
	Color = Color3.fromRGB(255,199,75),
	Increment = 1,
	ValueName = "FPS",
	Callback = function(fpsCap1)
		setfpscap(fpsCap1)
	end    
})
MainW:AddSlider({
	Name = "FPS (Max - 2500)",
	Min = 1,
	Max = 2500,
	Default = 60,
	Color = Color3.fromRGB(255,114,51),
	Increment = 1,
	ValueName = "FPS",
	Callback = function(fpsCap1)
		setfpscap(fpsCap1)
	end    
})
MainW:AddSlider({
	Name = "FPS (Max - 3500)",
	Min = 1,
	Max = 3500,
	Default = 60,
	Color = Color3.fromRGB(255,47,29),
	Increment = 1,
	ValueName = "FPS",
	Callback = function(fpsCap1)
		setfpscap(fpsCap1)
	end    
})
MainW:AddSlider({
	Name = "FPS (Max - 4000)",
	Min = 1,
	Max = 4000,
	Default = 60,
	Color = Color3.fromRGB(255,30,69),
	Increment = 1,
	ValueName = "FPS",
	Callback = function(fpsCap1)
		setfpscap(fpsCap1)
	end    
})