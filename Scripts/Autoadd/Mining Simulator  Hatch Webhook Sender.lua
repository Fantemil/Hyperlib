_G.Webhook = "https://discord.com/api/webhooks/" --Your Webhook
_G.Discord_UserID = "" --e.g."6942058585859632"; your DISCORD UID To Ping; leave as "" to not ping
_G.TrueChance = true -- false = 0.001%; true = 1:400k
_G.Tiers = { --Tiers you care about
    ['Common'] = false;
    ['Unique'] = false;
    ['Rare'] = false;
    ['Epic'] = false;
    ['Legendary'] = true;
    ['Secret'] = true;
}
_G.Exclusions = {
    "Unicorn"; -- Annoying thing I cannot stop hatching.
    "Glitch"; -- Other annoying thing I cannot stop hatching.
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/iTzGerard/MiningSimulator2/main/Hatch_Webhook'))()