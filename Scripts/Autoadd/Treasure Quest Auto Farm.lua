getgenv().TreasureQuestAutofarm = {
   Enabled = true;
   Dungeon = "Ancient Jungle";
   Difficulty = "Easy";
   GameMode = "Classic";
   EndlessSellFullInventory = true;
   FailSafeRejoin = false; -- Tries to go back to lobby incase Character gets stuck somewhere...
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