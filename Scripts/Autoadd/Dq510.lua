Duration = 5;
    })
local Main = Instance.new("ScreenGui")
local ErrorFrame = Instance.new("ImageLabel")
local AuthenLabelNoti = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local AuthenticationFrame = Instance.new("ImageLabel")
local Welcome = Instance.new("TextLabel")
local AuthenLabel = Instance.new("TextLabel")
local CheckKey = Instance.new("TextButton")
local KeyBox = Instance.new("TextBox")
local MainFrame = Instance.new("Frame")
local NameGUI = Instance.new("TextLabel")
local Ver = Instance.new("TextLabel")
local FuncFrame = Instance.new("Frame")
local InstantKill60 = Instance.new("TextButton")
local AutoSkill = Instance.new("TextButton")
local StealSkill = Instance.new("TextButton")
local TpNpc60 = Instance.new("TextButton")
local TpNpc75Old = Instance.new("TextButton")
local InstantKill70 = Instance.new("TextButton")
local TpNpc75New = Instance.new("TextButton")
local AutoFarm59 = Instance.new("TextButton")
local InstantKill60ON = Instance.new("TextButton")
local AutoSkillON = Instance.new("TextButton")
local StealSkillON = Instance.new("TextButton")
local TpNpc60ON = Instance.new("TextButton")
local TpNpc75OldON = Instance.new("TextButton")
local InstantKill70ON = Instance.new("TextButton")
local TpNpc75NewON = Instance.new("TextButton")
local AutoFarm59ON = Instance.new("TextButton")
local FuncLabel = Instance.new("Frame")
local FunLabel = Instance.new("TextLabel")
local MovementFrame = Instance.new("Frame")
local Noclip = Instance.new("TextButton")
local Walkspeed = Instance.new("TextButton")
local HipHight = Instance.new("TextButton")
local NoclipON = Instance.new("TextButton")
local WalkspeedON = Instance.new("TextButton")
local HipHightON = Instance.new("TextButton")
local Movement = Instance.new("Frame")
local MoveLabel = Instance.new("TextLabel")
local Settings = Instance.new("Frame")
local SettingLabel = Instance.new("TextLabel")
local SettingFrame = Instance.new("Frame")
local DisableBlur = Instance.new("TextButton")
local DisableBlurON = Instance.new("TextButton")
--Properties:
Main.Name = "Main"
Main.Parent = game.CoreGui
 
-- Autosell Settings
_G.autosell = false
_G.testSell = false -- prints out what items would've been sold instead of selling the items
_G.keep_items_level_requirement = 156  -- keeps items that level requirements are above this number
_G.keep2spells = false -- sell spells extra spells if you have 2 already
_G.keep_items_from_class = {
  ["physical"] = false, 
  ["mage"] = false,
} --[[ only keeps items that fall within the given class ]]
_G.keeprarities = {
  ['legendary'] = true,
  ['epic'] = false,
  ['rare'] = false,
  ['uncommon'] = false,
  ['common'] = false,
}
_G.itemlist ={ 
 
  --Volcanic Chambers Armor
  ["Lava King's Warrior Helmet"] = {"rare","epic"},
  ["Lava King's Warrior Armor"] = {"rare","epic"},
  ["Lava King's Mage Helmet"] = {"rare","epic"},
  ["Lava King's Mage Armor"] = {"rare","epic"},
  -- Warrior Skills,
  ["Enhanced Inner Rage"] = {"legendary"},
  -- Others
  ["Enchanted Serpent Daggers"] = {"rare","epic"},
  ["Oceanic Greatsword"] = {"rare","epic"},
  ["Spear Strike"] = {"rare"},
  ["Water Orb"] = {"rare"},
  ["Ice Barrage"] = {"epic"},
  ["Ice Crash"] = {"epic"},
  ["Aquatic Smite"] = {"epic"},
  ["Ice Spikes"] = {"epic"},
  ["Triton Warrior Helmet"] = {"rare","epic","uncommon"},
  ["Triton Warrior Armor"] = {"rare","epic","uncommon"},
  ["Triton Mage Armor"] = {"rare","epic","uncommon"},
  ["Triton Mage Helmet"] = {"rare","epic","uncommon"},
  ["Triton Guardian Helmet"] = {"rare","epic"},
  ["Triton Guardian Armor"] = {"rare","epic"},
 
} 
 
-- Auto Upgrade Settings
_G.auto_stat_upgrade = false -- auto upgrade stats
_G.stat = "physicalPower" -- selected stat
_G.auto_equip_gear = false
_G.equip_type = "spell" -- "physical", "spell"
_G.auto_upgrade_equip = false
_G.autoEquipSpell = false
_G.spellType = "spell" -- "physical", "spell"
 
-- ANTI LAG SETTINGS
_G.wall_transparency = .5
_G.optimize_mobs = true
_G.destroy_map = true
_G.del_armor= true
_G.del_weapon = true
_G.hide_projectiles = true
_G.loadSlow = false
_G.fpsBoost = true
 
-- UI Settings
_G.edit_ui = false
_G.UI_portait_image = 'rbxassetid://3157197640'
_G.UI_health = "Peanut"
_G.UI_money = "Peanut"
_G.UI_name = "Peanut Quest"
_G.UI_xp = "66"
_G.UI_lvl = "33"
 