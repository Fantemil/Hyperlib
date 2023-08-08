getgenv().AutofarmEnabled = true
getgenv().NPCWeapon = 'Battle Cleaver' -- The name of the weapon that you want to use to clear the NPCs. An axe is recommended.
getgenv().BossWeapon = 'Greatsword of Flying II' -- The name of the weapon that will be used to kill the general once the other enemies are dead.
getgenv().WebhookURL = ''

loadstring(game:HttpGet('https://raw.githubusercontent.com/Amiriki/FOF/main/script.lua'))()