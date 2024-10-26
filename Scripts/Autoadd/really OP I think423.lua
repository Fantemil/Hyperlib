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
	Light = {
		Primary = Color3.fromRGB(232, 232, 232),
		Secondary = Color3.fromRGB(255, 255, 255),
		Component = Color3.fromRGB(245, 245, 245),
		Interactables = Color3.fromRGB(235, 235, 235),
		Tab = Color3.fromRGB(50, 50, 50),
		Title = Color3.fromRGB(0, 0, 0),
		Description = Color3.fromRGB(100, 100, 100),
		Shadow = Color3.fromRGB(255, 255, 255),
		Outline = Color3.fromRGB(210, 210, 210),
		Icon = Color3.fromRGB(100, 100, 100),
	},
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
Window:AddTabSection({ Name = "Main", Order = 1 })

local Main = Window:AddTab({
	Title = "Hide N' Sneak",
	Section = "Main",
	Icon = "rbxassetid://11963373994"
})

Window:AddSection({ Name = "Interactable", Tab = Main }) 

Window:AddToggle({
	Title = "Hide",
	Description = "When activated you will not be able to be caught untoggle to go back to original position",
	Tab = Main,
	Callback = function(Boolean) 
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local rootPart = character:WaitForChild("HumanoidRootPart")

		if Boolean then
			local originalPosition = rootPart.Position
			rootPart.CFrame = CFrame.new(0, 9999999999999, 0)

			Window:AddToggle({
				Title = "Hide",
				Description = "When activated you will not be able to be caught untoggle to go back to original position",
				Tab = Main,
				Callback = function(innerBoolean) 
					if not innerBoolean then
						rootPart.CFrame = CFrame.new(originalPosition)
					end
				end,
			})
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

		local function teleportToPlayers()
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
		end

		teleportToPlayers()
	end,
})

Window:AddToggle({
	Title = "Get All Coins",
	Description = "Autoclaim All Coins (repeats every 5s)",
	Tab = Main,
	Callback = function(Boolean) 
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local rootPart = character:WaitForChild("HumanoidRootPart")
		local gameObjects = game:GetService("Workspace"):WaitForChild("GameObjects")

		while Boolean do
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
