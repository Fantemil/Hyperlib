--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]

local UserInputService = game:GetService("UserInputService")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/lates-lib/main/Main.lua"))()
local Window = Library:CreateWindow({
	Title = "Hide N' Sneak",
	Theme = "Dark",
	Size = UDim2.fromOffset(570, 370),
	Transparency = 0.2,
	Blurring = true,
	MinimizeKeybind = Enum.KeyCode.LeftAlt,
})

local Themes = {
	Dark = {
		Primary = Color3.fromRGB(30, 30, 30),
		Secondary = Color3.fromRGB(35, 35, 35),
		Component = Color3.fromRGB(40, 40, 40),
		Interactables = Color3.fromRGB(45, 45, 45),
		Tab = Color3.fromRGB(200, 200, 200),
		Title = Color3.fromRGB(240, 240, 240),
		Description = Color3.fromRGB(200, 200, 200),
		Shadow = Color3.fromRGB(0, 0, 0),
		Outline = Color3.fromRGB(40, 40, 40),
		Icon = Color3.fromRGB(220, 220, 220),
	},
}

Window:SetTheme(Themes.Dark)

Window:AddTabSection({ Name = "Components", Order = 1 })
Window:AddTabSection({ Name = "Settings", Order = 2 })

local Main = Window:AddTab({
	Title = "Components",
	Section = "Main",
	Icon = "rbxassetid://11963373994"
})

local originalPosition

Window:AddToggle({
	Title = "Hide",
	Description = "When activated you will not be able to be caught untoggle to go back to original position",
	Tab = Main,
	Callback = function(active) 
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local rootPart = character:WaitForChild("HumanoidRootPart")

		if active then
			originalPosition = rootPart.Position
			rootPart.CFrame = CFrame.new(0, 9999999999999, 0)
		else
			rootPart.Position = originalPosition
		end
	end,
})

Window:AddButton({
	Title = "Collect All Coins",
	Description = "Collect All Coins (Use If Other Script is Glitched)",
	Tab = Main,
	Callback = function()
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local rootPart = character:WaitForChild("HumanoidRootPart")
		local gameObjects = game:GetService("Workspace"):WaitForChild("GameObjects")

		for _, object in ipairs(gameObjects:GetChildren()) do
			if object:IsA("BasePart") then
				object.CFrame = rootPart.CFrame
			end
		end
	end,
})

Window:AddToggle({
	Title = "Get All Coins",
	Description = "Autoclaim All Coins (repeats every 5s)",
	Tab = Main,
	Callback = function(active) 
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local rootPart = character:WaitForChild("HumanoidRootPart")
		local gameObjects = game:GetService("Workspace"):WaitForChild("GameObjects")

		while active do
			for _, object in ipairs(gameObjects:GetChildren()) do
				if object:IsA("BasePart") then
					object.CFrame = rootPart.CFrame
				end
			end
			wait(5)
		end
	end,
})

Window:AddButton({
	Title = "Tag All",
	Description = "Tag Every Player In The Game (MUST BE IT)",
	Tab = Main,
	Callback = function()
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()

		for _, targetPlayer in pairs(game.Players:GetPlayers()) do
			if targetPlayer ~= player then
				local targetCharacter = targetPlayer.Character
				if targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart") then
					local targetPosition = targetCharacter.HumanoidRootPart.Position
					character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
					wait(1)
				end
			end
		end
	end,
})

local Settings = Window:AddTab({
	Title = "Settings",
	Section = "Settings",
	Icon = "rbxassetid://11293977610",
})

Window:AddKeybind({
	Title = "Minimize Keybind",
	Description = "Set the keybind for Minimizing",
	Tab = Settings,
	Callback = function(Key) 
		Window:SetSetting("Keybind", Key)
	end,
}) 

Window:AddDropdown({
	Title = "Set Theme",
	Description = "Set the theme of the library!",
	Tab = Settings,
	Options = {
		["Light Mode"] = "Light",
		["Dark Mode"] = "Dark",
	},
	Callback = function(Theme) 
		Window:SetTheme(Themes[Theme])
	end,
}) 

Window:AddToggle({
	Title = "UI Blur",
	Description = "If enabled, must have your Roblox graphics set to 8+ for it to work",
	Default = true,
	Tab = Settings,
	Callback = function(Boolean) 
		Window:SetSetting("Blur", Boolean)
	end,
}) 

Window:AddSlider({
	Title = "UI Transparency",
	Description = "Set the transparency of the UI",
	Tab = Settings,
	AllowDecimals = true,
	MaxValue = 1,
	Callback = function(Amount) 
		Window:SetSetting("Transparency", Amount)
	end,
}) 

Window:Notify({
	Title = "Hello World!",
	Description = "Press Left Alt to Minimize and Open the tab!", 
	Duration = 10
})

UserInputService.InputBegan:Connect(function(Key) 
	if Key == Keybind then
		warn("You have pressed the minimize keybind!")
	end
end)