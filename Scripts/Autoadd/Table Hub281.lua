-- They can't even make configs auto save on GUI, so you gotta config in text manualy :joy_cat::thumbsdown:
 
_BuyFruitSinper = true -- true / false
_SelectDevil = {"Human-Human: Buddha","Rumble-Rumble","Dragon-Dragon","Soul-Soul","Quake-Quake","String-String","Venom-Venom",'Dark-Dark'}--,"Dragon-Dragon","Soul-Soul","Quake-Quake","String-String","Venom-Venom"
-- _BestSheetUrl= "https://sheet.best/api/sheets/25f4a337-64c0-4c3b-a403-6c47218098db"
_Team = "Pirates"
_FPS_Boost = true
_AutoFarm = true --"Level , Bone"   "Level"  "Bone"
_Fullystats = true
_AutoMeleeWeapon = true
_Make_Melee = {"Superhuman","Electric Claw","Dargon Talon","Sharkman Karate","Death Step"}
_AutoRedeem = true
_RedeemOnLv = 900
_BuyHaki = true
_RandomFruit = true
_StoreFruit = true
_BringFruit = true
_BuyBisento = true
_BuyCommon = true
_Mastery_Farm = true
_Mastery_Mode = "Fruit on 2300"
if game.PlaceId == 2753915549 then -- sea1
   _Farm_Mode = "Level"
   _autoSea2 = true
   _Open_Saber = true
   _Pole_v1 = true
elseif game.PlaceId == 4442272183 then -- sea2
   _AutoMeleeWeapon = true
   _Farm_Mode = "Level"
   _autoSea3 = true
   _Bartilo = true
   _AutoFlower = true
   _AutoDarkbeard = true
   _BuyEctoplasItem = true
   _BuyKabcha = true
   _AutoRaid = true
   _RaidMode = "Awake Skill"-- "Raid Normal" , "Awake Skill"
   _GetFruit_Method = "FruitInventory + BringFruit + Hop"-- "BringFruit" , "BringFruit + Hop" , "FruitInventory" , "FruitInventory + BringFruit" , "FruitInventory + BringFruit + Hop"
elseif game.PlaceId == 7449423635 then -- sea3
   _AutoMeleeWeapon = true
   _Farm_Mode = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 and  "DripMama" or "Level , Bone"
   _BoneTrade = true
   _AutoRaid = true
   _RaidMode = "Awake Skill"-- "Raid Normal" , "Awake Skill"
   _GetFruit_Method = "FruitInventory + BringFruit + Hop"-- "BringFruit" , "BringFruit + Hop" , "FruitInventory" , "FruitInventory + BringFruit" , "FruitInventory + BringFruit + Hop"
   _BuyEctoplasItem = true
   _BuyKabcha = true
   _BuddySword = true
   _AutoScythe = true
   _AutoRipIndra = true
   _Canvander = true
   _AutoCakePrince = true
   _EliteHunt = true
   _Tushita = true
   _Elite_mode = "Yama"
end
_HideUI = true
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/AltsegoD/scripts/egoD/TableHubCracked.lua"))()