-- CONFIG
SelectWeapon = "" -- "Melee","Devil Fruit","Sword","Gun"
AutoFarmType = "" -- "Above","Bellow","Behind"
BypassTP = false -- true,false
BringMobs = true
AutoSetSpawn = true
BusoHaki = true
DisFarm = 10 -- Recomended Between 7-15

-- AUTO FARM
AutoFarmQuest = false -- true,false
AutoFarmNoQuest = false
AutoFarmNearestMob = false

-- AUTO WORLD
AutoSecondSea = false -- true,false
AutoThirdSea = false

-- Auto Materials
AutoEcto = false -- true,false
AutoFarmBone = false
SelectMaterial = ""
-- World 1: "Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail" 
-- World 2: "Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang" 
-- World 3: "Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"
AutoFarmMaterial = false

-- Tryluck & Pray
TryLuck = false -- true,false
Pray = false

-- STATS
_G.Auto_Stats_Kaitun = false -- true,false
_G.Auto_Stats_Melee = false
_G.Auto_Stats_Defense = false
_G.Auto_Stats_Sword = false
_G.Auto_Stats_Gun = false
_G.Auto_Stats_Devil_Fruit = false

-- BOOST PERFORMANCE
RemoveFog = false -- true,false
FpsBoost = false


-- Loader
version = "V1" -- V1,betav2
loadstring(Game:HttpGet"https://raw.githubusercontent.com/buffalohub/HUBS/main/" .. version .. ".lua")()