-- Please Credits When Using.

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("A Very Hungry CaseOh ð§ - Free - ð", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

tab.newLabel("Main")

local Weapons = {
    "Pistol",
    "Shotgun",
    "SMG",
    "AssaultRifle",
    "Sniper",
    "LMG",
    "GrenadeLauncher",
    "RocketLauncher",
    "Railgun",
    "BannaLauncher",
    "Minigun",
    "BurgerLauncher",
    "Crossbow",
    "Baconator",
    "Paintball",
    "CarLauncher",
    "Waffle-Inator",
    "AntiMatter",
    "BlackHoleGun",
    "GunGun",
    "RapidRocketlauncher",
    "SunLauncher"
}

local Tools = {
    "GravityCoil",
    "Regen",
    "SpeedCoil",
    "SuperSpeedCoil",
    "FusionCoil",
    "SuperFusionCoil",
    "JEEP"
}

tab.newDropdown("Weapons", "Select Desired Weapon", Weapons, function(selected)
    selectedWeapon = selected
end)

tab.newButton("Obtain Weapon", "Obtain Selected Weapon", function()
    game:GetService("ReplicatedStorage").NewTool:FireServer(selectedWeapon)
end)

tab.newDropdown("Tools", "Select Desired Tool", Tools, function(selected)
    selectedTool = selected
end)

tab.newButton("Obtain Tool", "Obtain Selected Tool", function()
    game:GetService("ReplicatedStorage").NewTool:FireServer(selectedTool)
end)

tab.newLabel("Utility")

local money = 69
local aLevel = false

tab.newInput("Money","Set Money Desired Amount", function(inputMoney)
    money = inputMoney
end)

tab.newButton("Claim Money","Claim Entered Money", function()
local tableRarity = {
    [1] = -tonumber(money),
    [2] = {
        ["Legendary"] = 0.15,
        ["Common"] = 0.2,
        ["Epic"] = 0.4,
        ["Mythic"] = 0.07,
        ["Uncommon"] = 0.25,
        ["Rare"] = 0.4
    }
}

game:GetService("ReplicatedStorage").SpinnerContents.RemoteFunction:InvokeServer(unpack(tableRarity))
end)

tab.newToggle("Farm Level", "Toggle", false, function(bool)
    aLevel = bool
    while aLevel do
        task.wait(0.00000000000000000000001)
        game:GetService("ReplicatedStorage").Damage:FireServer(999e9, "8NYEG50HeTQHspveEFhS")
    end
end)