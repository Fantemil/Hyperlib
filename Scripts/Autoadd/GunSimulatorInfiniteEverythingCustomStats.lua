data = {
    Coins = math.huge,
    CoinsRecord = math.huge,
    Stars = math.huge,
    StarsRecord = math.huge,
    Skill = math.huge,
    SkillRecord = math.huge,
    Eggs = math.huge,
    Killstreak = math.huge,
    KillstreakRecord = math.huge,
    FirstPlayed = 0,
    LastRewardClaimed = 0,
    BossKills = math.huge,
    CoinBoost = math.huge,
    StarBoost = math.huge,
    LuckBoost = math.huge,
    TotalPlaytime = math.huge,
    Guns = {
        M1911 = true
    },
    CurrentGun = "M1911",
    Ranks = {
        Recruit = true
    },
    CurrentRank = "Recruit",
    Specializations = {
        Noob = true
    },
    CurrentSpecialization = "Noob",
    Elementals = {
        None = true
    },
    CurrentElemental = "None",
    Vehicles = {},
    Pets = {},
    Settings = {
        EffectsVolume = 5,
        MusicVolume = 5,
        UIVolume = 5,
        MaxSkillWarning = true,
        Popups = true,
        Shadows = false,
        Glass = true
    },
    Transactions = {},
    Gamepasses = {},
    Codes = {}
};



local l__LocalPlayer__1 = game:GetService("Players").LocalPlayer;
local l__PlayerGui__2 = l__LocalPlayer__1.PlayerGui;
local l__cmain__3 = l__LocalPlayer__1.PlayerScripts.Client.cmain;
local l__ClientModules__4 = l__cmain__3.ClientModules;
local v5 = require(game:GetService("ReplicatedStorage").Main.UniversalModule.Universal);
local l__setvar__6 = v5.setvar;
local l__printtable__7 = v5.printtable;
local l__ReplicatedFirst__8 = game:GetService("ReplicatedFirst");
local u1 = {};
local u2 = require(l__cmain__3.State);
local v9 = require(l__cmain__3):datum();
local l__Signal__10 = v9.Signal;
function u1.UpdateData(p2)
    u2.Data = p2;
    for v11, v12 in pairs(v9) do
        if v12.OnDataUpdate then
            v12.OnDataUpdate()
        end
    end
end

u1.UpdateData(data)