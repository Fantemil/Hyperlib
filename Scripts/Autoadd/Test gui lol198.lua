local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "test gui", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "test :(",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "test gui",
	Content = "you say ? test gui? bruh...me: why lol.",
	Image = "rbxassetid://4483345998",
	Time = 10
})
Tab:AddButton({
	Name = "lol spy?",
	Callback = function()
      print() -- spy here 
  	end    
})
--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]] --If you have any difficulties, here it is ð 
Tab:AddToggle({
	Name = "This is a toggle ðð¿ðªð¿",
	Default = true,
	Callback = function(Value)
		print(value) -- spy here
	end    
})