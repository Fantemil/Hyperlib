main_name = "MainAccountNameHere" -- account that gets all the stats

optimisation = true -- for lower end pcs / helps running multiple instances of roblox (30 fps limit + lower quality)
auto_mute_ingame_audio = true -- self explanatory
damage_done_to_alts = 105 -- the damage done to alts automatically when teleported MIN=0 MAX=115 (100 = downed)
leave_if_staff_join = true -- self explanatory

alt_accounts = { -- list of all alt account names that will be farmed for the main account
   "AltAccountNameHere";
   "AltAccountNameHere";
   "YouCanAddMore";
   "YouCanAlsoRemoveSome";
}

-- PLEASE READ THE ABOVE OPTIONS AND CHANGE IT TO UR LIKING

loadstring(game:HttpGet("https://projecthook.xyz/scripts/autofarm.lua"))()