local player = game.Players.LocalPlayer local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() local Window = OrionLib:MakeWindow({Name = "Speed Hub (works anygame)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"}) --[[ Name = - The name of the UI. HidePremium = - Whether or not the user details shows Premium status or not. SaveConfig = - Toggles the config saving in the UI. ConfigFolder = - The name of the folder where the configs are saved. IntroEnabled = true - Whether or not to show the intro animation. IntroText = - Femboy hub :3. IntroIcon = - URL to the image you want to use in the intro animation. Icon = - URL to the image you want displayed on the window. CloseCallback = - Function to execute when the window is closed. ]] local Tab = Window:MakeTab({ Name = "Tab 1", Icon = "rbxassetid://4483345998", PremiumOnly = false }) --[[ Name = - The name of the tab. Icon = - The icon of the tab. PremiumOnly = - Makes the tab accessible to Sirus Premium users only. ]] local Section = Tab:AddSection({ Name = "LocalPlayer" }) --[[ Name = - The name of the section. ]] OrionLib:MakeNotification({ Name = "Speed Hub", Content = "Welcome to my hub! Made by Khoindvn and Dominik Niemczyk", Image = "rbxassetid://4483345998", Time = 5 }) --[[ Title = - The title of the notification. Content = - The content of the notification. Image = - The icon of the notification. Time = - The duration of the notfication. ]] Tab:AddButton({ Name = "Speed70", Callback = function() player.Character.Humanoid.WalkSpeed = 70 end }) --[[ Name = - Walkspeed 900. Callback = - The function of the button. ]] Tab:AddButton({ Name = "jumppower :3", Callback = function() player.Character.Humanoid.JumpPower = 30 end }) --[[ Name = - The name of the button. Callback = - The function of the button. ]] Tab:AddButton({ Name = "Low Gravity (Kinda bugged)", Callback = function() game.Workspace.Gravity = 5 end }) --[[ Name = - WalkSpeed 600. Callback = - The function of the button. ]] --[[ Name = - WalkSpeed 500. Callback = - The function of the button. ]]
Tab:AddButton({
	Name = "Button that you can rape/fuck :3",
	Callback = function()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback =  - The function of the button.
]]
Tab:AddButton({ Name = "Solara Speed Hack", Callback = function() player.Character.Humanoid.WalkSpeed = 150 end }) --[[ Name = - Walkspeed 900. Callback = - The function of the button. ]]
local Tab = Window:MakeTab({
	Name = "Anti's",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = Goofy tab - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
OrionLib:MakeNotification({
	Name = "Join my Discord!!",
	Content = "https://discord.gg/b8z5y4DE",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
Tab:AddToggle({
	Name = "Would you like to enable anti ban?",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]
Tab:AddToggle({
	Name = "Anti Kick/Mod",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]
local Tab = Window:MakeTab({
	Name = "Game Scripts NEW!",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
    Name = "Slap Battles Giang Hub",
    Callback = function()
              loadstring(game:HttpGet("https://rawscripts.net/raw/HUNT-Slap-Battles-Codex-and-ArceusX-11316"))()
      end    
})
Tab:AddButton({
    Name = "FE fling",
    Callback = function()
              loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Punch-Fling-17118"))()
      end    
}) 
Tab:AddButton({
    Name = "Inf Yield",
    Callback = function()
              loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Inf-yield-15355"))()
      end    
}) 
Tab:AddButton({
    Name = "Shiftlock",
    Callback = function()
              loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Mobile-Shiftlock-V2-18053"))()
      end    
}) 
Tab:AddButton({
    Name = "Chat Bypass",
    Callback = function()
              loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Chat-Bypass-20240"))()
      end    
}) 
Tab:AddButton({
    Name = "Fly Script (not mine)",
    Callback = function()
              loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FLY-GUI-V3-19840"))()
      end    
})