_G.Stop = false  -- Set to "true" if you want the auto enchant stop.
_G.BankIndex = 1 -- Bank index: 1 = your own bank / 2 - 5 = Banks you're invited to
_G.AutoWithdraw = true -- will auto withdraw 25b gems or how much gems you have left if you dont have gems left.
_G.Wanted = { -- Wanted enchants.
["Tech Coins"] = 5,
["Teamwork"] = 2
}
loadstring(game:HttpGet('https://raw.githubusercontent.com/CandyIsAbsolute/RobloxScripts/main/PSX/Auto_Enchant.lua'))()