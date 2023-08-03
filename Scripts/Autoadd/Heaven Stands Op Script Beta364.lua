--[[
    Infinity Hub  |  Heaven Stands â›…
    Made by Darkzin and InfinityMercury

    Darkzin - Script
    InfinityMercury - Script
]]
getgenv().Heaven_Stands = {
    ["Farming Options"] = {
        ["Box Farm"] = false,
    },
    ["Insta Kill Bosses"] = {
        ["DIO"] = false,
        ["Garou"] = false,
        ["Vergil"] = false,
        ["Silver Chariot Requiem"] = false,
        ["Sakuya Izayoi"] = false,
    },
    ["Player Options"] = {
        ["Character"] = {
            ["Disable Character Functions"] = false,
            ["Disable Animate"] = false,
        },
        ["Others Options"] = {
            ["Enable Speed and Jump"] = false,
            ["WalkSpeed"] = "", -- normal is 16
            ["JumpPower"] = "", -- normal is 50
        },
    },
    ["Visual Options"] = {
        ["Vergil 2 Swords"] = false,
        ["RTX Mode"] = false,
    },
};


loadstring(game:HttpGet('https://raw.githubusercontent.com/Aboahaogsigsigaivva/__Scripts/__Main/__Code/__HeavenStands.lua'))('Loader.lua')