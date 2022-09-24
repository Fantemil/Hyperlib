--[[
Info: you need the required material for crafting the items, buy the item recipe and anvil
put this script on your auto execute folder - its obfuscated, so it doesn't get patched too fast
@Walterino - strvyz#6030
]]--

_G.AutoCraft = {
   ["Enabled"] = false, -- make it true for run the script
   ["ItemName"] = "WP_Sword_Dragon", -- (Ex: WP_Sword_Dragon / TO_Pickaxe_Gold)
   ["FiveStarCrafting"] = true, -- make it false if you want to take the 4star too from crafting, (recomended: true)
   ["Webhook"] = "" -- your discord webhook url (logs if you got 5 star equipment)
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Walterino66/v3rmillion/main/autocraft.lua", true))()