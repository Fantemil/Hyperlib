local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("[UPDð] Scythe Simulator", "Sentinel")

local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main Section")

local Variables = {
    AutoSwing = false,
    AutoHill = false,
    AutoRebirth = false,
	AutoHatch = false,
	SelectedEgg = nil
}

local EggCost = {
    Egg1 = 250,
    Egg2 = 1000,
    Egg3 = 2500,
    Egg4 = 5000,
    Egg5 = 10000,
    Egg6 = 25000,
    Egg7 = 50000,
    Egg8 = 75000,
    Egg9 = 100000,
    Egg10 = 125000,
    Egg11 = 150000,
    Egg12 = 175000,
    Egg13 = 200000,
    Egg14 = 200000,
    Egg15 = 225000
}	

local EggDropdown = {}
for Name in pairs(EggCost) do
    table.insert(EggDropdown, Name)
end

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local EggFrame = player.PlayerGui.MainGui.Frames.EggsFrame.ScrollingFrame

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

MainSection:NewToggle("Auto Swing", "Automatically swings for you", function(state)
    Variables.AutoSwing = state

    while Variables.AutoSwing do
        if character:FindFirstChildOfClass("Tool") then
            character:FindFirstChildOfClass("Tool"):Activate()
        elseif character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0 then
            local tool = player.Backpack:FindFirstChildOfClass("Tool")
            if tool then
                character.Humanoid:EquipTool(tool)
            end
        end
        task.wait(0.1)
    end
end)

MainSection:NewToggle("Auto Rebirth", "Automatically rebirth", function(state)
    Variables.AutoRebirth = state

    while Variables.AutoRebirth do
        local playerData = player:FindFirstChild("PlayerData")
        if playerData and playerData.Strength.Value >= playerData.RebirthRequirement.Value then
            ReplicatedStorage:WaitForChild("RebirthPlayer"):FireServer(false)
        end
        task.wait(0.2)
    end
end)

MainSection:NewDropdown("Select Egg", "Select the egg to automatically hatch", EggDropdown, function(currentOption)
	Variables.SelectedEgg = currentOption
end)

MainSection:NewToggle("Auto Hatch", "Automatically teleports to the bonus area of KOTH", function(state)
    Variables.AutoHatch = state

    while Variables.AutoHatch do
		local HatchPet = ReplicatedStorage:WaitForChild("HatchPet")
		local hasSpace = ReplicatedStorage.CheckSpace:InvokeServer(false, 0, true)
		local Egg = EggFrame:WaitForChild(Variables.SelectedEgg)

		if Egg and EggCost[Egg.Name] and player.leaderstats.Gems.Value >= EggCost[Egg.Name] then
			if hasSpace then
				HatchPet:FireServer(Egg.Name, 1, hasSpace)
			end
		end
        task.wait(0.2)
    end
end)

MainSection:NewToggle("Auto Hill", "Automatically teleports to the bonus area of KOTH", function(state)
    Variables.AutoHill = state

    while Variables.AutoHill do
        if character and character:FindFirstChild("HumanoidRootPart") then
            Workspace.KingOfHill.BonusArea.CFrame = character.HumanoidRootPart.CFrame
        end
        task.wait(0)
    end
end)