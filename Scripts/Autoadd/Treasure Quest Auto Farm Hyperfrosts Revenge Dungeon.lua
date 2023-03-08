-- https://www.roblox.com/games/2960777560/DUNGEON-Treasure-Quest
getgenv().TreasureQuestAutofarm = {
    Enabled = true;
    Dungeon = "Hyperfrost's Revenge";
    Difficulty = "Easy";
    GameMode = "Uncapped";
    FailSafeRejoin = true; -- Tries to go back to lobby if Character is stuck somewhere...
    FailSafeSeconds = 200;
}

getgenv().TreasureQuestAutoSell = {
    Enabled = false;
    AutoUpgradeGear = false;
    KeepAbilities = false; -- this doesn't exist yet
    KeepTiers = {
        "Common";
        "Rare";
        "Legendary";
        "Mythical";
        "Ultimate";
        "Unique";
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Treasure%20Quest/TreasureQuestLoadstring"))()