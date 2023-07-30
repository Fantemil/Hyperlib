-------------------------------[Creado Por/Made By NabilDr#4888]------------------------------------
----------------------------/////{Basic Setting-Ajuste Basico}\\\\\---------------------------------


Transform = {
    FormType = "h"; --[What key to press when using form, g or h]--
    ChargeForm = 7; --[How long charge before using a form]--
}

Settings = {
    Dragon = "Dragon Throw"; --[Choose Dragon Crush or Dragon Throw]--
    FpsBoost = true; --[True = Better fps and less lag]--
    GrabChecker = 60; --[if Broly doesn't go to last form in X seconds you will tp to queue]--
    PetTime = 5; --[True = Spam pet]--
    StatsAFK = true; --[The settings below will be enable]--
    AutoStats = "Ki-Damage"; --[Wich stat you want to auto upgrade. Example: Phys-Resist, Ki-Max, Health-Max, Ki-Resist, Ki-Damage,Phys-Damage, Speed]--
    AutoPunchLowKi = false; --[Recommended For High Lvls]--
    AutoPunch = false; --[Recommended For Low Lvls]--
}

AdvancedSettings = {
    on = true; --[True = The settings bellow will be enable]--
    ExtraTime = 2; --[How long untill the scripts load. Recommended Synapse X = 0, Krnl = 1-2. Increase if the script is not working when in autoexe]--
    MultiFarmAcctounts = false; --[True = Multible accounts using autobroly at the same time]--
    IDPlayer = 4353453354; --[Your main account id here]--
    RejoinInTime = 300;  --[Select here The Max Time To Wait In Broly Map Before to Teleport to Queue]--
    Advertise = true; --[True = Will type in chat who created the script you are using!]--
    FOV = 120; --[Adjust how much the screen zooms out, epic visuals]--
    LvlMaxFilter = "2000";
}

TypeBroly = {
    GoEarth = false; --[True = Teleport to earth broly pad instead of queue]--
    FreezedPlace = true; --[True = Will frezze your character in place]--
    CameraLock = true; --[True = Locks on to broly like aimbot (only visual)]--
}

Customizable = {
    SkyMode = true; --[True = you will be able to customize the sky]--
    IDSkyBroly = "http://www.roblox.com/asset/?id=7427648722"; --[Put your sky id/link here]--
}
AntiLeach = {
    HideQueue = false; --[True = you become invisible in queue world]--
    GoSolo = false; --[True = kick you when more then 2 total people are in broly world]--
}

--[You must have Dragon Throw,Dragon Crush and Flash Strike.And dont use it in the moveset]--
Moveset = {

    "Neo Wolf Fang Fist";  --[These moves are the recommended for the fastes time but you can choose as many moves as you like]--
    "Wolf Fang Fist";
    "Anger Rush";
    "Flash Skewer";
    "Meteor Crash";
    "Deadly Dance";
    "TS Molotov";
    "Sweep Kick";
    "God Slicer";

}



-----------------------------------------------------------------------------------------------------


loadstring(game:HttpGet'https://warlinendr.xyz/ScriptingZonaNDR/AutoBroly-NDR-V9/NDR.php')()

-----------------------------------------------------------------------------------------------------