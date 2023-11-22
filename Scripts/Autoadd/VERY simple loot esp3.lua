-- This is just made both for fun and to use on NetflixCE.

_G.LookForFruit = false
_G.LookForChest = false

_G.KeyDebounce = false

_G.Keybind = Enum.KeyCode.G -- Fruit Keybind, Change if Needed 
_G.Keybind2 = Enum.KeyCode.RightBracket -- Chest Keybind

local Sound = Instance.new("Sound")
Sound.Parent = game.Workspace

Sound.SoundId = "rbxassetid://5568992074"

local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")

local RunService = game:GetService("RunService")

local CollectionService = game:GetService("CollectionService")

local Collections = {}
local Collections2 = {}

--- Fruit Rarity from Wiki

local FruitRarity = 
	{

		Fruit = {
			Rarity = "???"
		},

		Rocket = {
			Rarity = "Common"
		},

		Spin = {
			Rarity = "Common"
		},

		Chop = {
			Rarity = "Common"
		},

		Spring = {
			Rarity = "Common"
		},

		Bomb = {
			Rarity = "Common"
		},

		Smoke = {
			Rarity = "Common"
		},

		Spike = {
			Rarity = "Common"
		},

		Flame = {
			Rarity = "Uncommon"
		},

		Falcon = {
			Rarity = "Uncommon"
		},

		Ice = {
			Rarity = "Uncommon"
		},

		Sand = {
			Rarity = "Uncommon"
		},

		Dark = {
			Rarity = "Uncommon"
		},

		Diamond = {
			Rarity = "Uncommon"
		},

		Light = {
			Rarity = "Rare"
		},

		Rubber = {
			Rarity = "Rare"
		},

		Barrier = {
			Rarity = "Rare"
		},

		Ghost = {
			Rarity = "Rare"
		},

		Magma = {
			Rarity = "Rare"
		},

		Quake = {
			Rarity = "Legendary"
		},

		Buddha = {
			Rarity = "Legendary"
		},

		Love = {
			Rarity = "Legendary"
		},

		Spider = {
			Rarity = "Legendary"
		},

		Sound = {
			Rarity = "Legendary"
		},

		Phoenix = {
			Rarity = "Legendary"
		},

		Portal = {
			Rarity = "Legendary"
		},

		Rumble = {
			Rarity = "Legendary"
		},

		Pain = {
			Rarity = "Legendary"
		},

		Blizzard = {
			Rarity = "Legendary"
		},

		Gravity = {
			Rarity = "Mythical"
		},

		Mammoth = {
			Rarity = "Mythical"
		},

		Dough = {
			Rarity = "Mythical"
		},

		Shadow = {
			Rarity = "Mythical"
		},

		Venom = {
			Rarity = "Mythical"
		},

		Control = {
			Rarity = "Mythical"
		},

		Spirit = {
			Rarity = "Mythical"
		},

		Dragon = {
			Rarity = "Mythical"
		},

		Leopard = {
			Rarity = "Mythical"
		}

	}

---

local function SendNoft (title,text,Icon,duration)

	if Icon == nil then

		StarterGui:SetCore("SendNotification", {
			Title = title;
			Text = text;
			Duration = duration;
		})

	else

		StarterGui:SetCore("SendNotification", {
			Title = title;
			Text = text;
			Duration = duration;
			Icon = Icon;
		})

	end

	print("Fired")

end

local function AddGuiToFruit (Tool)

	table.insert(Collections,Tool)

	local Fruit = Tool:FindFirstChild("Handle")

	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Parent = Fruit
	BillboardGui.AlwaysOnTop = true
	BillboardGui.Size = UDim2.new(1.25,20,1,20)

	local TextLabel = Instance.new("TextLabel")
	TextLabel.Parent = BillboardGui
	TextLabel.Text = Tool.Name
	TextLabel.TextScaled = true
	TextLabel.BackgroundTransparency = 0.5
	TextLabel.BorderMode = Enum.BorderMode.Middle
	TextLabel.BorderSizePixel = 4
	TextLabel.AnchorPoint = Vector2.new(0.5,0.5	)
	TextLabel.Size = UDim2.new(3,0,1,0)
	TextLabel.TextColor3 = Color3.fromRGB(255,255,255)
	TextLabel.Font = Enum.Font.Code 


	local SplitFruit = string.split(Tool.Name, " ")

	local Str1 = SplitFruit[1]
	
	local Character = game.Players.LocalPlayer.Character

	local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
	local Distance = (HumanoidRootPart.Position - Fruit.Position).magnitude

	if FruitRarity[Str1].Rarity == "???" then
		TextLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
		TextLabel.BorderColor3 = Color3.fromRGB(30,30,30)

		local String = tostring(Distance)

		SendNoft("Unknown Fruit!", "Distance: "..String, nil, 10)

	end

	if FruitRarity[Str1].Rarity == "Common" then

		local String = tostring(Distance)

		TextLabel.BackgroundColor3 = Color3.fromRGB(124, 124, 124)
		TextLabel.BorderColor3 = Color3.fromRGB(179, 179, 179)

		SendNoft("Common Fruit!", "Distance: "..String, nil, 5)
		Sound:Play()
	end

	if FruitRarity[Str1].Rarity == "Uncommon" then

		local String = tostring(Distance)

		TextLabel.BackgroundColor3 = Color3.fromRGB(63, 98, 147)
		TextLabel.BorderColor3 = Color3.fromRGB(63, 96, 144)

		SendNoft("Uncommon Fruit!", "Distance: "..String, nil, 10)
		Sound:Play()
	end

	if FruitRarity[Str1].Rarity == "Rare" then

		local String = tostring(Distance)

		TextLabel.BackgroundColor3 = Color3.fromRGB(100, 58, 182)
		TextLabel.BorderColor3 = Color3.fromRGB(140, 82, 255)

		SendNoft("Rare Fruit!", "Distance: "..String, nil, 10)
		Sound:Play()
	end

	if FruitRarity[Str1].Rarity == "Legendary" then

		local String = tostring(Distance)

		TextLabel.BackgroundColor3 = Color3.fromRGB(150, 29, 160)
		TextLabel.BorderColor3 = Color3.fromRGB(213, 43, 228)

		SendNoft("LEGENDARY Fruit!", "Distance: "..String, nil, 30)
		Sound:Play()
	end

	if FruitRarity[Str1].Rarity == "Mythical" then

		local String = tostring(Distance)

		TextLabel.BackgroundColor3 = Color3.fromRGB(187, 37, 39)
		TextLabel.BorderColor3 = Color3.fromRGB(238, 47, 50)
		SendNoft("MYTHICAL Fruit!", "Distance: "..String, nil, 50)
		Sound:Play()
	end

end

local function AddGuiToChest (Chest)

	table.insert(Collections2,Chest)

	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Parent = Chest
	BillboardGui.AlwaysOnTop = true
	BillboardGui.Size = UDim2.new(1.25,20,1,20)

	local TextLabel = Instance.new("TextLabel")
	TextLabel.Parent = BillboardGui
	TextLabel.Text = Chest.Name
	TextLabel.TextScaled = true
	TextLabel.BackgroundTransparency = 0.5
	TextLabel.BorderMode = Enum.BorderMode.Middle
	TextLabel.BorderSizePixel = 4
	TextLabel.AnchorPoint = Vector2.new(0.5,0.5	)
	TextLabel.Size = UDim2.new(3,0,1,0)
	TextLabel.TextColor3 = Color3.fromRGB(255,255,255)
	TextLabel.Font = Enum.Font.Code

	TextLabel.BackgroundColor3 = Color3.fromRGB(195, 195, 195)
	TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)

	SendNoft("Chest Found!", "Prob Something Idk", nil, 3)
	Sound:Play()

end

local function RemoveGuiToFruit (Tool) 

	local ToolFruit = Tool:FindFirstChild("Handle")

	local Num = table.find(Collections,Tool)
	table.remove(Collections,Num)

	if ToolFruit then
		print(Tool)
		print(Collections)
		local array = ToolFruit:GetDescendants()

		for _,v in pairs(array) do
			if v:IsA("BillboardGui") then
				v:Destroy()
			end
		end
	end

end

local function RemoveGuiToChest (Chest)

	local Num = table.find(Collections2,Chest)
	table.remove(Collections2,Num)

	if Chest then
		print(Chest)
		print(Collections2)
		local array = Chest:GetDescendants()

		for _,v in pairs(array) do
			if v:IsA("BillboardGui") then
				v:Destroy()
			end
		end
	end

end

local function RemoveGuiToAllFruit()
	local FruitArray = CollectionService:GetTagged("Fruit")

	for _,v in ipairs(FruitArray) do

		CollectionService:RemoveTag(v,"Fruit")

	end
end

local function RemoveGuiToAllChest()

	local ChestArray = CollectionService:GetTagged("Chest")

	for _,v in ipairs(ChestArray) do

		CollectionService:RemoveTag(v,"Chest")

	end

end

local function EquipWeapon(Tool)
	pcall(function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
			local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
		end
	end)
end
local function UnEquipWeapon(Weapon)
	if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
		_G.NotAutoEquip = true
		wait(.5)
		game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
		wait(.1)
		_G.NotAutoEquip = false
	end
end

SendNoft("Fruit ESP By UCut", "To Turn off or on, Press your keybinds", "http://www.roblox.com/asset/?id=9448812337", 10)

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
	if input.KeyCode == _G.Keybind and _G.KeyDebounce == false then

		_G.KeyDebounce = true

		_G.LookForFruit = not _G.LookForFruit

		local Bool = tostring(_G.LookForFruit)
		local String = "Fruit ESP: "..Bool

		SendNoft("Key Pressed", String, nil, 3 )

		if _G.LookForFruit == false then
			RemoveGuiToAllFruit()
		end

		task.wait(0.2)

		_G.KeyDebounce = false

	elseif input.KeyCode == _G.Keybind2 and _G.KeyDebounce == false then

		_G.KeyDebounce = true

		_G.LookForChest = not _G.LookForChest

		local Bool = tostring(_G.LookForChest)
		local String = "Chest ESP: "..Bool

		SendNoft("Key Pressed", String, nil, 3 )

		if _G.LookForChest == false then
			RemoveGuiToAllChest()
		end

		task.wait(0.2)

		_G.KeyDebounce = false

	end

end)

CollectionService:GetInstanceAddedSignal("Fruit"):Connect(function(Tool)
	if Collections[Tool] then
	else
		AddGuiToFruit(Tool)
	end
end)

CollectionService:GetInstanceRemovedSignal("Fruit"):Connect(function(Tool)

	RemoveGuiToFruit(Tool)

end)

--#

CollectionService:GetInstanceAddedSignal("Chest"):Connect(function(Chest)

	AddGuiToChest(Chest)

end)

CollectionService:GetInstanceRemovedSignal("Chest"):Connect(function(Chest)

	RemoveGuiToChest(Chest)

end)


RunService.RenderStepped:Connect(function()

	if _G.LookForFruit == true then

		for _,v in ipairs(game.Workspace:GetChildren()) do

			if v:IsA("Tool") then

				local SplitFruit = string.split(v.Name," ")

				if SplitFruit[2] == "Fruit" then

					if CollectionService:HasTag(v,"Fruit") then

					else

						CollectionService:AddTag(v,"Fruit")

					end

				elseif v.Name == "Fruit" then


					if CollectionService:HasTag(v,"Fruit") then

					else

						CollectionService:AddTag(v,"Fruit")

					end

				end
			end
		end

	end

	if _G.LookForChest == true then

		for _,v in ipairs(game.Workspace:GetChildren()) do

			if v:IsA("Part") then
				if v.Name == "Chest1" then
					if CollectionService:HasTag(v,"Chest") then
					else
						CollectionService:AddTag(v,"Chest")
					end
				end
				if v.Name == "Chest2" then
					if CollectionService:HasTag(v,"Chest") then
					else
						CollectionService:AddTag(v,"Chest")
					end
				end
			end
		end
	end
end)