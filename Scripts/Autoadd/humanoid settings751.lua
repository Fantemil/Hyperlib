local player = Game.Players.localPlayer

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Humanoid Settings", HidePremium = false, SaveConfig = true, ConfigFolder = "Humanoid"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
	Name = "Game",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <tring> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

Tab:AddTextbox({
	Name = "WalkSpeed",
	Default = "16",
	TextDisappear = true,
	Callback = function(Value)
		player.Character.Humanoid.WalkSpeed = Value
	end	  
})

--[[
Name = <string> - The name of the textbox.
Default = <string> - The default value of the textbox.
TextDisappear = <bool> - Makes the text disappear in the textbox after losing focus.
Callback = <function> - The function of the textbox.
]]

Tab:AddTextbox({
	Name = "JumpPower",
	Default = "50",
	TextDisappear = true,
	Callback = function(Value)
		player.Character.Humanoid.JumpPower = Value
	end	  
})

--[[
Name = <string> - The name of the textbox.
Default = <string> - The default value of the textbox.
TextDisappear = <bool> - Makes the text disappear in the textbox after losing focus.
Callback = <function> - The function of the textbox.
]]

Tab:AddTextbox({
	Name = "Health",
	Default = "100",
	TextDisappear = true,
	Callback = function(Value)
		player.Character.Humanoid.Health = Value
	end	  
})

--[[
Name = <string> - The name of the textbox.
Default = <string> - The default value of the textbox.
TextDisappear = <bool> - Makes the text disappear in the textbox after losing focus.
Callback = <function> - The function of the textbox.
]]

Tab:AddTextbox({
	Name = "MaxHealth",
	Default = "100",
	TextDisappear = true,
	Callback = function(Value)
		player.Character.Humanoid.MaxHealth = Value
	end	  
})

--[[
Name = <string> - The name of the textbox.
Default = <string> - The default value of the textbox.
TextDisappear = <bool> - Makes the text disappear in the textbox after losing focus.
Callback = <function> - The function of the textbox.
]]

Tab:AddTextbox({
	Name = "HipHeignt",
	Default = "0",
	TextDisappear = true,
	Callback = function(Value)
		player.Character.Humanoid.HipHeignt = Value
	end	  
})

--[[
Name = <string> - The name of the textbox.
Default = <string> - The default value of the textbox.
TextDisappear = <bool> - Makes the text disappear in the textbox after losing focus.
Callback = <function> - The function of the textbox.
]]

local Tab = Window:MakeTab({
	Name = "Game2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Sit",
	Callback = function()
      		player.Character.Humanoid.Sit = true
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Jump",
	Callback = function()
      		player.Character.Humanoid.Jump = true
  	end    
})

Tab:AddToggle({
	Name = "AutoRotate",
	Default = true,
	Callback = function(Value)
		player.Character.Humanoid.AutoRotate = Value
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "PatformStand",
	Default = true,
	Callback = function(Value)
		player.Character.Humanoid.PatformStand = Value
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

