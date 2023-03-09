main_name = "MainAccountNameHere" -- account that gets all the stats

lag_multi = 1.1 -- 1 for about 5-40 ping, 1.1 for about 40-80, 1.2 for about 80-120, etc etc
optimisation = true -- for lower end pcs / helps running multiple instances of roblox (30 fps limit + lower quality)
auto_mute_ingame_audio = true -- self explanatory

alt_accounts = { -- list of all alt account names that will be farmed for the main account
    "AltAccountNameHere";
    "AltAccountNameHere";
    "YouCanAddMore";
    "YouCanAlsoRemoveSome";
}

loadstring(game:HttpGet("https://projecthook.xyz/scripts/autofarm.lua"))()