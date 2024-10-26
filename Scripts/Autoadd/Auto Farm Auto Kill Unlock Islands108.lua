----------------------------
--------Developed by--------
----------Snipcola----------
----------------------------

-- Config
local NL_Config = {
	-- Script
	Enabled = true, -- Toggle
	Interval = 0.25, -- Delay
	-- Features
	AntiAFK = true, -- Anti AFK
	Swing = true, -- Auto Swing
	Sell = true, -- Auto Sell
	BuySwords = true, -- Auto Buy All Swords
	BuyBelts = true, -- Auto Buy All Belts
	BuySkills = true, -- Auto Buy All Skills
	BuyShurikens = true, -- Auto Buy All Shurikens
	BuyRanks = true, -- Auto Buy All Ranks
	CollectHoops = false, -- Auto Collect Hoops
	UnlockIslands = false, -- Unlock Islands (Once)
	MaxJumps = true, -- 50 Double Jumps
	Kill = false, -- Auto Kill
	Invisible = false, -- Auto Invisible
}

local NL_Islands = {
	"Enchanted Island",
	"Astral Island",
	"Mystical Island",
	"Space Island",
	"Tundra Island",
	"Sandstorm",
	"Ancient Inferno Island",
	"Thunderstorm",
	"Eternal Island",
	"Soul Fusion Island",
	"Cybernetic Legends Island",
	"Mythical Souls Island",
	"Winter Wonder Island",
	"Dragon Legend Island",
	"Golden Master Island",
	"Midnight Shadow Island",
	"Skystorm Ultraus Island",
	"Chaos Legends Island",
	"Dark Elements Island",
	"Inner Peace Island",
	"Blazing Vortex Island",
}

if getgenv().NL_Config then
	getgenv().NL_Config = nil
	task.wait()
end

getgenv().NL_Config = NL_Config

-- Wait Until Load
if not game:IsLoaded() then
	game.Loaded:Wait()
end

-- Dependencies
local VirtualUser = game:GetService("VirtualUser")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Functions
local FuncLocks = {}

local function CallFunction(Func, Id)
	if FuncLocks[Id] then
		return
	end

	FuncLocks[Id] = true

	task.spawn(function()
		pcall(Func)
		FuncLocks[Id] = false
	end)
end

local function GetCharacter(Player, Wait)
	if not Player then
		return
	end

	if Wait then
		return Player.Character or Player.CharacterAdded:Wait()
	else
		return Player.Character
	end
end

local function GetHumanoid(Player, Wait)
	local Character = GetCharacter(Player, Wait)

	if Character then
		return Character:FindFirstChild("Humanoid")
	end
end

local function GetTools(Player)
	if not Player then
		return
	end

	local Tools = {}
	local Backpack = Player:FindFirstChild("Backpack")

	if Backpack then
		for _, Item in pairs(Backpack:GetChildren()) do
			if Item:IsA("Tool") then
				table.insert(Tools, Item)
			end
		end
	end

	return Tools
end

local function EquipTool(Tool)
	if not (Tool and Tool:IsA("Tool")) then
		return
	end

	local Humanoid = GetHumanoid(LocalPlayer)

	if Humanoid then
		Humanoid:EquipTool(Tool)
	end
end

local function UseTool(Tool)
	if not (Tool and Tool:IsA("Tool") and Tool.Enabled) then
		return
	end

	Tool:Activate()
end

local function UseEquippedTool()
	local Character = GetCharacter(LocalPlayer)

	if Character then
		local Tool = Character:FindFirstChildOfClass("Tool")
		UseTool(Tool)
	end
end

local function GetSword()
	local Tools = GetTools(LocalPlayer)

	for _, Tool in ipairs(Tools) do
		if Tool:FindFirstChild("attackKatanaScript") then
			return Tool
		end
	end
end

local function EquipSword()
	local Sword = GetSword()
	EquipTool(Sword)
end

local function GameEvent(...)
	local NinjaEvent = LocalPlayer:FindFirstChild("ninjaEvent")

	if NinjaEvent then
		NinjaEvent:FireServer(...)
	end
end

local function GetSellAreaCircle()
	local SellAreaCircles = workspace:FindFirstChild("sellAreaCircles")

	if SellAreaCircles then
		local SellAreaCircle
		local MaxNumber

		for _, Circle in pairs(SellAreaCircles:GetChildren()) do
			if string.match(Circle.Name, "sellAreaCircle") then
				local NumberString = string.match(Circle.Name, "%d+$")

				if NumberString then
					local Number = tonumber(NumberString)

					if not MaxNumber or Number > MaxNumber then
						MaxNumber = Number
						SellAreaCircle = Circle
					end
				elseif not MaxNumber then
					SellAreaCircle = Circle
				end
			end
		end

		return SellAreaCircle
	end
end

local function GetLastIsland()
	return NL_Islands[#NL_Islands]
end

local function GetRanks()
	local Ranks = {}
	local RanksItem = ReplicatedStorage:FindFirstChild("Ranks")

	if RanksItem and RanksItem:FindFirstChild("Ground") then
		for _, Rank in pairs(RanksItem.Ground:GetChildren()) do
			table.insert(Ranks, Rank.Name)
		end
	end

	return Ranks
end

local function GetHoops()
	local Hoops = workspace:FindFirstChild("Hoops")

	if Hoops then
		return Hoops:GetChildren()
	end
end

local function GetIslands()
	local Islands = {}
	local IslandsItem = workspace:FindFirstChild("islandUnlockParts")

	if IslandsItem then
		for _, Island in pairs(IslandsItem:GetChildren()) do
			if table.find(NL_Islands, Island.Name) then
				table.insert(Islands, Island)
			end
		end
	end

	return Islands
end

-- Variables
local Config = getgenv().NL_Config

local SellAreaCircle = GetSellAreaCircle()
local LastIsland = GetLastIsland()
local Ranks = GetRanks()
local Islands = GetIslands()

local FirstTimeSetup
local AntiAFKConnection

-- Features
local function AntiAFK()
	if AntiAFKConnection or not Config.AntiAFK then
		return
	end

	AntiAFKConnection = LocalPlayer.Idled:Connect(function()
		local Camera = workspace:FindFirstChild("CurrentCamera")

		if Camera then
			local Vector = Vector2.new(0, 0)
			local CFrame = Camera.CFrame

			VirtualUser:Button2Down(Vector, CFrame)
			task.wait(2)
			VirtualUser:Button2Up(Vector, CFrame)
		end
	end)

	task.spawn(function()
		while AntiAFKConnection and task.wait() do
			if not (Config and Config.Enabled and Config.AntiAFK) then
				AntiAFKConnection:Disconnect()
				AntiAFKConnection = nil
			end
		end
	end)
end

local function Swing()
	if not Config.Swing then
		return
	end

	EquipSword()
	GameEvent("swingKatana")
	UseEquippedTool()
end

local function Sell()
	if not (Config.Sell and SellAreaCircle) then
		return
	end

	local Humanoid = GetHumanoid(LocalPlayer)
	local Circle = SellAreaCircle:FindFirstChild("circleInner")

	if Humanoid and Circle then
		local PlayerCFrame = Humanoid.RootPart.CFrame
		local CircleCFrame = Circle.CFrame

		Circle.CFrame = PlayerCFrame
		task.wait(0.05)
		Circle.CFrame = CircleCFrame
	end
end

local function BuySwords()
	if not Config.BuySwords then
		return
	end

	GameEvent("buyAllSwords", LastIsland)
end

local function BuyBelts()
	if not Config.BuyBelts then
		return
	end

	GameEvent("buyAllBelts", LastIsland)
end

local function BuySkills()
	if not Config.BuySkills then
		return
	end

	GameEvent("buyAllSkills", LastIsland)
end

local function BuyShurikens()
	if not Config.BuyShurikens then
		return
	end

	GameEvent("buyAllShurikens", LastIsland)
end

local function BuyRanks()
	if not Config.BuyRanks then
		return
	end

	for _, Rank in ipairs(Ranks) do
		GameEvent("buyRank", Rank)
	end
end

local function CollectHoops()
	if not Config.CollectHoops then
		return
	end

	local Humanoid = GetHumanoid(LocalPlayer)
	local Hoops = GetHoops()

	if Humanoid and Hoops then
		for _, Hoop in pairs(Hoops) do
			local TouchPart = Hoop:FindFirstChild("touchPart")

			if TouchPart then
				local PlayerCFrame = Humanoid.RootPart.CFrame
				TouchPart.CFrame = PlayerCFrame
			end
		end
	end
end

local function UnlockIslands()
	if not Config.UnlockIslands then
		return
	end

	local Humanoid = GetHumanoid(LocalPlayer)

	if Humanoid then
		local PlayerCFrame = Humanoid.RootPart.CFrame

		for _, Island in ipairs(Islands) do
			local IslandCFrame = Island.CFrame
			Humanoid.RootPart.CFrame = IslandCFrame

			task.wait(0.1)
		end

		task.wait(1)
		Humanoid.RootPart.Velocity = Vector3.new(0, 0, 0)
		Humanoid.RootPart.CFrame = PlayerCFrame
	end
end

local function MaxJumps()
	if not Config.MaxJumps then
		return
	end

	local JumpCount = LocalPlayer:FindFirstChild("multiJumpCount")

	if JumpCount then
		JumpCount.Value = 50
	end
end

local function Kill()
	if not Config.Kill then
		return
	end

	local Character = GetCharacter(LocalPlayer)
	local Humanoid = GetHumanoid(LocalPlayer)

	if Character and Humanoid then
		local InSafezone = Character:FindFirstChild("inSafezone")

		local RootPart = Humanoid.RootPart
		local Position = RootPart.Position
		local LookVector = RootPart.CFrame.LookVector

		for _, Player in pairs(Players:GetPlayers()) do
			if Player ~= LocalPlayer then
				local PlayerCharacter = GetCharacter(Player)
				local Head = PlayerCharacter:FindFirstChild("Head")

				if
					PlayerCharacter
					and Head
				then
					Head.CanCollide = true
					Head.Anchored = true

					if not (InSafezone or PlayerCharacter:FindFirstChild("inSafezone")) then						
						local HeadPosition = Position + LookVector * 4
						Head.Position = HeadPosition
					else
						Head.Position = Vector3.new(0, 0, 0)
					end
				end
			end
		end

		Swing()
	end
end

local function Invisible()
	if not Config.Invisible then
		return
	end

	GameEvent("goInvisible")
end

-- Main
while task.wait() do
	Config = getgenv().NL_Config

	if not (Config and Config.Enabled) then
		Config = nil
		break
	end

	if Config.Interval then
		task.wait(Config.Interval)
	end

	if not FirstTimeSetup then
		UnlockIslands()
		FirstTimeSetup = true
	end

	CallFunction(AntiAFK, "AntiAFK")
	CallFunction(Swing, "Swing")
	CallFunction(Sell, "Sell")
	CallFunction(BuySwords, "BuySwords")
	CallFunction(BuyBelts, "BuyBelts")
	CallFunction(BuySkills, "BuySkills")
	CallFunction(BuyShurikens, "BuyShurikens")
	CallFunction(BuyRanks, "BuyRanks")
	CallFunction(CollectHoops, "CollectHoops")
	CallFunction(MaxJumps, "MaxJumps")
	CallFunction(Kill, "Kill")
	CallFunction(Invisible, "Invisible")
end