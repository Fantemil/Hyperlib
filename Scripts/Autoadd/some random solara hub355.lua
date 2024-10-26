local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Solara Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Main"
})

Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

Tab:AddButton({
	Name = "Dex Explorer",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Simple Spy",
	Callback = function()
      		loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Blox Fruits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Blox Fruits"
})

Tab:AddButton({
	Name = "Mukuro Hub",
	Callback = function()
      		loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
  	end    
})

Tab:AddButton({
	Name = "Hoho Hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  	end    
})

Tab:AddButton({
	Name = "Zen Hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader'))()
  	end    
})

Tab:AddButton({
	Name = "Ripper Hub V3",
	Callback = function()
      		_G.Version = "V3"
loadstring(game:HttpGet('https://raw.githubusercontent.com/xDestinyx/RipperHub/main/Loader.lua'))();
  	end    
})

Tab:AddButton({
	Name = "Uranium Hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Augustzyzx/UraniumMobile/main/UraniumKak.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Neva Hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'))()
  	end    
})

Tab:AddButton({
	Name = "Makima Hub",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/Piwwy0909/MakimaRemake/main/Cumback.lua'))()
  	end    
})

Tab:AddButton({
	Name = "Sonic Hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/NickelHUBB/SonicTuru/main/Protected-25.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Zee Hub",
	Callback = function()
      		loadstring(game:HttpGet("https://zKuzy.link/ZeeHub.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Madox Hub",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Fiend1sh/FiendMain/main/MadoxHubKey", true))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Doors",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Doors"
})

Tab:AddButton({
	Name = "Vynixius",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Nerd V4",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/NeRDV4.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Darkrai X",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()
  	end    
})

Tab:AddButton({
	Name = "Doors GUI V2",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/zoophiliaphobic/POOPDOORS/main/script.lua'))()
  	end    
})

Tab:AddButton({
	Name = "Doors GUI V4",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/main.lua"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Bedwars",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Bedwars"
})

Tab:AddButton({
	Name = "Vape V4",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Jn HH Gaming",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming123/JN-HH-Gaming-Pro/main/JN%20HH%20Gaming%20Pro",true))()
  	end    
})

OrionLib:Init()