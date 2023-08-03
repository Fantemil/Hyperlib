local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
function Notif(lol) 
	OrionLib:MakeNotification({
	Name = "ChaserX Script Hub 2.0",
	Content = lol,
	Image = "rbxassetid://4483345998",
	Time = 8
})
wait(8)
end
Notif("Hello there, "..game.Players.LocalPlayer.Name)
Notif("Please be patient, we are loading the script.")
local Window = OrionLib:MakeWindow({Name = "ChaserX Script Hub by well543211", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Universal = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Animations = Window:MakeTab({
	Name = "Animations",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Player = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Piano = Window:MakeTab({
	Name = "Piano",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Piano:AddButton({
	Name = "MIDI Player",
	Callback = function()
		loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/MidiPlayer/main/package.lua"))()
	end
})
Universal:AddButton({
	Name = "Fates ESP & Aimbot",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/fatesc/fates-esp/main/main.lua'))()
  	end    
})
Universal:AddButton({
	Name = "Reviz Admin",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Caniwq2N", true))()
	end
})
Universal:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
})
Universal:AddButton({
	Name = "DomainX (OP Levels are Maximum)",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexsoftworks/DomainX/main/source'),true))()
	end
})
Animations:AddButton({
	Name = "Energize GUI",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/0MLPL32f'))()
	end
})
Player:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 500,
	Default = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
Player:AddSlider({
	Name = "Jump Power",
	Min = 0,
	Max = 500,
	Default = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
Player:AddToggle({
	Name = "Sit",
	Default = game.Players.LocalPlayer.Character.Humanoid.Sit,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Sit = Value
	end    
})
if game.PlaceId == 6447798030 then
		local FunkyFriday = Window:MakeTab({
	Name = "Funky Friday",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
		FunkyFriday:AddButton({
			Name = "Funky Friday Autoplayer",
			Callback = function()
							loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua"))()
			end
		})
	end
	if game.PlaceId == 7772810845 then
				local GameTab = Window:MakeTab({Name = "The Presentation Experience", Icon = "rbxassetid://4483345998", PremiumOnly = false})
		GameTab:AddButton({Name = "Stand Up", Callback = function()
			game.Players.LocalPlayer.Character.Sit:Destroy()
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = 40
		end})
	end
	if game.PlaceId == 6284583030 then
		local PetSimX = Window:MakeTab({
	Name = "Pet Sim X",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
		PetSimX:AddButton({Name = "Petsi X", Callback = function()
			loadstring(game:GetObjects("rbxassetid://8194485654")[1].Source)("Petsi-X")
		end})
		PetSimX:AddButton({Name = "Mini GUI", Callback = function()
			loadstring(game:HttpGet('https://pastebin.com/raw/fttSzNs8'))()
		end})
	end
	if game.PlaceId == 5780309044 then
		local GameTab = Window:MakeTab({
	Name = "Stands Awakening",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
		GameTab:AddButton({Name = "Stands Awakening Killer", Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/tonumber/roblox-scripts/main/abdm/abdmfuckerv3.lua'))()
		end})
	end
	if game.PlaceId == 6872274481 then
		local GameTab = Window:MakeTab({
	Name = "Bedwars",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
		GameTab:AddButton({Name = "Vape V4", Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/addMainScript.lua'))()
		end})
	end
OrionLib:Init()