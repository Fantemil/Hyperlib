-- Global Variables
getgenv().AutoClick = false
getgenv().OpenEgg = false
getgenv().AutoRebirth = false
getgenv().AutoRebirth2 = false
getgenv().AutoRebirth3 = false
getgenv().AutoRebirth4 = false
getgenv().AutoRebirth5 = false
getgenv().AutoRebirth6 = false
--
getgenv().AutoRebirth7 = false
getgenv().AutoRebirth8 = false
getgenv().AutoRebirth9 = false
getgenv().AutoRebirth10 = false
getgenv().AutoRebirth11 = false
getgenv().AutoRebirth12 = false
getgenv().AutoRebirth13 = false
getgenv().AutoRebirth14 = false
getgenv().AutoRebirth100m = false
getgenv().AutoRebirth500m = false
getgenv().AutoRebirth1B = false
--
getgenv().CraftAlls = false  
getgenv().Upgrade = false
getgenv().Chest = false
getgenv().ClickPotion = false
getgenv().GemsPotion = false
getgenv().LuckPotion = false
getgenv().RebirthPotion = false

-- Functions
function Eggs(EggType, OpenType)
   spawn(function ()
       while OpenEgg == true do
           local args = {[1] = EggType,[2] = OpenType}
           game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
           wait()
       end
   end)
end

function AutoTap()
   spawn(function ()
       while AutoClick == true do
           game:GetService("ReplicatedStorage").Events.Click3:FireServer()
           wait()
       end
   end)
end


function Rebirths(RebirthType)
   spawn(function ()
       while AutoRebirth == true do
           local args = {[1] = tonumber(RebirthType)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths2(RebirthType2)
   spawn(function ()
       while AutoRebirth2 == true do
           local args = {[1] = tonumber(RebirthType2)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths3(RebirthType3)
   spawn(function ()
       while AutoRebirth3 == true do
           local args = {[1] = tonumber(RebirthType3)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths4(RebirthType4)
   spawn(function ()
       while AutoRebirth4 == true do
           local args = {[1] = tonumber(RebirthType4)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths5(RebirthType5)
   spawn(function ()
       while AutoRebirth5 == true do
           local args = {[1] = tonumber(RebirthType5)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths6(RebirthType6)
   spawn(function ()
       while AutoRebirth6 == true do
           local args = {[1] = tonumber(RebirthType6)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths7(RebirthType7)
   spawn(function ()
       while AutoRebirth7 == true do
           local args = {[1] = tonumber(RebirthType7)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end


function Rebirths8(RebirthType8)
   spawn(function ()
       while AutoRebirth8 == true do
           local args = {[1] = tonumber(RebirthType8)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths9(RebirthType9)
   spawn(function ()
       while AutoRebirth9 == true do
           local args = {[1] = tonumber(RebirthType9)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths10(RebirthType10)
   spawn(function ()
       while AutoRebirth10 == true do
           local args = {[1] = tonumber(RebirthType10)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths11(RebirthType11)
   spawn(function ()
       while AutoRebirth11 == true do
           local args = {[1] = tonumber(RebirthType11)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths12(RebirthType12)
   spawn(function ()
       while AutoRebirth12 == true do
           local args = {[1] = tonumber(RebirthType12)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths13(RebirthType13)
   spawn(function ()
       while AutoRebirth13 == true do
           local args = {[1] = tonumber(RebirthType13)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths14(RebirthType14)
   spawn(function ()
       while AutoRebirth14 == true do
           local args = {[1] = tonumber(RebirthType14)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths15(RebirthType15)
   spawn(function ()
       while AutoRebirth100m == true do
           local args = {[1] = tonumber(RebirthType15)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths16(RebirthType16)
   spawn(function ()
       while AutoRebirth500m == true do
           local args = {[1] = tonumber(RebirthType16)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function Rebirths17(RebirthType17)
   spawn(function ()
       while AutoRebirth1B == true do
           local args = {[1] = tonumber(RebirthType17)}
           game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
           wait()
       end
   end)
end

function CraftAllss()
   spawn(function ()
       while CraftAlls == true do
           local args = {[1] = "CraftAll",[2] = {}}
           game:GetService("ReplicatedStorage").Functions.Request:InvokeServer(unpack(args))
           wait()
       end
   end)
end
function UpNGrades(UpgradeType)
spawn(function ()
       while Upgrade == true do
           local args = {[1] = UpgradeType}
           game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer(unpack(args))
           wait(2)
       end
   end)
end

-- Potions
function last()
   spawn(function ()
       while ClickPotion == true do
           local args = {[1] = "x2Clicks"}
           game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
           wait()
       end
   end)
end

function Gems2x()
   spawn(function ()
       while GemsPotion == true do
           local args = {[1] = "x2Gems"}
           game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
           wait()
       end
   end)
end

function ads()
   spawn(function ()
       while LuckPotion == true do
           local args = {[1] = "x2Luck"}
           game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
           wait()
       end
   end)
end

function abs()
spawn(function ()
   while RebirthPotion == true do
       local args = {[1] = "x2Rebirths"}
       game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
       wait()
   end
end)
end


-- Teleports
local plyr = game:GetService("Players").LocalPlayer
function WorldTP(World)
   if workspace.Scripts.TeleportTo:FindFirstChild(World) and plyr.Character and plyr.Character:FindFirstChild("HumanoidRootPart") then
       plyr.Character.HumanoidRootPart.CFrame = workspace.Scripts.TeleportTo[World].CFrame
   end
end

-- Shop
function TeleportTO(placeCFrame)
   local plyr = game.Players.LocalPlayer
   if plyr.Character then
       plyr.Character.HumanoidRootPart.CFrame = placeCFrame
   end
end
-- Upgrades
function TeleportFROM(placeCFrame)
   local plyr = game.Players.LocalPlayer
   if plyr.Character then
       plyr.Character.HumanoidRootPart.CFrame = placeCFrame
   end
end
-- Potion
function TeleportINTO(placeCFrame)
   local plyr = game.Players.LocalPlayer
   if plyr.Character then
       plyr.Character.HumanoidRootPart.CFrame = placeCFrame
   end
end

-- Auto Chests  
-- Note: Must Be in group.
local plyr = game:GetService("Players").LocalPlayer

function Chests(ChestType)
   if workspace.Scripts.Chests:FindFirstChild(ChestType) and plyr.Character and plyr.Character:FindFirstChild("HumanoidRootPart") then
       plyr.Character.HumanoidRootPart.CFrame = workspace.Scripts.Chests[ChestType].Touch.CFrame
   end
end



WorldTP("Spawn")







-- ui
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Auto") -- Creates the window

local r = library:CreateWindow("Teleports")

local b = w:CreateFolder("Clicks")

local c = w:CreateFolder("Rebirths")

local d = w:CreateFolder("Eggs")

local j = w:CreateFolder("Upgrades")

local l = w:CreateFolder("Crafting")

local a = r:CreateFolder("Chests")

local h = r:CreateFolder("World Teleport")

local m = r:CreateFolder("Shops")

local p = w:CreateFolder("Auto Potions")

local k = r:CreateFolder("Destroy")

k:DestroyGui()

b:Toggle("Auto Clicking",function(bool)
   getgenv().AutoClick = bool
   print("Auto Clicks is, ", bool)
   if bool then
       AutoTap()
   end
end)
-- Rebirths
c:Toggle("1 Rebirth Auto",function(bool)
   getgenv().AutoRebirth = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths(1)
   end
end)

c:Toggle("5 Rebirth Auto",function(bool)
   getgenv().AutoRebirth2 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths2(2)
   end
end)

c:Toggle("10 Rebirth Auto",function(bool)
   getgenv().AutoRebirth3 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths3(3)
   end
end)

c:Toggle("25 Rebirth Auto",function(bool)
   getgenv().AutoRebirth4 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths4(4)
   end
end)

c:Toggle("100 Rebirth Auto",function(bool)
   getgenv().AutoRebirth5 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths5(5)
   end
end)

c:Toggle("500 Rebirth Auto",function(bool)
   getgenv().AutoRebirth6 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths6(6)
   end
end)

c:Toggle("2.5k Rebirth Auto",function(bool)
   getgenv().AutoRebirth7 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths7(77)
   end
end)

c:Toggle("5k Rebirth Auto",function(bool)
   getgenv().AutoRebirth8 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths8(8)
   end
end)

c:Toggle("10k Rebirth Auto",function(bool)
   getgenv().AutoRebirth9 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths9(9)
   end
end)

c:Toggle("10k Rebirth Auto",function(bool)
   getgenv().AutoRebirth10 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths10(10)
   end
end)

c:Toggle("50k Rebirth Auto",function(bool)
   getgenv().AutoRebirth11 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths11(11)
   end
end)

c:Toggle("250k Rebirth Auto",function(bool)
   getgenv().AutoRebirth12 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths12(12)
   end
end)

c:Toggle("1M Rebirth Auto",function(bool)
   getgenv().AutoRebirth13 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths13(13)
   end
end)

c:Toggle("25M Rebirth Auto",function(bool)
   getgenv().AutoRebirth14 = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths14(13)
   end
end)

c:Toggle("100M Rebirth Auto",function(bool)
   getgenv().AutoRebirth100m = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths15(14)
   end
end)

c:Toggle("500M Rebirth Auto",function(bool)
   getgenv().AutoRebirth500m = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths16(15)
   end
end)

c:Toggle("1B Rebirth Auto",function(bool)
   getgenv().AutoRebirth1B = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Rebirths17(16)
   end
end)

-- Eggs
local EggsPicks
local EggOpenType
d:Toggle("Auto Eggs",function(bool)
   getgenv().OpenEgg = bool
   print("Auto Open Egg is, ", bool)
   if bool then
       Eggs(EggsPicks, EggOpenType)
   end
end)

d:Dropdown("Egg Type",{"Basic","King","Forest","Beach","Winter","Desert","Volcano","Lava","Mythic","Magma","Atlantis","Water","Moon","Cyber","Magic","Heaven","Nuclear","Void","Spooky"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
   EggsPicks = value
   print(value)
end)

d:Dropdown("Egg Open Type",{"Single", "Triple"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
   EggOpenType = value
   print(value)
end)

-- Upgrades
local UpgradeTypeCUh
j:Toggle("Auto Upgrade",function(bool)
   getgenv().Upgrade = bool
   print("Auto Upgrade is, ", bool)
   if bool then
       UpNGrades(UpgradeTypeCUh)
   end
end)

j:Dropdown("Upgrades",{"GemsMultiplier", "PetStorage", "LuckMultiplier", "PetEquip", "WalkSpeed", "ClickMultiplier", "RebirthButtons"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
   UpgradeTypeCUh = value
   print(value)
end)


-- crafting
l:Toggle("Auto Craft",function(bool)
   getgenv().CraftAlls = bool
   print("Auto Craft is, ", bool)
   if bool then
       CraftAllss()
   end
end)

--Teleporting
-- Chests
local ChestTpPlace
a:Dropdown("Chest",{"Spawn", "Beach", "Winter", "Cyber", "Nuclear"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
   ChestTpPlace = value
   print(value)
end)

a:Button("ChestPick",function()
   if ChestTpPlace then
       Chests(ChestTpPlace)
   end
end)
-- World Teleport
local WorldTeleportation
h:Dropdown("Teleports",{"Spawn","Forest","Desert","Volcano","Moon","Cyber","Magic","Heaven","Nuclear","Void","Atlantis","Spooky","Beach","Winter"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
   WorldTeleportation = value
   print(value)
end)

h:Button("World Teleports",function()
   if WorldTeleportation then
       WorldTP(WorldTeleportation)
   end
end)
-- Shops
m:Button("Shop Teleport",function()
   TeleportTO(game:GetService("Workspace").Scripts.Spawn.Shop.Spin.CFrame)
end)
-- Upgrade TP
m:Button("Upgrade Teleport",function()
   TeleportFROM(game:GetService("Workspace").Scripts.Spawn.Upgrades.Spin.CFrame)
end)
-- Potion TP
m:Button("Upgrade Potion",function()
   TeleportINTO(game:GetService("Workspace").Scripts.Spawn.Potions.Spin.CFrame)
end)

-- Auto potions
p:Toggle("Auto Gem2x",function(bool)
   getgenv().GemsPotion = bool
   print("Auto Gem2x is, ", bool)
   if bool then
       Gems2x()
   end
end)

p:Toggle("Auto Luck2x",function(bool)
   getgenv().LuckPotion = bool
   print("Auto Luck2x is, ", bool)
   if bool then
       ads()
   end
end)

p:Toggle("Rebirth 2x",function(bool)
   getgenv().RebirthPotion = bool
   print("Auto Rebirth is, ", bool)
   if bool then
       abs()
   end
end)

p:Toggle("Clicking 2x",function(bool)
   getgenv().ClickPotion = bool
   print("Click 2x is, ", bool)
   if bool then
       last()
   end
end)

-- b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
--     print(mob)
-- end)

-- b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
--     print("Yes")
-- end)

-- b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
--     print(color)
-- end)

-- b:Box("Box","number",function(value) -- "number" or "string"
--     print(value)
-- end)