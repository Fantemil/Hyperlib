loadstring(game:HttpGet("https://pastebin.com/raw/7N8ifARt"))()
local Window = OrionLib:MakeWindow({Name = "Orion library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab1 = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false --Can change it to true ifi you want
})

local Section1 = Tab:AddSection({
	Name = "Section A"
})

Tab1:AddButton({
	Name = "Button!",
	Callback = function()
      		print("button pressed")
  	end    
})

OrionLib:MakeNotification({
	Name = "Sus Amongus",
	Content = "Hello Anunus sus.",
	Image = "rbxassetid://4483345998",
	Time = 5
})

Tab1:AddToggle({
	Name = "This is a toggle!",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

Tab1:AddColorpicker({
	Name = "Colorpicker",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		print(Value)
	end	  
})

Tab1:AddSlider({
	Name = "How many banunu yo want",
	Min = 1,
	Max = 99999,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		print(Value)
	end    
})

