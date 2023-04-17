-- https://www.roblox.com/games/6494523288/Blade-Quest
-- Put this in your autoexe folder
getgenv().BladeQuestAutofarm = {
    Enabled = true;
    Map = "Forest";
    Difficulty = "Easy";
    Hardcore = false;
    FailSafeRejoin = false; -- Will try to go back to lobby if Character is stuck somewhere...
    FailSafeSeconds = 300;
    TweenSpeed = 50; -- Higher = faster
    Offset = Vector3.new(0,5,7) -- Anticheat triggers if you go directly above mob, but you can change the position if you still get hit
    AutoUpgradePlayerSkill = ""; -- "HealthSkill", "SwordSkill", "MagicSkill" or leave empty to turn off
    AutoMergeSwords = false;
    AutoUpgradeSword = false;
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Blade%20Quest/BladeQuestLoadstring"))()