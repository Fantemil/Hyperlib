--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Sharkbite 2ðºð¸ thanks for using this script!", HidePremium = false, IntroEnabled = false, ConfigFolder = "SB2Mod"})

local BoatTab = Window:MakeTab({
	Name = "free boat ð¢",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local BoatSection = BoatTab:AddSection({
	Name = "Boat Options"
})

BoatSection:AddDropdown({
	Name = "Select your Free Boat made by tjlaporre79",
	Default = "1",
	Options = {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine", "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip", "Wildfire", "Titanic", "StealthBoat", "UFO", "PyroTank", "Athleteducky"},
	Callback = function(Value)
		local ohString1 = (Value)

		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
	end    
})