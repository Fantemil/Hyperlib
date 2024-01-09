local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "AdminTestHub", HidePremium = false, SaveConfig = true, ConfigFolder = "Admin"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to sext to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Funchow the intro animation.
IntroText = <string> - Ttion to execute when the window is closed.
--]]

local PlayerTab = Window:MakeTab({
	Name = "PlayerHacks",
	Icon = "rbxassetid://5205790826",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = PlayerTab:AddSection({
	Name = "Speed"
})

--[[
Name = <string> - The name of the section.
]]
