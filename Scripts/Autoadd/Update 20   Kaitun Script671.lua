--true/false--
--Webhook
WebhookUrl = "Your Webhook Url"
DelayTime = 120 --second
_G.Settings = {
--Farm
AutoStats = false;
SelectStats = "Melee"; --[ Max Stats, Melee, Defense, Sword, Devil Fruit, Gun ]--
Points = 3;
Weapon = "Melee"; --Melee/Sword
AutoFarm = false;
--Item
Auto_Farm_Ectoplasm = false;
AutoRengoku = false;
AutoFactory = false;
AutoDarkDanger = false;
AutoBuyEnchancementColour = false;
AutoEvoRace = false;
Auto_Swan_Glasses = false;
Katakuri = false;
AutoFarmBone = false;
Elite = false;
AutoFarmBoss = false;
AutoSoulReaper = false;
MagmaOreS1 = false;
AngelWings = false;
MagmaOreS2 = false;
MysticDroplet = false;
Fishtail = false;
CoCa = false;
DragonScale = false;
--Race V4
TPMystic = false;
AutoPole = false;
TrialHuman = false;
TrialGhoul = false;
AutoTrialRaceMink = false;
AutoTrialRaceSky = false;
--Misc
RandomFruit = false;
AutoStoreFruit = false;
WalkWater = false;
InfSoru = false;
InfGeppo = false;
InfAbility = false;
--Settings
Clickattack = false; --fast attack
AutoSpawnKatakuri = false;
AutoAwakeningRace = false;
SuperFastattack = false;
FastAttackDelay = "Normal"; --Normal/Fast
WhiteScreen = false;
}
loadstring(game:HttpGet(("https://raw.githubusercontent.com/AnSitDz/AnSitHub/main/BloxFruits"),true))()