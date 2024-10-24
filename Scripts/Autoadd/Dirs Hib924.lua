-- // SCRIPT MADE BY R3DDK PRODUCTIONS. ALL RIGHTS RESERVED. 

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local plr = game.Players.LocalPlayer

local Window = OrionLib:MakeWindow({Name = "Ultimate Dirs Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://122749298097642",
	PremiumOnly = false
})

local Section = PlayerTab:AddSection({
	Name = "Basic Cheating tab"
})

OrionLib:MakeNotification({
	Name = "hi cheater",
	Content = "Thanks for using my Script Hub!",
	Image = "rbxassetid://18640640861",
	Time = 5
})

PlayerTab:AddSlider({
	Name = "Walk Speed - WS",
	Min = 16,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,0),
	Increment = 1,
	ValueName = "lua_ws_dh",
	Callback = function(Value)
		plr.Character.Humanoid.WalkSpeed = Value
	end    
})

PlayerTab:AddSlider({
	Name = "Jump Power - JP",
	Min = 16,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,0,4),
	Increment = 1,
	ValueName = "lua_jp_dh",
	Callback = function(Value)
		plr.Character.Humanoid.JumpPower = Value
	end    
})

local ScriptTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://18640320257",
	PremiumOnly = false
})

local Section = ScriptTab:AddSection({
	Name = "Scripts"
})

ScriptTab:AddButton({
	Name = "Infinite Yield Admin Commands",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
  	end    
})

ScriptTab:AddButton({
	Name = "Build A Boat For Treasure",
	Callback = function()
        loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/ZeeroxHub/main/Loader.lua')()
  	end    
})

ScriptTab:AddButton({
	Name = "DOORS",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing/main/BlackKing"))()
  	end    
})

ScriptTab:AddButton({
	Name = "Driving Simulator - OP Hack",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/iERa4ke4", true))()
  	end    
})

ScriptTab:AddButton({
	Name = "Murder Mystery 2 - V1",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KidichiHB/Kidachi/main/Scripts/MM2", true))()
  	end    
})

ScriptTab:AddButton({
	Name = "AutoFarm Candy - MM2",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ItsJiDy/Personal-Script/refs/main/mm2%20halloween.lua"))()
  	end    
})

ScriptTab:AddButton({
	Name = "REDZ HUB - Blox Fruits",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
  	end    
})


PlayerTab:AddButton({
	Name = "Invisibility - not working",
	Callback = function()
        print("dirshub.lua - [INVISIBILITY NOT WORKING]")
  	end    
})

local BabftTab = Window:MakeTab({
	Name = "Build A Boat",
	Icon = "rbxassetid://122749298097642",
	PremiumOnly = false
})

local Section = BabftTab:AddSection({
	Name = "Build A Boat Scripts"
})

BabftTab:AddButton({
	Name = "[NEW!] Halloween Candy Autofarm",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/p7dBEhZ1"))()
  	end    
})

BabftTab:AddButton({
	Name = "Babft Autofarm",
	Callback = function()
        loadstring(game:HttpGet("loadstring(game:HttpGet("https://raw.githubusercontent.com/ExyXyz/ExyGantenk/main/ExyBABFT"))()"))()
  	end    
})

