local plr = game.Players.LocalPlayer
local pgui = plr.PlayerGui
local interf = pgui.Interface
local bt = interf.Battle
local main = bt.Main
local moves = game.ReplicatedStorage.Moves
local styles = game.ReplicatedStorage.Styles
local plr = game.Players.LocalPlayer
local brawler = styles.Brawler
local rush = styles.Rush
local beast = styles.Beast
local status = plr.Status
local menu = pgui.MenuUI.Menu 
local abil = menu.Abilities.Frame.Frame.Frame
local abilFolder = game.ReplicatedStorage.Abilities.Brawler

brawler.Idle.AnimationId = "rbxassetid://12120045620"

if game.ReplicatedStorage.Styles:FindFirstChild("Brawler") then
v = game.ReplicatedStorage.Styles["Brawler"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Styles)
end                          
v.Name = "Brawler"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_GunStandingShotgun") then
v = game.ReplicatedStorage.Styles.Brawler["H_GunStandingShotgun"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_ShotStopperShotgun'
v.Name = "H_GunStandingShotgun"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Rush1") then
v = game.ReplicatedStorage.Styles.Brawler["Rush1"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'é¾Attack1'
v.Name = "Rush1"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Rush2") then
v = game.ReplicatedStorage.Styles.Brawler["Rush2"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'é¾Attack2'
v.Name = "Rush2"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Speed") then
v = game.ReplicatedStorage.Styles.Brawler["Speed"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 1.5
v.Name = "Speed"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Color") then
v = game.ReplicatedStorage.Styles.Brawler["Color"]
else
v = Instance.new("Color3Value", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = Color3.fromRGB(255,0,0)
v.Name = "Color"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Strike1") then
v = game.ReplicatedStorage.Styles.Brawler["Strike1"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'é¾Strike1'
v.Name = "Strike1"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Rush3") then
v = game.ReplicatedStorage.Styles.Brawler["Rush3"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'é¾Attack3'
v.Name = "Rush3"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_LowHealthFallen") then
v = game.ReplicatedStorage.Styles.Brawler["H_LowHealthFallen"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_FallenFinisher'
v.Name = "H_LowHealthFallen"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("LThrow") then
v = game.ReplicatedStorage.Styles.Brawler["LThrow"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'T_LegToss'
v.Name = "LThrow"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Rush4") then
v = game.ReplicatedStorage.Styles.Brawler["Rush4"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'é¾Attack4'
v.Name = "Rush4"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Strike2") then
v = game.ReplicatedStorage.Styles.Brawler["Strike2"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'BStrike2'
v.Name = "Strike2"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Strike3") then
v = game.ReplicatedStorage.Styles.Brawler["Strike3"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'BStrike3'
v.Name = "Strike3"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Strike4") then
v = game.ReplicatedStorage.Styles.Brawler["Strike4"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'BStrike5'
v.Name = "Strike4"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Strike5") then
v = game.ReplicatedStorage.Styles.Brawler["Strike5"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'é¾Strike5'
v.Name = "Strike5"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Grab") then
v = game.ReplicatedStorage.Styles.Brawler["Grab"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'GGrab'
v.Name = "Grab"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("BlockStrike") then
v = game.ReplicatedStorage.Styles.Brawler["BlockStrike"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'GuruKnockback'
v.Name = "BlockStrike"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_BackWall") then
v = game.ReplicatedStorage.Styles.Brawler["H_BackWall"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_WallSmashing'
v.Name = "H_BackWall"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_CounterSolo") then
v = game.ReplicatedStorage.Styles.Brawler["H_CounterSolo"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_Escape'
v.Name = "H_CounterSolo"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("RedHeat") then
v = game.ReplicatedStorage.Styles.Brawler["RedHeat"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Styles.Brawler)
end
v.Name = "RedHeat"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("GrabStrike") then
v = game.ReplicatedStorage.Styles.Brawler["GrabStrike"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'T_GuruParry'
v.Name = "GrabStrike"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("StanceStrike") then
v = game.ReplicatedStorage.Styles.Brawler["StanceStrike"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'TigerDrop'
v.Name = "StanceStrike"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("StrikeThrow") then
v = game.ReplicatedStorage.Styles.Brawler["StrikeThrow"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'T_FinishingHold'
v.Name = "StrikeThrow"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_StanceFallen") then
v = game.ReplicatedStorage.Styles.Brawler["H_StanceFallen"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_FallenSupine'
v.Name = "H_StanceFallen"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("VisualName") then
v = game.ReplicatedStorage.Styles.Brawler["VisualName"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'Dragon'
v.Name = "VisualName"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Throw") then
v = game.ReplicatedStorage.Styles.Brawler["Throw"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'T_BrawlerToss'
v.Name = "Throw"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("DoubleBlows") then
v = game.ReplicatedStorage.Styles.Brawler["DoubleBlows"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Styles.Brawler)
end
v.Name = "DoubleBlows"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("2Strike4") then
v = game.ReplicatedStorage.Styles.Brawler["2Strike4"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'é¾2Strike3'
v.Name = "2Strike4"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("2Strike2") then
v = game.ReplicatedStorage.Styles.Brawler["2Strike2"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'é¾2Strike1'
v.Name = "2Strike2"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("2Strike3") then
v = game.ReplicatedStorage.Styles.Brawler["2Strike3"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'é¾2Strike2'
v.Name = "2Strike3"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("2Strike5") then
v = game.ReplicatedStorage.Styles.Brawler["2Strike5"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'é¾2Strike4'
v.Name = "2Strike5"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_GrabOnWall") then
v = game.ReplicatedStorage.Styles.Brawler["H_GrabOnWall"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_WallSmack'
v.Name = "H_GrabOnWall"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("GrabCorpses") then
v = game.ReplicatedStorage.Styles.Brawler["GrabCorpses"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Styles.Brawler)
end
v.Name = "GrabCorpses"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("EvadeStrikeB") then
v = game.ReplicatedStorage.Styles.Brawler["EvadeStrikeB"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'BEvadeStrikeBack'
v.Name = "EvadeStrikeB"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("EvadeStrikeF") then
v = game.ReplicatedStorage.Styles.Brawler["EvadeStrikeF"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'BEvadeStrikeForward'
v.Name = "EvadeStrikeF"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("EvadeStrikeL") then
v = game.ReplicatedStorage.Styles.Brawler["EvadeStrikeL"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'BEvadeStrikeLeft'
v.Name = "EvadeStrikeL"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("EvadeStrikeR") then
v = game.ReplicatedStorage.Styles.Brawler["EvadeStrikeR"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'BEvadeStrikeRight'
v.Name = "EvadeStrikeR"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("DashAttack") then
v = game.ReplicatedStorage.Styles.Brawler["DashAttack"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'RDashAttack'
v.Name = "DashAttack"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_Distanced") then
v = game.ReplicatedStorage.Styles.Brawler["H_Distanced"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_FastFootworkBack'
v.Name = "H_Distanced"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_TwoHandeds") then
v = game.ReplicatedStorage.Styles.Brawler["H_TwoHandeds"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_SelfDestruct'
v.Name = "H_TwoHandeds"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_FullHeat") then
v = game.ReplicatedStorage.Styles.Brawler["H_FullHeat"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_GUltimateEssence'
v.Name = "H_FullHeat"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_GrabStanding") then
v = game.ReplicatedStorage.Styles.Brawler["H_GrabStanding"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_Fisticuffs'
v.Name = "H_GrabStanding"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_CounterSoloAllRight") then
v = game.ReplicatedStorage.Styles.Brawler["H_CounterSoloAllRight"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_TSpinCounterRight'
v.Name = "H_CounterSoloAllRight"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_CounterSoloAllLeft") then
v = game.ReplicatedStorage.Styles.Brawler["H_CounterSoloAllLeft"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_TSpinCounterLeft'
v.Name = "H_CounterSoloAllLeft"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_CounterSoloAllFront") then
v = game.ReplicatedStorage.Styles.Brawler["H_CounterSoloAllFront"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_TSpinCounterFront'
v.Name = "H_CounterSoloAllFront"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_CounterSoloAllBack") then
v = game.ReplicatedStorage.Styles.Brawler["H_CounterSoloAllBack"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_TSpinCounterBack'
v.Name = "H_CounterSoloAllBack"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_GrabStanding2") then
v = game.ReplicatedStorage.Styles.Brawler["H_GrabStanding2"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_DoubleHeadCrush'
v.Name = "H_GrabStanding2"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_RunningFallen") then
v = game.ReplicatedStorage.Styles.Brawler["H_RunningFallen"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_FinishingBlow'
v.Name = "H_RunningFallen"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_StandingBehind") then
v = game.ReplicatedStorage.Styles.Brawler["H_StandingBehind"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_Chokehold'
v.Name = "H_StandingBehind"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_SuperEvading") then
v = game.ReplicatedStorage.Styles.Brawler["H_SuperEvading"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_Rolling'
v.Name = "H_SuperEvading"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("Taunt") then
v = game.ReplicatedStorage.Styles.Brawler["Taunt"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'DragonTaunt'
v.Name = "Taunt"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_Running4") then
v = game.ReplicatedStorage.Styles.Brawler["H_Running4"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_Terror'
v.Name = "H_Running4"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("HThrow") then
v = game.ReplicatedStorage.Styles.Brawler["HThrow"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'T_FinishingHold2'
v.Name = "HThrow"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("LHThrow") then
v = game.ReplicatedStorage.Styles.Brawler["LHThrow"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'T_BHeavyToss'
v.Name = "LHThrow"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_FallenDown") then
v = game.ReplicatedStorage.Styles.Brawler["H_FallenDown"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_FallenKick'
v.Name = "H_FallenDown"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_Fallen") then
v = game.ReplicatedStorage.Styles.Brawler["H_Fallen"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_FallenStomp'
v.Name = "H_Fallen"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_GunStandingHandgun") then
v = game.ReplicatedStorage.Styles.Brawler["H_GunStandingHandgun"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_ShotStopperHandgun'
v.Name = "H_GunStandingHandgun"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_GunStanding") then
v = game.ReplicatedStorage.Styles.Brawler["H_GunStanding"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_ShotStopper'
v.Name = "H_GunStanding"
if game.ReplicatedStorage.Moves.H_FastFootworkBack:FindFirstChild("Closest") then
v = game.ReplicatedStorage.Moves.H_FastFootworkBack["Closest"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Moves.H_FastFootworkBack)
end
v.Value = '50'
v.Name = "Closest"
if game.ReplicatedStorage.Moves.H_FastFootworkBack:FindFirstChild("Distance") then
v = game.ReplicatedStorage.Moves.H_FastFootworkBack["Distance"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Moves.H_FastFootworkBack)
end
v.Value = '50'
v.Name = "Distance"
if game.ReplicatedStorage.Moves.H_FastFootworkBack:FindFirstChild("Within") then
v = game.ReplicatedStorage.Moves.H_FastFootworkBack["Within"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Moves.H_FastFootworkBack)
end
v.Value = '15'
v.Name = "Within"
if game.ReplicatedStorage.Moves.H_FastFootworkBack:FindFirstChild("HeatUse") then
v = game.ReplicatedStorage.Moves.H_FastFootworkBack["HeatUse"]
else
v = Instance.new("IntValue", game.ReplicatedStorage.Moves.H_FastFootworkBack)
end
v.Value = 50
v.Name = "HeatUse"
if game.ReplicatedStorage.Moves.H_FastFootworkBack:FindFirstChild("HeatNeeded") then
v = game.ReplicatedStorage.Moves.H_FastFootworkBack["HeatNeeded"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Moves.H_FastFootworkBack)
end
v.Value = 'Normal'
v.Name = "HeatNeeded"
                                                                                                                                                                                                                                                                                                                                                                                                                                                main.Heat.noheattho.Text = "Heat Actions Disabled"
	                                                                                                                                                                                                                                                                                                                                                                                                                                            main.Heat.noheattho.Size = UDim2.new(10, 0, 1, 0)
 
	                                                                                                                                                                                                                                                                                                                                                                                                                                            menu.Bars.Mobile_Title.Text = "Made By Duck_SillyDJ (uwu)"
	                                                                                                                                                                                                                                                                                                                                                                                                                                            menu.Bars.Mobile_Title.Visible = true
--------------------------Taunt-----------------------------------
if game.ReplicatedStorage.Moves:FindFirstChild("DragonTaunt") then
v = game.ReplicatedStorage.Moves["DragonTaunt"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Moves)
end
v.Name = "DragonTaunt"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("Dmg") then
v = game.ReplicatedStorage.Moves.DragonTaunt["Dmg"]
else
v = Instance.new("IntValue", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Value = 0
v.Name = "Dmg"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("HitboxLocations") then
v = game.ReplicatedStorage.Moves.DragonTaunt["HitboxLocations"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Value = '[["RightHand",3,[0,-1,0]],["RightLowerArm",1.5,[0,0,0]],["RightUpperArm",1,[0,0,0]]]'
v.Name = "HitboxLocations"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("AniSpeed") then
v = game.ReplicatedStorage.Moves.DragonTaunt["AniSpeed"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Value = 1.225
v.Name = "AniSpeed"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("Sound") then
v = game.ReplicatedStorage.Moves.DragonTaunt["Sound"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Value = 'FakeLaugh'
v.Name = "Sound"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("NoDmg") then
v = game.ReplicatedStorage.Moves.DragonTaunt["NoDmg"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Name = "NoDmg"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("HeatAt") then
v = game.ReplicatedStorage.Moves.DragonTaunt["HeatAt"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Value = 0.15
v.Name = "HeatAt"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("HeatGain") then
v = game.ReplicatedStorage.Moves.DragonTaunt["HeatGain"]
else
v = Instance.new("IntValue", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Value = 100
v.Name = "HeatGain"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("ForceSound") then
v = game.ReplicatedStorage.Moves.DragonTaunt["ForceSound"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Name = "ForceSound"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("TauntSound") then
v = game.ReplicatedStorage.Moves.DragonTaunt["TauntSound"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Name = "TauntSound"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("EndAt") then
v = game.ReplicatedStorage.Moves.DragonTaunt["EndAt"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Value = 0.8
v.Name = "EndAt"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("Anim") then
v = game.ReplicatedStorage.Moves.DragonTaunt["Anim"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Moves.DragonTaunt)
end

v.AnimationId = "rbxassetid://10928237540"
v.Name = "Anim"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("MoveForward") then
v = game.ReplicatedStorage.Moves.DragonTaunt["MoveForward"]
else
v = Instance.new("IntValue", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Value = 2
v.Name = "MoveForward"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("MoveStart2") then
v = game.ReplicatedStorage.Moves.DragonTaunt["MoveStart2"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Value = 1.8
v.Name = "MoveStart2"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("MoveDuration") then
v = game.ReplicatedStorage.Moves.DragonTaunt["MoveDuration"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Value = 0.4
v.Name = "MoveDuration"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("Dragon") then
v = game.ReplicatedStorage.Moves.DragonTaunt["Dragon"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Name = "Dragon"
if game.ReplicatedStorage.Moves.DragonTaunt:FindFirstChild("Cancelable") then
v = game.ReplicatedStorage.Moves.DragonTaunt["Cancelable"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Moves.DragonTaunt)
end
v.Name = "Cancelable"
if game.ReplicatedStorage.Moves["é¾Attack1"]:FindFirstChild("ComboAt") then
v = game.ReplicatedStorage.Moves["é¾Attack1"]["ComboAt"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves["é¾Attack1"])
end
v.Value = 0.2 
v.Name = "ComboAt"
if game.ReplicatedStorage.Moves["é¾Attack2"]:FindFirstChild("ComboAt") then
v = game.ReplicatedStorage.Moves["é¾Attack2"]["ComboAt"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves["é¾Attack2"])
end
v.Value = 0.2 
v.Name = "ComboAt"
if game.ReplicatedStorage.Moves["é¾Attack3"]:FindFirstChild("ComboAt") then
v = game.ReplicatedStorage.Moves["é¾Attack3"]["ComboAt"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves["é¾Attack3"])
end
v.Value = 0.2 
v.Name = "ComboAt"
if game.ReplicatedStorage.Moves["é¾Attack4"]:FindFirstChild("ComboAt") then
v = game.ReplicatedStorage.Moves["é¾Attack4"]["ComboAt"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves["é¾Attack4"])
end
v.Value = 0.2 
v.Name = "ComboAt"
if game.ReplicatedStorage.Moves["é¾Strike5"]:FindFirstChild("ComboAt") then
v = game.ReplicatedStorage.Moves["é¾Strike5"]["ComboAt"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves["é¾Strike5"])
end
v.Value = 0.5 
v.Name = "ComboAt"
if game.ReplicatedStorage.Moves["BStrike5"]:FindFirstChild("ComboAt") then
v = game.ReplicatedStorage.Moves["BStrike5"]["ComboAt"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves["BStrike5"])
end
v.Value = 0.5 
v.Name = "ComboAt"
if game.ReplicatedStorage.Styles:FindFirstChild("Rush") then
v = game.ReplicatedStorage.Styles["Rush"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Styles)
end
v.Name = "Rush"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_EvadedF") then
v = game.ReplicatedStorage.Styles.Rush["H_EvadedF"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FastFootworkFront'
v.Name = "H_EvadedF"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_Stunning") then
v = game.ReplicatedStorage.Styles.Rush["H_Stunning"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_Reversal'
v.Name = "H_Stunning"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("StartBlock") then
v = game.ReplicatedStorage.Styles.Rush["StartBlock"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://10848090844"
v.Name = "StartBlock"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Taunt") then
v = game.ReplicatedStorage.Styles.Rush["Taunt"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RushTaunt'
v.Name = "Taunt"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeStrikeB") then
v = game.ReplicatedStorage.Styles.Rush["EvadeStrikeB"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RStrike2'
v.Name = "EvadeStrikeB"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Speed") then
v = game.ReplicatedStorage.Styles.Rush["Speed"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 1.2
v.Name = "Speed"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Color") then
v = game.ReplicatedStorage.Styles.Rush["Color"]
else
v = Instance.new("Color3Value", game.ReplicatedStorage.Styles.Rush)
end
v.Value = Color3.fromRGB(255,0,255)
v.Name = "Color"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("VisualName") then
v = game.ReplicatedStorage.Styles.Rush["VisualName"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'Rush'
v.Name = "VisualName"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_LowHealthFallen") then
v = game.ReplicatedStorage.Styles.Rush["H_LowHealthFallen"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FallenFinisher'
v.Name = "H_LowHealthFallen"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_Fallen") then
v = game.ReplicatedStorage.Styles.Rush["H_Fallen"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FallenStomp'
v.Name = "H_Fallen"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_BackWall") then
v = game.ReplicatedStorage.Styles.Rush["H_BackWall"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_CrushingWall'
v.Name = "H_BackWall"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Grab") then
v = game.ReplicatedStorage.Styles.Rush["Grab"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RSweep'
v.Name = "Grab"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_CounterSolo") then
v = game.ReplicatedStorage.Styles.Rush["H_CounterSolo"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FrenzySpinCounter'
v.Name = "H_CounterSolo"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeStrikeR") then
v = game.ReplicatedStorage.Styles.Rush["EvadeStrikeR"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RStrike2'
v.Name = "EvadeStrikeR"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeStrikeL") then
v = game.ReplicatedStorage.Styles.Rush["EvadeStrikeL"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RStrike2'
v.Name = "EvadeStrikeL"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeStrikeF") then
v = game.ReplicatedStorage.Styles.Rush["EvadeStrikeF"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RStrike2'
v.Name = "EvadeStrikeF"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_Stunned") then
v = game.ReplicatedStorage.Styles.Rush["H_Stunned"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FlyingKick'
v.Name = "H_Stunned"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush2") then
v = game.ReplicatedStorage.Styles.Rush["Rush2"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾Attack2'
v.Name = "Rush2"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush3") then
v = game.ReplicatedStorage.Styles.Rush["Rush3"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾Attack3'
v.Name = "Rush3"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush4") then
v = game.ReplicatedStorage.Styles.Rush["Rush4"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾Attack1'
v.Name = "Rush4"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush5") then
v = game.ReplicatedStorage.Styles.Rush["Rush5"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾Attack2'
v.Name = "Rush5"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush6") then
v = game.ReplicatedStorage.Styles.Rush["Rush6"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾Attack3'
v.Name = "Rush6"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush7") then
v = game.ReplicatedStorage.Styles.Rush["Rush7"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾Attack1'
v.Name = "Rush7"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush8") then
v = game.ReplicatedStorage.Styles.Rush["Rush8"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾Attack4'
v.Name = "Rush8"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike2") then
v = game.ReplicatedStorage.Styles.Rush["Strike2"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RStrike2'
v.Name = "Strike2"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike3") then
v = game.ReplicatedStorage.Styles.Rush["Strike3"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾2Strike1'
v.Name = "Strike3"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike4") then
v = game.ReplicatedStorage.Styles.Rush["Strike4"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾Strike5'
v.Name = "Strike4"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike5") then
v = game.ReplicatedStorage.Styles.Rush["Strike5"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike5'
v.Name = "Strike5"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike6") then
v = game.ReplicatedStorage.Styles.Rush["Strike6"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike4'
v.Name = "Strike6"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike7") then
v = game.ReplicatedStorage.Styles.Rush["Strike7"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'B2Strike4'
v.Name = "Strike7"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike8") then
v = game.ReplicatedStorage.Styles.Rush["Strike8"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'B2Strike3'
v.Name = "Strike8"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike9") then
v = game.ReplicatedStorage.Styles.Rush["Strike9"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾2Strike4'
v.Name = "Strike9"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush1") then
v = game.ReplicatedStorage.Styles.Rush["Rush1"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'é¾Attack1'
v.Name = "Rush1"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike1") then
v = game.ReplicatedStorage.Styles.Rush["Strike1"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'B2Strike1'
v.Name = "Strike1"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_Running4") then
v = game.ReplicatedStorage.Styles.Rush["H_Running4"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_Terror'
v.Name = "H_Running4"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_AirFallen") then
v = game.ReplicatedStorage.Styles.Rush["H_AirFallen"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_Whirl'
v.Name = "H_AirFallen"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("GrabStrike") then
v = game.ReplicatedStorage.Styles.Rush["GrabStrike"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'T_CounterQuickstep'
v.Name = "GrabStrike"
if game.ReplicatedStorage.Styles.Rush.GrabStrike:FindFirstChild("Ability") then
v = game.ReplicatedStorage.Styles.Rush.GrabStrike["Ability"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush.GrabStrike)
end
v.Value = 'Counter Quickstep'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_FallenDown") then
v = game.ReplicatedStorage.Styles.Rush["H_FallenDown"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FallenKick'
v.Name = "H_FallenDown"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_EvadedF") then
v = game.ReplicatedStorage.Styles.Rush["H_EvadedF"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FastFootworkFront'
v.Name = "H_EvadedF"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeF") then
v = game.ReplicatedStorage.Styles.Rush["EvadeF"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710466763"
v.Name = "EvadeF"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeL") then
v = game.ReplicatedStorage.Styles.Rush["EvadeL"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710468004"
v.Name = "EvadeL"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeR") then
v = game.ReplicatedStorage.Styles.Rush["EvadeR"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710467557"
v.Name = "EvadeR"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeB") then
v = game.ReplicatedStorage.Styles.Rush["EvadeB"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710468479"
v.Name = "EvadeB"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeCR") then
v = game.ReplicatedStorage.Styles.Rush["EvadeCR"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710568545"
v.Name = "EvadeCR"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeCL") then
v = game.ReplicatedStorage.Styles.Rush["EvadeCL"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710568875"
v.Name = "EvadeCL"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeQCB") then
v = game.ReplicatedStorage.Styles.Rush["EvadeQCB"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11632563534"
v.Name = "EvadeQCB"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeQCF") then
v = game.ReplicatedStorage.Styles.Rush["EvadeQCF"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11632565056"
v.Name = "EvadeQCF"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeQCL") then
v = game.ReplicatedStorage.Styles.Rush["EvadeQCL"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11632564616"
v.Name = "EvadeQCL"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeQCR") then
v = game.ReplicatedStorage.Styles.Rush["EvadeQCR"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11632564233"
v.Name = "EvadeQCR"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeCF") then
v = game.ReplicatedStorage.Styles.Rush["EvadeCF"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11716395378"
v.Name = "EvadeCF"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeCB") then
v = game.ReplicatedStorage.Styles.Rush["EvadeCB"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11716396028"
v.Name = "EvadeCB"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Block") then
v = game.ReplicatedStorage.Styles.Rush["Block"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11776345813"
v.Name = "Block"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_EvadedR") then
v = game.ReplicatedStorage.Styles.Rush["H_EvadedR"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FastFootworkRight'
v.Name = "H_EvadedR"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_EvadedL") then
v = game.ReplicatedStorage.Styles.Rush["H_EvadedL"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FastFootworkLeft'
v.Name = "H_EvadedL"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Idle") then
v = game.ReplicatedStorage.Styles.Rush["Idle"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://8493751059"
v.Name = "Idle"
if game.ReplicatedStorage.Styles.Rush.Idle:FindFirstChild("Core") then
v = game.ReplicatedStorage.Styles.Rush.Idle["Core"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Styles.Rush.Idle)
end
v.Name = "Core"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Hit1Block") then
v = game.ReplicatedStorage.Styles.Rush["Hit1Block"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11959653217"
v.Name = "Hit1Block"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Hit2Block") then
v = game.ReplicatedStorage.Styles.Rush["Hit2Block"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11959653217"
v.Name = "Hit2Block"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Run") then
v = game.ReplicatedStorage.Styles.Rush["Run"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://13731641248"
v.Name = "Run"
-------------------------------Beast--------------------------------------
if game.ReplicatedStorage.Styles:FindFirstChild("Beast") then
v = game.ReplicatedStorage.Styles["Beast"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Styles)
end
v.Name = "Beast"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Rush1") then
v = game.ReplicatedStorage.Styles.Beast["Rush1"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'BTPunch1'
v.Name = "Rush1"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Speed") then
v = game.ReplicatedStorage.Styles.Beast["Speed"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 0.75
v.Name = "Speed"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("StartBlock") then
v = game.ReplicatedStorage.Styles.Beast["StartBlock"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://10920901524"
v.Name = "StartBlock"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("GuardGrabHit") then
v = game.ReplicatedStorage.Styles.Beast["GuardGrabHit"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'T_BearHug'
v.Name = "GuardGrabHit"
if game.ReplicatedStorage.Styles.Beast.GuardGrabHit:FindFirstChild("Ability") then
v = game.ReplicatedStorage.Styles.Beast.GuardGrabHit["Ability"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast.GuardGrabHit)
end
v.Value = 'Bear Hug'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Rush2") then
v = game.ReplicatedStorage.Styles.Beast["Rush2"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'BTPunch2'
v.Name = "Rush2"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Rush3") then
v = game.ReplicatedStorage.Styles.Beast["Rush3"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'BTPunch3'
v.Name = "Rush3"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Color") then
v = game.ReplicatedStorage.Styles.Beast["Color"]
else
v = Instance.new("Color3Value", game.ReplicatedStorage.Styles.Beast)
end
v.Value = Color3.fromRGB(255,211.00000262260437,50.000000819563866)
v.Name = "Color"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_LowHealthFallen") then
v = game.ReplicatedStorage.Styles.Beast["H_LowHealthFallen"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_FallenFinisher'
v.Name = "H_LowHealthFallen"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("LThrow") then
v = game.ReplicatedStorage.Styles.Beast["LThrow"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'T_LegToss'
v.Name = "LThrow"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Strike1") then
v = game.ReplicatedStorage.Styles.Beast["Strike1"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'BTStrike1'
v.Name = "Strike1"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Strike2") then
v = game.ReplicatedStorage.Styles.Beast["Strike2"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'BTStrike2'
v.Name = "Strike2"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Strike3") then
v = game.ReplicatedStorage.Styles.Beast["Strike3"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'BTStrike3'
v.Name = "Strike3"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Strike4") then
v = game.ReplicatedStorage.Styles.Beast["Strike4"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'BTStrike4'
v.Name = "Strike4"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Grab") then
v = game.ReplicatedStorage.Styles.Beast["Grab"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'BGrab'
v.Name = "Grab"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("EvadeB") then
v = game.ReplicatedStorage.Styles.Beast["EvadeB"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://11614916809"
v.Name = "EvadeB"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("VisualName") then
v = game.ReplicatedStorage.Styles.Beast["VisualName"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'Beast'
v.Name = "VisualName"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Throw") then
v = game.ReplicatedStorage.Styles.Beast["Throw"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'T_BeastToss'
v.Name = "Throw"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("EvadeR") then
v = game.ReplicatedStorage.Styles.Beast["EvadeR"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://8223592585"
v.Name = "EvadeR"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_GrabOnWall") then
v = game.ReplicatedStorage.Styles.Beast["H_GrabOnWall"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_WallSmack'
v.Name = "H_GrabOnWall"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("GrabCorpses") then
v = game.ReplicatedStorage.Styles.Beast["GrabCorpses"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Styles.Beast)
end
v.Name = "GrabCorpses"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_GrabStanding") then
v = game.ReplicatedStorage.Styles.Beast["H_GrabStanding"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_Piledriver'
v.Name = "H_GrabStanding"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_AbsorbBlock") then
v = game.ReplicatedStorage.Styles.Beast["H_AbsorbBlock"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_Torment'
v.Name = "H_AbsorbBlock"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_TwoHandeds") then
v = game.ReplicatedStorage.Styles.Beast["H_TwoHandeds"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_SelfDestruct'
v.Name = "H_TwoHandeds"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_GrabLeg") then
v = game.ReplicatedStorage.Styles.Beast["H_GrabLeg"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_Swing'
v.Name = "H_GrabLeg"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Taunt") then
v = game.ReplicatedStorage.Styles.Beast["Taunt"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'BeastTaunt'
v.Name = "Taunt"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Hit2Block") then
v = game.ReplicatedStorage.Styles.Beast["Hit2Block"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://10920909417"
v.Name = "Hit2Block"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("EndBlock") then
v = game.ReplicatedStorage.Styles.Beast["EndBlock"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://10920912941"
v.Name = "EndBlock"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Hit1Block") then
v = game.ReplicatedStorage.Styles.Beast["Hit1Block"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://10920902836"
v.Name = "Hit1Block"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Block") then
v = game.ReplicatedStorage.Styles.Beast["Block"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://10920916315"
v.Name = "Block"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_GrabOnFallen") then
v = game.ReplicatedStorage.Styles.Beast["H_GrabOnFallen"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_LobCrush'
v.Name = "H_GrabOnFallen"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_Stunned") then
v = game.ReplicatedStorage.Styles.Beast["H_Stunned"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_Knockout'
v.Name = "H_Stunned"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("HThrow") then
v = game.ReplicatedStorage.Styles.Beast["HThrow"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'T_HeavyToss'
v.Name = "HThrow"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("LHThrow") then
v = game.ReplicatedStorage.Styles.Beast["LHThrow"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'T_BHeavyToss'
v.Name = "LHThrow"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_FallenDown") then
v = game.ReplicatedStorage.Styles.Beast["H_FallenDown"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_FallenGrate'
v.Name = "H_FallenDown"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_Fallen") then
v = game.ReplicatedStorage.Styles.Beast["H_Fallen"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_FallenFinisher'
v.Name = "H_Fallen"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("EvadeF") then
v = game.ReplicatedStorage.Styles.Beast["EvadeF"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://11614916023"
v.Name = "EvadeF"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("EvadeL") then
v = game.ReplicatedStorage.Styles.Beast["EvadeL"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://8223592585"
v.Name = "EvadeL"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Idle") then
v = game.ReplicatedStorage.Styles.Beast["Idle"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://8485681263"
v.Name = "Idle"
if game.ReplicatedStorage.Styles.Beast.Idle:FindFirstChild("Core") then
v = game.ReplicatedStorage.Styles.Beast.Idle["Core"]
else
v = Instance.new("Folder", game.ReplicatedStorage.Styles.Beast.Idle)
end
v.Name = "Core"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_GrabStanding3") then
v = game.ReplicatedStorage.Styles.Beast["H_GrabStanding3"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_Entangle'
v.Name = "H_GrabStanding3"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_StunnedFront") then
v = game.ReplicatedStorage.Styles.Beast["H_StunnedFront"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 'H_KnockoutFront'
v.Name = "H_StunnedFront"
if game.ReplicatedStorage.Moves["é¾TigerDrop"]:FindFirstChild("Anim") then
v = game.ReplicatedStorage.Moves["é¾TigerDrop"]["Anim"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Moves["é¾TigerDrop"])
end
v.AnimationId = "rbxassetid://12338275115" 
v.Name = "Anim"
if game.ReplicatedStorage.Moves["é¾TigerDrop"]:FindFirstChild("ForceSF") then
v = game.ReplicatedStorage.Moves["é¾TigerDrop"]["ForceSF"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Moves["é¾TigerDrop"])
end
v.Value = '0.1' 
v.Name = "ForceSF"
if game.ReplicatedStorage.Moves["TigerDrop"]:FindFirstChild("Anim") then
v = game.ReplicatedStorage.Moves["TigerDrop"]["Anim"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Moves["TigerDrop"])
end
v.AnimationId = "rbxassetid://12338275115" 
v.Name = "Anim"
if game.ReplicatedStorage.Moves["TigerDrop"]:FindFirstChild("HitDur") then
v = game.ReplicatedStorage.Moves["TigerDrop"]["HitDur"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves["TigerDrop"])
end
v.Value = 0.3 
v.Name = "HitDur"
if game.ReplicatedStorage.Moves["TigerDrop"]:FindFirstChild("AniSpeed") then
v = game.ReplicatedStorage.Moves["TigerDrop"]["AniSpeed"]
else
v = Instance.new("NumberValue", game.ReplicatedStorage.Moves["TigerDrop"])
end
v.Value = 1 
v.Name = "AniSpeed"
if game.ReplicatedStorage.Moves.H_UltimateEssence:FindFirstChild("MoveName") then
v = game.ReplicatedStorage.Moves.H_UltimateEssence["MoveName"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Moves.H_UltimateEssence)
end
v.Value = 'Ultimate Essence '
v.Name = "MoveName"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("EvadeF") then
v = game.ReplicatedStorage.Styles.Brawler["EvadeF"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Brawler)
end

v.AnimationId = "rbxassetid://11710466763"
v.Name = "EvadeF"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("EvadeL") then
v = game.ReplicatedStorage.Styles.Brawler["EvadeL"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Brawler)
end

v.AnimationId = "rbxassetid://11710468004"
v.Name = "EvadeL"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("EvadeR") then
v = game.ReplicatedStorage.Styles.Brawler["EvadeR"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Brawler)
end

v.AnimationId = "rbxassetid://11710467557"
v.Name = "EvadeR"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("EvadeB") then
v = game.ReplicatedStorage.Styles.Brawler["EvadeB"]
else
v = Instance.new("Animation", game.ReplicatedStorage.Styles.Brawler)
end

v.AnimationId = "rbxassetid://11710468479"
v.Name = "EvadeB"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_EvadedF") then
v = game.ReplicatedStorage.Styles.Brawler["H_EvadedF"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_FastFootworkFront'
v.Name = "H_EvadedF"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_EvadedR") then
v = game.ReplicatedStorage.Styles.Brawler["H_EvadedR"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_FastFootworkRight'
v.Name = "H_EvadedR"
if game.ReplicatedStorage.Styles.Brawler:FindFirstChild("H_EvadedL") then
v = game.ReplicatedStorage.Styles.Brawler["H_EvadedL"]
else
v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Brawler)
end
v.Value = 'H_FastFootworkLeft'
v.Name = "H_EvadedL"
game.ReplicatedStorage.Sounds.Yell.Value = "rbxassetid://7959271972"

local function playsound(id)
	local sfx = Instance.new("Sound", workspace)
	sfx.SoundId = "rbxassetid://"..tostring(id)

	game:GetService("SoundService"):PlayLocalSound(sfx)

	spawn(function()
		task.wait(sfx.TimeLength)
		sfx:Destroy()
	end)
end

function playticksound()
	local sfx = Instance.new("Sound", workspace)
	sfx.SoundId = "rbxassetid://4843088994"

	game:GetService("SoundService"):PlayLocalSound(sfx)

	spawn(function()
		task.wait(2)
		sfx:Destroy()
	end)
end

local function play_ingamesound(sfxname)
	local v = game.ReplicatedStorage.Sounds:FindFirstChild(sfxname)
	local sfx = Instance.new("Sound", nil)
	local id = v.Value

	sfx.SoundId = id

	for i,v in v:GetChildren() do
		sfx[v.Name] = v.Value
	end

	game.SoundService:PlayLocalSound(sfx)
	task.delay(15, function()
		sfx:Destroy()
	end)
end

local Player = game.Players.LocalPlayer
local Rep = game.ReplicatedStorage
local Char = Player.Character
local Main = Player.PlayerGui.Interface.Battle.Main

Main.HeatMove.TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
    if Main.HeatMove.TextLabel.Text == "Ultimate Essence" then
        Main.HeatMove.TextLabel.Text = Rep.Moves.H_UltimateEssence.MoveName.Value
        local Anim = Char.Humanoid:LoadAnimation(Rep.Moves.H_UltimateEssence.Anim)
        Anim.Priority = Enum.AnimationPriority.Action4
        Anim:AdjustSpeed(0.9)
        Anim:Play()
        play_ingamesound("Ignite")
        task.wait(0.4)
        play_ingamesound("TigerSwing")
        task.wait(0.6)
        play_ingamesound("MassiveSlap")
        task.wait(0.3)
        Anim:Destroy()
    end
end)

local Player = game.Players.LocalPlayer
local Rep = game.ReplicatedStorage
local Char = Player.Character
local Main = Player.PlayerGui.Interface.Battle.Main

Main.HeatMove.TextLabel:GetPropertyChangedSignal("Text"):Connect(function()
    if Main.HeatMove.TextLabel.Text == "Essence of Fast Footwork [Back]" then
        Main.HeatMove.TextLabel.Text = Rep.Moves.H_SumoSlap.MoveName.Value
        local Anim = Char.Humanoid:LoadAnimation(Rep.Moves.H_SumoSlap.Anim)
        Anim.Priority = Enum.AnimationPriority.Action4
        Anim:AdjustSpeed(0.9)
        Anim:Play()
        play_ingamesound("Teleport")
        play_ingamesound("Slap")
        task.wait(0.55)
        play_ingamesound("Slap")
        task.wait(0.45)
        play_ingamesound("Slap")
        task.wait(0.9)
        play_ingamesound("MassiveSlap")
        Anim:Destroy()
    end
end)

local DragonText = "Dragon"
local DragonColor = Color3.new(0.95, 0.05, 0.1)
local DragonSequence = ColorSequence.new({ColorSequenceKeypoint.new(0, DragonColor), ColorSequenceKeypoint.new(1, DragonColor)})

function isInBattle()
	return (plr:FindFirstChild("InBattle") and true or false)
end

function isDungeon()
	return game.ReplicatedStorage.Dungeon.Value
end

function doingHact()
	return (plr.Character:FindFirstChild("Heated") and true or false)
end

function showMaxHeatEffect()
	return (isInBattle() and not doingHact() and plr.Status.Heat.Value >= 100) and true or false
end

function hasWeaponInHand()
	return (plr.Character:FindFirstChild("Holding") and true or false)
end

local function change_color()
	if status.Style.Value == "Brawler" then
		local DragonSequence = ColorSequence.new{ColorSequenceKeypoint.new(0, styles.Brawler.Color.Value), ColorSequenceKeypoint.new(1, styles.Brawler.Color.Value)}
		local char = plr.Character
		char.HumanoidRootPart.Fire_Main.Color = DragonSequence
		char.HumanoidRootPart.Fire_Secondary.Color = DragonSequence
		char.HumanoidRootPart.Fire_Main.Rate = status.Heat.Value >= 100 and 115 or status.Heat.Value >= 75 and 85 or 80
		char.HumanoidRootPart.Fire_Secondary.Rate = status.Heat.Value >= 100 and 90 or status.Heat.Value >= 75 and 80 or 70
		char.HumanoidRootPart.Lines1.Color = DragonSequence
		char.HumanoidRootPart.Lines1.Rate = status.Heat.Value >= 100 and 60 or status.Heat.Value >= 75 and 40 or 20
		char.HumanoidRootPart.Lines2.Color = DragonSequence
		char.HumanoidRootPart.Lines2.Rate = status.Heat.Value >= 100 and 60 or status.Heat.Value >= 75 and 40 or 20
		char.HumanoidRootPart.Sparks.Color = DragonSequence
		if not char.HumanoidRootPart.TimeFor.Enabled then
			char.HumanoidRootPart.TimeFor.Color = DragonSequence
		end

		char.UpperTorso["r2f_aura_burst"].Lines1.Color = DragonSequence
		char.UpperTorso["r2f_aura_burst"].Lines2.Color = DragonSequence
		char.UpperTorso["r2f_aura_burst"].Flare.Color = DragonSequence
		char.UpperTorso["r2f_aura_burst"].Lines1.Enabled = showMaxHeatEffect()
		char.UpperTorso["r2f_aura_burst"].Flare.Enabled = showMaxHeatEffect()
		char.UpperTorso["r2f_aura_burst"].Smoke.Color = DragonSequence
		char.UpperTorso.Evading.Color = DragonSequence
	end
end

local function FillHeat()
	local Event = game:GetService("ReplicatedStorage").Events.ME

	for i=1,6 do
		local A_1 =  {
			[1] = "heat", 
			[2] = game:GetService("ReplicatedStorage").Moves.Taunt
		}
		Event:FireServer(A_1)
	end
end
game:GetService("RunService").RenderStepped:Connect(change_color)

if moves:FindFirstChild("é¾TigerDrop") then
        moves:FindFirstChild("BRCounter2").Name = "FakeCounter2"
        moves:FindFirstChild("é¾TigerDrop").Name = "BRCounter2"
        moves:FindFirstChild("BRCounter1").Name = "FakeCounter1"
        moves:FindFirstChild("BRGrab").Name = "FakeGrab"

        local ignore = Instance.new("Folder")
        ignore.Name = "IgnoreDmg"
        ignore.Parent = moves:FindFirstChild("BRCounter2")

        if not moves:FindFirstChild("BRCounter2"):FindFirstChild("HSize") then
            local n = Instance.new("NumberValue")
            n.Name = "HSize"
            n.Value = 2
            n.Parent = moves:FindFirstChild("BRCounter2")
        end
    end

function playticksound()
	local sfx = Instance.new("Sound", workspace)
	sfx.SoundId = "rbxassetid://4843088994"

	game:GetService("SoundService"):PlayLocalSound(sfx)

	spawn(function()
		task.wait(2)
		sfx:Destroy()
	end)
end

local notifyevent 
for i,v in pairs (pgui:GetChildren()) do
    if v:IsA("BindableEvent") then
        notifyevent = v
    end
end

local function sendNotification(text, color, sound)
    if not color then color = Color3.new(1, 1, 1) end
    pgui.NotifyUI.Awards.ChildAdded:Once(function(c)
        if c.Text == text then
            c.TextColor3 = color
            coroutine.wrap(function()
                local con;
                con = game:GetService("RunService").RenderStepped:Connect(function()
                    if not c then
                        con:Disconnect()
                        return
                    end
                    c.TextColor3 = color
                end)()
            end)()
        end
    end)
    notifyevent:Fire(text, sound or nil)
end

local uis = game:GetService("UserInputService")
local rushstyle = game.ReplicatedStorage.Styles.Rush
local brawlerstyle = game.ReplicatedStorage.Styles.Brawler
local beaststyle = game.ReplicatedStorage.Styles.Beast

local grabstrike = rushstyle:WaitForChild("GrabStrike"):Clone()
local guruparry = brawlerstyle:WaitForChild("GrabStrike")

sendNotification("Press X to swap counter step and parry on Dragon", color)

uis.InputBegan:Connect(function(key)
	if game.UserInputService:GetFocusedTextBox() == nil then
		if key.KeyCode == Enum.KeyCode.X then
			playticksound()
			if guruparry.Parent ~= nil then
				guruparry.Parent = nil
				grabstrike.Parent = brawlerstyle
				sendNotification("Counter Quickstep Enabled", color)
			else
			guruparry.Parent = brawlerstyle
				grabstrike.Parent = nil
				sendNotification("Parry Enabled", color)
			end
		end
	end
end)

task.wait(1)
sendNotification("Press [F] to instantly fill heat.")

game.UserInputService.InputBegan:Connect(function(key)
	if game.UserInputService:GetFocusedTextBox() == nil then
		if key.KeyCode == Enum.KeyCode.F then
            FillHeat() 
        end
    end
end)

local function add_forcefield(duration)
	local p = game.Players.LocalPlayer
	local Status = p.Status

	local invun = game.ReplicatedStorage.Invulnerable:Clone()
	invun.Parent = Status

	if duration then
		spawn(function()
			task.wait(duration)
			invun:Destroy()
		end)
	end

	return invun
end

-- Please use this script in a seperate tab so the idle animation works

local plr = game:GetService("Players").LocalPlayer
local pgui = plr.PlayerGui
local interf = pgui.Interface

local cframe = plr.Character.LowerTorso.CFrame

interf.Client.Disabled = true
task.wait()
interf.Client.Disabled = false
task.wait(0.1)
plr.Character.LowerTorso.CFrame = cframe

-- Uncomment this script for it to work. 

sendNotification("Style Loaded")
task.wait(1)

---Badge 
pgui.Interface.Battle.Main.GUY.GUY.Image = "rbxassetid://13919012508"
----------------Tab names
menu.Abilities.Frame.Frame.Frame.Tabs.Tabs.Brawler.Filled.Title.Text = "Dragon"
menu.Abilities.Frame.Frame.Frame.Tabs.Tabs.Rush.Filled.Title.Text = "Rush"
menu.Abilities.Frame.Frame.Frame.Tabs.Tabs.Beast.Filled.Title.Text = "Beast"
-----------------Ability Names
menu.Abilities.Frame.Frame.Frame.List.ListFrame["Counter Hook"].Generic.Label.Text = "Komaki Tiger Drop"
menu.Abilities.Frame.Frame.Frame.List.ListFrame["Guru Parry"].Generic.Label.Text = "Komaki Parry"
menu.Abilities.Frame.Frame.Frame.List.ListFrame["Time for Resolve"].Generic.Label.Text = "Red Dragon Spirit"
menu.Abilities.Frame.Frame.Frame.List.ListFrame["Finishing Hold"].Generic.Label.Text = "Essence of Sumo Slapping"
menu.Abilities.Frame.Frame.Frame.List.ListFrame["Ultimate Essence"].Generic.Label.Text = "Ultimate Essence"
menu.Abilities.Frame.Frame.Frame.List.ListFrame["Guru Dodge Shot"].Generic.Label.Text = "Komaki Dodge Shot"
menu.Abilities.Frame.Frame.Frame.List.ListFrame["Guru Spin Counter"].Generic.Label.Text = "Komaki Fist Reversal"
menu.Abilities.Frame.Frame.Frame.List.ListFrame["Guru Firearm Flip"].Generic.Label.Text = "Komaki Shot Stopper"
menu.Abilities.Frame.Frame.Frame.List.ListFrame["Guru Knockback"].Generic.Label.Text = "Komaki Knockback"
menu.Abilities.Frame.Frame.Frame.List.ListFrame["Guru Safety Roll"].Generic.Label.Text = "Komaki Safety Roll"
--------------------------Ability descriptions and prompts
abilFolder["Time for Resolve"].Description.Value = "Unleash the willpower of the Legendary Red Dragon to fly above the rest and withstand any attacks that would stagger or knock you down."
abilFolder["Guru Parry"].Description.Value = "One of the Three Ultimate Komaki style moves. Stuns the enemy."
abilFolder["Counter Hook"].Description.Value = "One of the Three Ultimate Komaki style moves. The style's strongest counter-attack."
abilFolder["Counter Hook"].Prompt.Value = "Get in Stance with LOCK ON, then HEAVY ATTACK when the enemy attacks."
abilFolder["Finishing Hold"].Description.Value = "One of the Best Komaki moves. Slap an enemy repeatedly till they fall."
abilFolder["Finishing Hold"].Prompt.Value = "Get in Stance with LOCK ON and whilst distanced, HEAVY ATTACK."
abilFolder["Ultimate Essence"].Prompt.Value = "Get in Stance with LOCK ON and with Full Heat, HEAVY ATTACK"
abilFolder["Ultimate Essence"].Description.Value = "The Ultimate Komaki Ability. Gain the Power to destroy every type of enemy."
sendNotification("Badge and ability names loaded")
task.wait(0.5)
sendNotification("Mod Loaded")