-- Peaci#3875, ba77o6EGpJK2mv5gfvBaEQSpUAxEdaVK#1281, ZNX#9391
-- Trident Survival

-- Variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Ignore = workspace:FindFirstChild("Ignore") or workspace:WaitForChild("Ignore")

-- Tables
local Connections = {}
local Debounce = {}

-- Match Model

-- Match Model | Check Property
local function CheckProperty(Part, Property)
    local Check = Part[Property]
end
-- Match Model | Function
local function MatchModel(Reference, Model)
	-- Check
	if #Reference:GetChildren() ~= #Model:GetChildren() then return end
	-- Variables
	local Parts = {}
	local PropertyCount = 0
	local PartCount = 0
	local PropertiesFound = 0
	local PartsFound = 0
	-- Properties
	local Properties = {
		["MeshPart"] = {
			"MeshId",
			"TextureID",
			"Color",
			"Material"
		},
		["Other"] = {
			"Color",
			"Material",
			"Size"
		}
	}
	-- Reference
	for _, Part in Reference:GetChildren() do
		if Part:IsA("BasePart") then
			if Part:IsA("MeshPart") then Parts[Part] = {}
				for _, Property in Properties["MeshPart"] do
					local Success = pcall(function() CheckProperty(Part, Property) end)
					if Success then
						Parts[Part][Property] = Part[Property]; PropertyCount += 1
					end
				end
				Parts[Part]["Count"] = PropertyCount; PropertyCount = 0; PartCount += 1
			else Parts[Part] = {}
				for _, Property in Properties["Other"] do
					local Success = pcall(function() CheckProperty(Part, Property) end)
					if Success then
						Parts[Part][Property] = Part[Property]; PropertyCount += 1
					end
				end
				Parts[Part]["Count"] = PropertyCount; PropertyCount = 0; PartCount += 1
			end
		end
	end
	-- Model
	for _, Part in Model:GetChildren() do
		if Part:IsA("BasePart") then
			for _, ReferencePart in Parts do
				for Property, Value in ReferencePart do
					pcall(function ()
						if Property ~= "Count" and Part[Property] == Value then
							PropertiesFound += 1
						end
					end)
				end
				if PropertiesFound == ReferencePart["Count"] then
					PartsFound += 1; PropertiesFound = 0; break
				else
					PropertiesFound = 0
				end
			end
		end
	end
	if PartsFound == PartCount then return true else return false end
end

-- Change Properties 

-- Change Properties | Original Properties
local OriginalProperties = {}
-- Change Properties | Function
local function ChangeProperties(Instance, Properties)
	if not OriginalProperties[Instance] then OriginalProperties[Instance] = {}
		for Property, Value in Properties do
			local Success = pcall(function() CheckProperty(Instance, Property) end)
			if Success then
				OriginalProperties[Instance][Property] = Instance[Property]; Instance[Property] = Value
			end
		end
	else
		for Property, Value in Properties do
			local Success = pcall(function() CheckProperty(Instance, Property) end)
			if Success then
				Instance[Property] = Value
			end
		end
	end
end

-- Players
local Players = {}
-- Players | Setup Players
for _, Player in workspace:GetChildren() do
	if Player:IsA("Model") and Player:FindFirstChild("HumanoidRootPart") then
		table.insert(Players, Player)
	end
end
-- Players | Update Players
Connections["Update Players"] = workspace.DescendantAdded:Connect(function(Player)
	if Player.Name == "HumanoidRootPart" and Player.Parent:IsA("Model") then
		table.insert(Players, Player.Parent); Debounce["Players"] = false
	end
end)
-- Players | Remove Players
Connections["Remove Players"] =  workspace.ChildRemoved:Connect(function(Player)
	if table.find(Players, Player) then
		table.remove(Players, table.find(Players, Player)); Debounce["Players"] = false
	end
end)

-- Entities
local Entities = {}
-- Entities | Info
local EntityInfo = {
	-- Nature
	["Tree"] = {["Type"] = "Nature", ["Color"] = Color3.fromRGB(44, 101, 29)},
	["Cactus"] = {["Type"] = "Nature", ["Color"] = Color3.fromRGB(148, 190, 129)},
	["Berry Bush"] = {["Type"] = "Nature", ["Color"] = Color3.fromRGB(31, 128, 29)},
	-- Base
	["Cabinet"] = {["Type"] = "Base", ["Color"] = Color3.fromRGB(175, 148, 131)},
	["Small Box"] = {["Type"] = "Base", ["Color"] = Color3.fromRGB(175, 148, 131)},
	["Medium Box"] = {["Type"] = "Base", ["Color"] = Color3.fromRGB(175, 148, 131)},
	["Mega Foundry"] = {["Type"] = "Base", ["Color"] = Color3.fromRGB(163, 162, 165)},
	["Claim Stone"] = {["Type"] = "Base", ["Color"] = Color3.fromRGB(0, 16, 176)},
	["Respawn Totem"] = {["Type"] = "Base", ["Color"] = Color3.fromRGB(0, 16, 176)},
	-- Items
	["Backpack"] = {["Type"] = "Items", ["Color"] = Color3.fromRGB(148, 190, 129)},
	["Parts Box"] = {["Type"] = "Items", ["Color"] = Color3.fromRGB(138, 124, 98)},
	["Military Crate"] = {["Type"] = "Items", ["Color"] = Color3.fromRGB(105, 64, 40)},
	["Vending Machine"] = {["Type"] = "Items", ["Color"] = Color3.fromRGB(166, 0, 0)},
	["Transport Crate"] = {["Type"] = "Items", ["Color"] = Color3.fromRGB(124, 156, 107)},
	-- Ores
	["Iron Ore"] = {["Type"] = "Ores", ["Color"] = Color3.fromRGB(199, 172, 120)},
	["Stone Ore"] = {["Type"] = "Ores", ["Color"] = Color3.fromRGB(105, 102, 92)},
	["Nitrate Ore"] = {["Type"] = "Ores", ["Color"] = Color3.fromRGB(248, 248, 248)}
}
-- Entities | Setup Entities
for _, Model in workspace:GetChildren() do
	if Model:IsA("Model") then
		for Entity, Info in EntityInfo do
			if Info["Type"] == "Nature" and not string.find(Entity, " ") then
				for Index = 1, 2 do
					if MatchModel(ReplicatedStorage.Entities:FindFirstChild(Entity .. tostring(Index)), Model) then
						Entities[Model] = Entity; break
					end
				end
			elseif MatchModel(ReplicatedStorage.Entities:FindFirstChild(string.gsub(Entity, " ", "")), Model) then
				Entities[Model] = Entity; break
			end
		end
	end
end
-- Entities | Update Entities
Connections["Update Entities"] = workspace.ChildAdded:Connect(function(Model)
	if Model:IsA("Model") then
		for Entity, Info in EntityInfo do
			if Info["Type"] == "Nature" and not string.find(Entity, " ") then
				for Index = 1, 2 do
					if MatchModel(ReplicatedStorage.Entities:FindFirstChild(Entity .. tostring(Index)), Model) then
						Entities[Model] = Entity; Debounce[EntityInfo[Entity]["Type"]] = false; break
					end
				end
			elseif MatchModel(ReplicatedStorage.Entities:FindFirstChild(string.gsub(Entity, " ", "")), Model) then
				Entities[Model] = Entity; Debounce[EntityInfo[Entity]["Type"]] = false; break
			end
		end
	end
end)
-- Entities | Remove Entities
Connections["Remove Entities"] = workspace.ChildRemoved:Connect(function(Model)
	if Entities[Model] then 
		Entity = Entities[Model]; Entities[Model] = nil; Debounce[EntityInfo[Entity]["Type"]] = false
	end
end)

-- LocalPlayer
local LocalPlayer = {
	["Arm"] = {},
	["Tool"] = {}
}
-- LocalPlayer | Setup LocalPlayer
for _, Part in Ignore:GetDescendants() do
	if Part:IsA("BasePart") then
		if Part:FindFirstAncestor("FPSArms") then
			if Part:FindFirstAncestor("Armor") or Part.Parent == Part:FindFirstAncestor("FPSArms") then
				table.insert(LocalPlayer["Arm"], Part)
			elseif Part.Parent:IsA("Model") then
				table.insert(LocalPlayer["Tool"], Part)
			end
		elseif Part.Parent:IsA("Model") then
			table.insert(LocalPlayer["Tool"], Part)
		end
	end
end
-- LocalPlayer | Update LocalPlayer
Connections["Update LocalPlayer"] = Ignore.DescendantAdded:Connect(function(Part)
	if Part:IsA("BasePart") then
		if Part:FindFirstAncestor("FPSArms") then
			if Part:FindFirstAncestor("Armor") or Part.Parent == Part:FindFirstAncestor("FPSArms") then
				table.insert(LocalPlayer["Arm"], Part)
			elseif Part.Parent:IsA("Model") then
				table.insert(LocalPlayer["Tool"], Part)
			end
		elseif Part.Parent:IsA("Model") then
			table.insert(LocalPlayer["Tool"], Part)
		end
	end
end)
-- LocalPlayer | Remove LocalPlayer
Connections["Remove LocalPlayer"] = Ignore.DescendantRemoving:Connect(function(Part)
	if table.find(LocalPlayer["Arm"], Part) then
		table.remove(Players, table.find(LocalPlayer["Arm"], Part))
	elseif table.find(LocalPlayer["Tool"], Part) then
		table.remove(Players, table.find(LocalPlayer["Tool"], Part))
	end
end)

-- UI Library

-- UI Library | Repository
local Repository = "https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/"
-- UI Library | Links
local Library	 = loadstring(game:HttpGet(Repository .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/rxn-xyz/Themes/main/BBot.lua"))()
local SaveManager  = loadstring(game:HttpGet(Repository .. "addons/SaveManager.lua"))()
-- UI Library | Window
local Window = Library:CreateWindow({
	Title   = "Trident Survival",
	Center   = true, 
	AutoShow = true,
})
-- Window | Tabs
local Tabs = {
	["Main"]		= Window:AddTab("Main"),
	["UI Settings"] = Window:AddTab("UI Settings"),
}
-- Main | Boxes
local Boxes = {
	["Hitbox Expander"] = Tabs["Main"]:AddLeftGroupbox("Hitbox Expander"),
	["Visuals"] = Tabs["Main"]:AddRightTabbox("Visuals"),
}

-- Visuals
Visuals = {
	["Chams"] = Boxes["Visuals"]:AddTab("Chams"),
	["Local"] = Boxes["Visuals"]:AddTab("Local")
}

-- Visuals | Variables
local ChamsFolder = game:GetService("CoreGui"):FindFirstChild("Chams") or Instance.new("Folder", game:GetService("CoreGui")); ChamsFolder.Name = "Chams"

-- Visuals | Functions | Create Chams
local function CreateChams(Part, Color, Parent)
	-- Parent
	Name = Parent; Parent = ChamsFolder:FindFirstChild(Parent) or Instance.new("Folder", ChamsFolder); Parent.Name = Name
	-- Create
	Chams = Instance.new("BoxHandleAdornment", Parent)
	Chams.Size = Part.Size
	Chams.ZIndex = 10
	Chams.Color3 = Color
	Chams.Adornee = Part
	Chams.AlwaysOnTop = true
	Chams.Transparency = 0.5
end
-- Visuals | Functions | Remove Chams
local function RemoveChams(Parent)
	if not ChamsFolder:FindFirstChild(Parent) then return end
	for _, Chams in ChamsFolder:FindFirstChild(Parent):GetChildren() do
		Chams:Destroy()
	end
end

-- Visuals | Chams | Player Chams
Visuals["Chams"]:AddToggle("Player Chams", {
	Text = "Player Chams",
	Default = false,
}):AddColorPicker('Player Chams Color', {
    Default = Color3.fromRGB(126, 72, 163),
    Title = 'Player Chams Color',
})
-- Visuals | Chams | Update Players
Visuals["Chams"]:AddButton("Update Players", function()
	for _, Player in workspace:GetChildren() do
		if Player:IsA("Model") and Player:FindFirstChild("HumanoidRootPart") then
			table.insert(Players, Player); Debounce["Players"] = false
		end
	end
end)
-- Visuals | Chams | Divider
Visuals["Chams"]:AddDivider()
-- Visuals | Chams | Nature Chams
Visuals["Chams"]:AddToggle("Nature Chams", {
	Text = "Nature Chams",
	Default = false,
})
-- Visuals | Chams | Items
Visuals["Chams"]:AddDropdown("Nature Items", {
	Values = {"Tree", "Cactus", "Berry Bush"},
	Default = 0,
	Multi = true,
	Text = "Nature Items",
	AllowNull = true
})
-- Visuals | Chams | Base Chams
Visuals["Chams"]:AddToggle("Base Chams", {
	Text = "Base Chams",
	Default = false,
})
-- Visuals | Chams | Items
Visuals["Chams"]:AddDropdown("Base Items", {
	Values = {"Cabinet", "Small Box", "Medium Box", "Mega Foundry", "Claim Stone", "Respawn Totem"},
	Default = 0,
	Multi = true,
	Text = "Base Items",
	AllowNull = true
})
-- Visuals | Chams | Items Chams
Visuals["Chams"]:AddToggle("Item Chams", {
	Text = "Item Chams",
	Default = false,
})
-- Visuals | Chams | Items
Visuals["Chams"]:AddDropdown("Items", {
	Values = {"Backpack", "Parts Box", "Military Crate", "Vending Machine", "Transport Crate"},
	Default = 0,
	Multi = true,
	Text = "Items",
	AllowNull = true
})
-- Visuals | Chams | Ore Chams
Visuals["Chams"]:AddToggle("Ore Chams", {
	Text = "Ore Chams",
	Default = false,
})
-- Visuals | Chams | Ores
Visuals["Chams"]:AddDropdown("Ores", {
	Values = {"Iron Ore", "Nitrate Ore", "Stone Ore"},
	Default = 0,
	Multi = true,
	Text = "Ores",
	AllowNull = true
})
-- Visuals | Chams | Update Entities
Visuals["Chams"]:AddButton("Update Entities", function()
    for _, Model in workspace:GetChildren() do
		if not Entities[Model] then
			if Model:IsA("Model") then
				for Entity, Info in EntityInfo do
					if Info["Type"] == "Nature" and not string.find(Entity, " ") then
						for Index = 1, 2 do
							if MatchModel(ReplicatedStorage.Entities:FindFirstChild(Entity .. tostring(Index)), Model) then
								Entities[Model] = Entity; Debounce[EntityInfo[Entity]["Type"]] = false; break
							end
						end
					elseif MatchModel(ReplicatedStorage.Entities:FindFirstChild(string.gsub(Entity, " ", "")), Model) then
						Entities[Model] = Entity; Debounce[EntityInfo[Entity]["Type"]] = false; break
					end
				end
			end
		end
	end
end)

-- Visuals | Local | Arm Chams
Visuals["Local"]:AddToggle("Arm Chams", {
	Text = "Arm Chams",
	Default = false,
}):AddColorPicker('Arm Chams Color', {
    Default = Color3.fromRGB(126, 72, 163),
    Title = 'Arm Chams Color',
})
-- Visuals | Local | Tool Chams
Visuals["Local"]:AddToggle("Tool Chams", {
	Text = "Tool Chams",
	Default = false,
}):AddColorPicker('Tool Chams Color', {
    Default = Color3.fromRGB(126, 72, 163),
    Title = 'Tool Chams Color',
})
-- Visuals | Local | Match Colors | Label
Visuals["Local"]:AddLabel("Match Colors")
-- Visuals | Local | Match Colors
Visuals["Local"]:AddButton("Arm", function()
    Options["Tool Chams Color"]:SetValueRGB(Options["Arm Chams Color"].Value)
end):AddButton("Tool", function()
    Options["Arm Chams Color"]:SetValueRGB(Options["Tool Chams Color"].Value)
end)
-- Visuals | Local | Divider
Visuals["Local"]:AddDivider()
-- Visuals | Local | Crosshair
Visuals["Local"]:AddButton("Crosshair", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Crosshair-Script/main/Crosshair.lua"))()
end):AddTooltip('Press "Q" To Toggle')

-- Visuals | Chams | Player Chams | Toggle
Toggles["Player Chams"]:OnChanged(function()
	-- False
	if not Toggles["Player Chams"].Value then RemoveChams("Players") return end
	-- True
	task.spawn(function()
		while Toggles["Player Chams"].Value do
			if not Toggles["Player Chams"].Value then break end
			RemoveChams("Players"); for _, Player in Players do
				for _, Part in Player:GetChildren() do
					pcall(function()
						CreateChams(Part, Options["Player Chams Color"].Value, "Players")
					end)
				end
			end
			Debounce["Players"] = true; repeat task.wait() until Debounce["Players"] == false
		end
	end)
end)
-- Visuals | Chams | Player Chams Color | Update
Options["Player Chams Color"]:OnChanged(function()
	Debounce["Players"] = false
end)
-- Visuals | Chams | Nature Chams | Toggle
Toggles["Nature Chams"]:OnChanged(function()
	-- False
	if not Toggles["Nature Chams"].Value then RemoveChams("Nature") return end
	-- True
	task.spawn(function()
		while Toggles["Nature Chams"].Value do
			if not Toggles["Nature Chams"].Value then break end; RemoveChams("Nature")
			for Entity, Name in Entities do
				if Options["Nature Items"].Value[Name] then
					for _, Part in Entity:GetChildren() do
						pcall(function()
							CreateChams(Part, EntityInfo[Name]["Color"], "Nature")
						end)
					end
				end
			end
			Debounce["Nature"] = true; task.wait(1) repeat task.wait() until Debounce["Nature"] == false
		end
	end)
end)
-- Visuals | Chams | Nature Items | Update
Options["Nature Items"]:OnChanged(function()
	Debounce["Nature"] = false
end)
-- Visuals | Chams | Base Chams | Toggle
Toggles["Base Chams"]:OnChanged(function()
	-- False
	if not Toggles["Base Chams"].Value then RemoveChams("Base") return end
	-- True
	task.spawn(function()
		while Toggles["Base Chams"].Value do
			if not Toggles["Base Chams"].Value then break end; RemoveChams("Base")
			for Entity, Name in Entities do
				if Options["Base Items"].Value[Name] then
					for _, Part in Entity:GetChildren() do
						pcall(function()
							CreateChams(Part, EntityInfo[Name]["Color"], "Base")
						end)
					end
				end
			end
			Debounce["Base"] = true; task.wait(1) repeat task.wait() until Debounce["Base"] == false
		end
	end)
end)
-- Visuals | Chams | Base Items | Update
Options["Base Items"]:OnChanged(function()
	Debounce["Base"] = false
end)
-- Visuals | Chams | Item Chams | Toggle
Toggles["Item Chams"]:OnChanged(function()
	-- False
	if not Toggles["Item Chams"].Value then RemoveChams("Items") return end
	-- True
	task.spawn(function()
		while Toggles["Item Chams"].Value do
			if not Toggles["Item Chams"].Value then break end; RemoveChams("Items")
			for Entity, Name in Entities do
				if Options["Items"].Value[Name] then
					for _, Part in Entity:GetChildren() do
						pcall(function()
							CreateChams(Part, EntityInfo[Name]["Color"], "Items")
						end)
					end
				end
			end
			Debounce["Items"] = true; task.wait(1) repeat task.wait() until Debounce["Items"] == false
		end
	end)
end)
-- Visuals | Chams | Items | Update
Options["Items"]:OnChanged(function()
	Debounce["Items"] = false
end)
-- Visuals | Chams | Ore Chams | Toggle
Toggles["Ore Chams"]:OnChanged(function()
	-- False
	if not Toggles["Ore Chams"].Value then RemoveChams("Ores") return end
	-- True
	task.spawn(function()
		while Toggles["Ore Chams"].Value do
			if not Toggles["Ore Chams"].Value then break end; RemoveChams("Ores")
			for Entity, Name in Entities do
				if Options["Ores"].Value[Name] then
					pcall(function()
						CreateChams(Entity.PrimaryPart, EntityInfo[Name]["Color"], "Ores")
					end)
				end
			end
			Debounce["Ores"] = true; task.wait(1) repeat task.wait() until Debounce["Ores"] == false
		end
	end)
end)
-- Visuals | Chams | Ores | Update
Options["Ores"]:OnChanged(function()
	Debounce["Ores"] = false
end)

-- Visuals | Local | Arm Chams | Toggle
Toggles["Arm Chams"]:OnChanged(function()
	-- False
	if not Toggles["Arm Chams"].Value then 
		for Part, Info in OriginalProperties do
			if table.find(LocalPlayer["Arm"], Part) then
				for Property, Value in Info do
					Part[Property] = Value; OriginalProperties[Part] = nil
				end
			end
		end
	return end
	-- True
	task.spawn(function()
		while Toggles["Arm Chams"].Value do
			if not Toggles["Arm Chams"].Value then break end
			for _, Part in LocalPlayer["Arm"] do
				ChangeProperties(Part, {
					["Material"] = Enum.Material.ForceField,
					["Color"] = Options["Arm Chams Color"].Value
				})
			end
			task.wait(0.1)
		end
	end)
end)
-- Visuals | Local | Tool Chams | Toggle
Toggles["Tool Chams"]:OnChanged(function()
	-- False
	if not Toggles["Tool Chams"].Value then 
		for Part, Info in OriginalProperties do
			if table.find(LocalPlayer["Tool"], Part) then
				for Property, Value in Info do
					Part[Property] = Value; OriginalProperties[Part] = nil
				end
			end
		end
	return end
	-- True
	task.spawn(function()
		while Toggles["Tool Chams"].Value do
			if not Toggles["Tool Chams"].Value then break end
			for _, Part in LocalPlayer["Tool"] do
				ChangeProperties(Part, {
					["Material"] = Enum.Material.ForceField,
					["Color"] = Options["Tool Chams Color"].Value
				})
			end
			task.wait(0.1)
		end
	end)
end)

-- Hitbox Expander

-- Hitbox Expander | Head Expander
Boxes["Hitbox Expander"]:AddToggle("Head Expander", {
	Text = "Head",
	Default = false,
})
-- Hitbox Expander | Head Size
Boxes["Hitbox Expander"]:AddSlider("Head Size", {
	Text = "Size",
	Default = 1,
	Min = 1,
	Max = 5,
	Rounding = 1,
	Compact = false,
})
-- Hitbox Expander | Head Transparency
Boxes["Hitbox Expander"]:AddSlider("Head Transparency", {
	Text = "Transparency",
	Default = 1,
	Min = 1,
	Max = 3.5,
	Rounding = 1,
	Compact = false,
})
-- Hitbox Expander | Divider
Boxes["Hitbox Expander"]:AddDivider()
-- Hitbox Expander | Torso Expander
Boxes["Hitbox Expander"]:AddToggle("Torso Expander", {
	Text = "Torso",
	Default = false,
})
-- Hitbox Expander | Torso Size
Boxes["Hitbox Expander"]:AddSlider("Torso Size", {
	Text = "Size",
	Default = 1,
	Min = 1,
	Max = 3.5,
	Rounding = 1,
	Compact = false,
})
-- Hitbox Expander | Torso Transparency
Boxes["Hitbox Expander"]:AddSlider("Torso Transparency", {
	Text = "Transparency",
	Default = 0,
	Min = 0,
	Max = 1,
	Rounding = 1,
	Compact = false,
})

-- Hitbox Expander | Properties
local Properties = {
	["Size"] = {
		["Head"] = Vector3.new(1.6732481718063354, 0.8366240859031677, 0.8366240859031677),
		["Torso"] = Vector3.new(0.6530659198760986, 2.220424175262451, 1.4367451667785645)
	},
	["Transparency"] = {
		["Head"] = 0,
		["Torso"] = 0,
	},
}

-- Hitbox Expander | Head Expander | Toggle
Toggles["Head Expander"]:OnChanged(function()
	-- False
	if not Toggles["Head Expander"].Value then
		for _, Player in Players do
			for Property, Value in Properties do
				pcall(function ()
					Player.Head[Property] = Value["Head"]
				end)
			end
		end
		-- Debounce
		Debounce["Players"] = false; return
	end
	-- True
	task.spawn(function()
		while Toggles["Head Expander"].Value do
			if not Toggles["Head Expander"].Value then break end
			for _, Player in Players do
				pcall(function()
					Player.Head.Size = Vector3.new(Options["Head Size"].Value, Options["Head Size"].Value, Options["Head Size"].Value)
					Player.Head.Transparency = Options["Head Transparency"].Value
				end)
			end
			task.wait(1)
		end
	end)
	-- Debounce
	Debounce["Players"] = false
end)
-- Hitbox Expander | Head Size | Update
Options["Head Size"]:OnChanged(function()
	Debounce["Players"] = false
end)
-- Hitbox Expander | Torso Expander | Toggle
Toggles["Torso Expander"]:OnChanged(function()
	-- False
	if not Toggles["Torso Expander"].Value then
		for _, Player in Players do
			for Property, Value in Properties do
				pcall(function ()
					Player.Torso[Property] = Value["Torso"]
				end)
			end
		end
		-- Debounce
		Debounce["Players"] = false; return
	end
	-- True
	task.spawn(function()
		while Toggles["Torso Expander"].Value do
			if not Toggles["Torso Expander"].Value then break end
			for _, Player in Players do
				pcall(function()
					Player.Torso.Size = Vector3.new(Options["Torso Size"].Value, Options["Torso Size"].Value, Options["Torso Size"].Value)
					Player.Torso.Transparency = Options["Torso Transparency"].Value
				end)
			end
			task.wait(1)
		end
	end)
	-- Debounce
	Debounce["Players"] = false
end)
-- Hitbox Expander | Torso Size | Update
Options["Torso Size"]:OnChanged(function()
	Debounce["Players"] = false
end)

-- UI Settings
local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu")
-- Setup
MenuGroup:AddButton("Unload", function() Library:Unload() for _, Connection in next, Connections do Connection:Disconnect() end end)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "LeftAlt", NoUI = true, Text = "Menu keybind" }); Library.ToggleKeybind = Options.MenuKeybind
-- Theme Manager
ThemeManager:SetLibrary(Library)
-- Save Manager
SaveManager:SetLibrary(Library)
-- Setup
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
ThemeManager:SetFolder("MyScriptHub")
SaveManager:SetFolder("MyScriptHub/specific-game")
SaveManager:BuildConfigSection(Tabs["UI Settings"])
ThemeManager:ApplyToTab(Tabs["UI Settings"])