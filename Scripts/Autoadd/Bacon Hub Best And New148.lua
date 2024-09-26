local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Dog!ð° | Made By Baconhack_26", HidePremium = false, SaveConfig = true, ConfigFolder = "Baconhub"})

local Tab = Window:MakeTab({
	Name = "Functions",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Bacon hub V1",
	Callback = function()
      		loadstring(game:HttpGetAsync("https://pastebin.com/raw/Bsu1Bby1"))()
        OrionLib:Destroy()
  	end    
})

Tab:AddButton({
	Name = "Bacon hub V2",
	Callback = function()
      		loadstring(game:HttpGetAsync("https://pastebin.com/raw/eCdad57N"))()
        OrionLib:Destroy()
  	end    
})