-- Put this in your autoexe folder


getgenv().BladeQuestAutofarm = {
Enabled = true;
Map = "Forest"; 
Difficulty = "Easy";
Hardcore = true;
FailSafeRejoin = false; -- Will try to go back to lobby if Character is stuck somewhere...
FailSafeSeconds = 400;
TweenSpeed = 40; 
Offset = Vector3.new(0,5,7); -- Anticheat triggers if you go directly above mob, but you can change the position if you still get hit
AutoUpgradePlayerSkill = "SwordSkill"; -- "HealthSkill", "SwordSkill", "MagicSkill" or leave empty to turn off
AutoMerge = true;
AutoUpgradeSword = true;
AutoEquipBestSword = true;
AutoDifficulty = true;
Webhook = ""; -- leave empty to turn off
}


loadstring(game:HttpGet("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Blade%20Quest/BladeQuestLoadstring"))()