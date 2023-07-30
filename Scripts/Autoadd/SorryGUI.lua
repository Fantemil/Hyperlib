--SorryGUI

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.287742883, 0, 0.173898086, 0)
Frame.Size = UDim2.new(0, 268, 0, 309)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextLabel.Position = UDim2.new(0.00407979032, 0, -0.00138074753, 0)
TextLabel.Size = UDim2.new(0, 267, 0, 56)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "SorryGUI"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.0708955228, 0, 0.23624596, 0)
TextButton.Size = UDim2.new(0, 232, 0, 14)
TextButton.Font = Enum.Font.FredokaOne
TextButton.Text = "Synapse"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/Synapse-X-Remake.lua"))()
end)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.0708955228, 0, 0.310679615, 0)
TextButton_2.Size = UDim2.new(0, 232, 0, 14)
TextButton_2.Font = Enum.Font.FredokaOne
TextButton_2.Text = "Krnl"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000
TextButton_2.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/KRNL%20UI%20Remake.lua"))()
end)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextLabel_2.Position = UDim2.new(0, 0, 0.705501616, 0)
TextLabel_2.Size = UDim2.new(0, 268, 0, 91)
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = "Made by Nacho_CheeseEASY1"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.Position = UDim2.new(0.0708955228, 0, 0.385113269, 0)
TextButton_3.Size = UDim2.new(0, 232, 0, 14)
TextButton_3.Font = Enum.Font.FredokaOne
TextButton_3.Text = "c00lgui Reborn"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000
TextButton_3.MouseButton1Down:connect(function()
	loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.Position = UDim2.new(0.0708955228, 0, 0.466019362, 0)
TextButton_4.Size = UDim2.new(0, 232, 0, 14)
TextButton_4.Font = Enum.Font.FredokaOne
TextButton_4.Text = "DeckHub"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 14.000
TextButton_4.MouseButton1Down:connect(function()
	--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
	-- DeckHub made by BeansVR

	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("DeckHub", "Synapse")
	-- Player
	local Main = Window:NewTab("Player")
	local MainSection = Main:NewSection("Player")


	MainSection:NewButton("Infinite Jump [R] [On By Default]", "Makes you jump infinitely", function()
		loadstring(game:HttpGet('https://pastebin.com/raw/HQsQysa8'))()
	end)

	MainSection:NewToggle("Superhuman Speed", "Makes you go super fast", function(state)
		if state then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
		else
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end
	end)

	MainSection:NewSlider("Walkspeed", "Makes you faster/slower", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)

	MainSection:NewSlider("Jump Power", "Makes you jump Higher/Lower", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)
	-- OP
	local OP = Window:NewTab("OP")
	local OPSection = OP:NewSection("Admin")

	OPSection:NewButton("Infinite Yield", "Opens Infinite Yield", function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
	end)

	OPSection:NewButton("CMD-X", "Opens CMD-X", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()        
	end)

	local OPSection = OP:NewSection("Menus")

	OPSection:NewButton("Ragdoll Engine", "Opens OP Ragdoll Engine menu", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/max2007killer/GUI-/main/GUI%26.txt"))()
	end)
end)

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.Position = UDim2.new(0.0708955228, 0, 0.540453076, 0)
TextButton_5.Size = UDim2.new(0, 232, 0, 14)
TextButton_5.Font = Enum.Font.FredokaOne
TextButton_5.Text = "Dex Explorer"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextSize = 14.000
TextButton_5.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end)

TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.Position = UDim2.new(0.0708955228, 0, 0.614886761, 0)
TextButton_6.Size = UDim2.new(0, 232, 0, 14)
TextButton_6.Font = Enum.Font.FredokaOne
TextButton_6.Text = "Infinite Yeild"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextSize = 14.000
TextButton_6.MouseButton1Down:connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)