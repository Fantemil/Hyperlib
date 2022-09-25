if game:GetService'CoreGui':FindFirstChild'DARK II' then
    game:GetService'CoreGui'.SRSGui:Destroy();
end

local Library = loadstring(game:HttpGet("http://impulse-hub.xyz/library",true))()

local charset = {}
for i = 48,  57 do table.insert(charset, string.char(i)) end
for i = 65,  90 do table.insert(charset, string.char(i)) end
for i = 97, 122 do table.insert(charset, string.char(i)) end
function RandomCharacters(length)
  if length > 0 then
    return RandomCharacters(length - 1) .. charset[math.random(1, #charset)]
  else
    return ""
  end
end

local Initialize = Library:Init(game:GetService("CoreGui"), "SRSGui")
-- Window 1 --

local w1 = Initialize:AddTab(RandomCharacters(math.random(5, 5)))
local FarmingTab = w1:AddSection("Farm", false)
local PetTab = w1:AddSection("Pets", false)
local MiscTab = w1:AddSection("Misc", false)

-- Window 1 --

-- Includes --
local RS = game:service'ReplicatedStorage';
local Players = game:service'Players';

local LocalP = Players.LocalPlayer
local Char = LocalP.Character
local Remotes = RS.Remotes

local BarText = string.split(LocalP.PlayerGui.MainUI.RebirthUI.UI.RebirthThing.Display.Text, "/")
local CurrentBar = tonumber(BarText[1])
local MaxBar = tonumber(BarText[2])

function AddSpeed() Remotes.AddSpeed:FireServer() end
function Rebirth() Remotes.Rebirth:FireServer() end

-- Includes --

local Speed = FarmingTab:AddToggle("fspeed", "Auto-Speed", false, function(value)
    getgenv().farmspeed = value
    while getgenv().farmspeed and wait(.0000000000001) do 
        wait(.4)
        wait(.3)
        wait(.498)
        wait(0.99)
        wait(0.99)
        for i = 1, 2000 do
            AddSpeed() 
        end
    end
end)

local Rebirth = FarmingTab:AddToggle("frebirth", "Auto-Rebirth", false, function(value)
    getgenv().rebirth = value
    while getgenv().rebirth and wait(0.4) do 
        wait(.2)
        if CurrentBar >= MaxBar or CurrentBar <= MaxBar then 
            Rebirth()
        end 
    end
end)

local Orbs = FarmingTab:AddToggle("forbs", "Auto-Orbs", false, function(value)
    getgenv().orbs = value
    while getgenv().orbs and wait(0.4) do 
        for _,orbs in pairs(workspace.OrbSpawns:GetChildren()) do
            if orbs:FindFirstChild("TouchInterest") and orbs.Name == "Orb" then
                wait(.3)
                orbs.CFrame = Char.HumanoidRootPart.CFrame * CFrame.new(0, 1, 0) 
            end
        end
    end
end)

local Rings = FarmingTab:AddToggle("frings", "Auto-Rings", false, function(value)
    getgenv().rings = value
    while getgenv().rings and wait(0.4) do 
        for _,rings in pairs(workspace.OrbSpawns:GetChildren()) do
            if rings:FindFirstChild("TouchInterest") and rings.Name == "Ring" then
                wait(.3)
                rings.CFrame = Char.HumanoidRootPart.CFrame * CFrame.new(0, 1, 0) 
            end
        end
    end
end)

pets = {}

for i,v in pairs(LocalP.PlayerGui.MainUI.PetUI.SelectionPanel.ScrollingFrame:GetChildren()) do
    if v:FindFirstChild("NamePetThing") then
        if v.NamePetThing.Text == "NAME" then
        else
            PetName = v.NamePetThing.Text
            table.insert(pets, PetName)
        end
    end
end 

local PetList = PetTab:AddScrolling("Pet", pets, "N/A", false, true, function(v)
    SelectedPet = v
    for i,v in pairs(LocalP.PlayerGui.MainUI.PetUI.SelectionPanel.ScrollingFrame:GetChildren()) do
        if v:FindFirstChild("NamePetThing") then
            if v.NamePetThing.Text == "NAME" then
            else
  table.remove(pets)
                PetName = v.NamePetThing.Text
                table.insert(pets, PetName)
            end
        end
    end 
end)

local EquipPet = PetTab:AddSlider("fequippet", "Equip Pet", {min = 1, max = 50, def = 1}, function(value)
    if SelectedPet == nil then
    else
        for i = 1, value do
            wait(1)
            Remotes.PetEquip:FireServer(SelectedPet)
        end
    end
end)

local UnequipPet = PetTab:AddSlider("funequippet", "Unequip Pet", {min = 1, max = 100, def = 1}, function(value)
    if SelectedPet == nil then
    else
        for i = 1, value do
            wait(.1)
            Remotes.PetUnequip:FireServer(SelectedPet)
        end
    end
end)

local InfStorage = MiscTab:AddButton("finfstorage", "Inf Pet Storage", false, function()
    LocalP.InvSpace.Value = 9e+18
end)

local InfEquip = MiscTab:AddButton("finfequip", "Inf Pet Equipped", false, function()
    LocalP.PetSlot.Value = 9e+18
end)