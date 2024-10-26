local replicatedStorage = game:GetService("ReplicatedStorage")

-- load the OrionLib UI library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- create the main window
local Window = OrionLib:MakeWindow({
Name = "Z4TROX | Bims RNG",
HidePremium = false,
SaveConfig = false,
ConfigFolder = "Z4TROX",
IntroEnabled = true,
IntroText = "Welcome to Z4TROX !",
Icon = "https://example.com/window-icon.png",
CloseCallback = function() end
})

local Tab = Window:MakeTab({
Name = "Aura",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

-- function to get all aura names
local function getAllAuraNames()
local aurasFolder = replicatedStorage:WaitForChild("Auras")
local auraNames = {}
for _, aura in pairs(aurasFolder:GetChildren()) do
table.insert(auraNames, aura.Name)
end
return auraNames
end

-- get the list of aura names
local auraNames = getAllAuraNames()

-- function to equip an aura
local function equipAura(auraName)
local args = {
[1] = replicatedStorage:WaitForChild("Auras"):WaitForChild(auraName)
}
replicatedStorage:WaitForChild("Remotes"):WaitForChild("AuraEquip"):FireServer(unpack(args))
print("Equipped aura:", auraName)
end

Tab:AddDropdown({
Name = "Select Aura",
Default = auraNames[1], -- default value
Options = auraNames, -- options from the aura names
Callback = function(Value)
equipAura(Value)
end
})

-- print all aura names (optional, for debugging)
for _, auraName in pairs(auraNames) do
print("Auras:", auraName)
end