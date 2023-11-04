--[[
Update 22/08/2023
- Fixed teleporting bug
- Fixed Discord webhook not being sent
- Added a feature to attack Neutral NPCs too, such as the Dragon on Volcano
- Added a feature to use your 'BossWeapon' (General Weapon) on other NPCs. Use this on mages or archers, as they're spread out so an axe likely would be less efficient
--]]

getgenv().FOFConfig = {
    ['AutofarmEnabled'] = true,
    ['NPCWeapon'] = 'Battle Cleaver', -- The name of the weapon that you want to use to clear the NPCs. An axe is recommended.
    ['BossWeapon'] = 'Greatsword of Flying II', -- The name of the weapon that will be used to kill the general once the other enemies are dead.
    ['WebhookURL'] = '',
    ['DisableOnJoin'] = true, -- Whether you want the script to automatically disable itself if someone joins the server.
    ['EnableOnLeave'] = true, -- Whether you want the script to automatically restart when you are the only person in the server.
    ['IgnorePlayers'] = false, -- Whether the script should ignore players on the enemy team. This is useful for farming on two accounts at once.
    ['Map'] = 'Savannah', -- Which map the script should vote for.
    ['DisableRendering'] = false, -- Whether you want to disable rendering.
    ['AutoShutdownTimer'] = 6, -- How long the script should autofarm in hours before shutting down in order to seem legit. Set it to 0 to not automatically shutdown.
    ['AttackNeutralNPCs'] = true, -- Whether the script should attack Neutral NPCs, e.g. Rogues
    ['UseGeneralWeaponNPCs'] = {["mage"] = true, ["archer"] = true}, -- What enemies (aside from the General) the script should use your General-killing weapon on. This is useful for spread out enemies like mages and archers.
	['DebugMode'] = true -- Whether the script should output debug information in chat
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/Amiriki/FOF/main/script.lua'))()