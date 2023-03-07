_G.teleportDuringBossOnly = true -- if true, only use smallTeleports when its time for a boss
_G.doInstakill = true
 
-- AI Visual Settings
_G.showTarget = true -- this will highlight each target in a red box
_G.showPath = true
 
-- AI Performance
_G.extremelyFast = true -- makes the ai think exponentially faster, but might lag for people
 
-- Lobby Settings
_G.maxWaitTimeInLobby = 0 -- this is how long itll randomly walk around for before going into a dungeon 
_G.collect_daily_reward = false
 
-- Dungeon Choosing Settings
_G.auto_join_dungeon = true
_G.dungeon = nil
_G.difficulty = nil
_G.hardcore = true -- hardcore mode
_G.auto_choose_dungeon_and_difficulty = true -- if true, then script auto choose dungeon and difficulty for your lvl
_G.autoexec_wait_time_secs = 3
 
-- Boss Raid Settings
_G.boss_raid = false
_G.auto_choose_raid_boss_tier = true
_G.boss_raid_tier = 1
 
-- Wave Defense Settings
_G.wavedefense = false -- wave defense
 
-- Easter Event Settings
_G.easter_enable = false
_G.eggClass = "Mage"
 
-- Party Settings
-- Hosting Settings
_G.wait_for_friends = false
_G.friends = {"Friend 1", "Friend 2"}
 
-- Joining Settings
_G.wait_for_friends_to_host = false
_G.host_name = "Name of the host"
 
-- Multi-Instance Settings
_G.multi_roblox = false
_G.host_name_key = {"acc"} -- this account creates parties
_G.name_key_list = { 
  {"acc"},
}
 
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
 
-- Discord Webhook
_G.webhookEnabled = false
_G.webhookLink = nil -- your webhook
loadstring(game:HttpGet(('https://raw.githubusercontent.com/PeanutQuest/PeanutQuestBeta/main/Release.lua'),true))()