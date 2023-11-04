
local Games = {
    [6429911702] = "masterdco",
    [3351674303] = "DrivingEmpire",
    [9872472334] = "Evade",
    [2537430692] = "Jenga",
    [10347946161] = "ratycoon",
    [8674186618] = "CrateOpeningIncremental",
    [10676523834] = "racingrocket",
    [537413528] = "BuildABoatForTreasure",
    [9992339729] = "LongestAnswerWins",
    [10903978962] = "sheeptycoon",
    [6516141723] = "DOORS",
    [6839171747] = "DOORS",
    [5326405001] = "BaseBattles",
    [286090429] = "Arsenal",
    [9264596435] = "IdleHeroes",
    [9551640993] = "MiningSim2",
    [2653064683] = "WordBomb",
    [4866692557] = "AgeOfHeroes",
    [10723695195] = "AnimeEvolutionSim",
    [1962086868] = "TowerOfHell",
    [2986677229] = "GiantSim",
    [8737602449] = "PlsDonate",
    [3956818381] = "NinjaLegends",
    [13822889] = "LumberTycoon2",
    [11238892040] = "TypeOrDie",
    [8908228901] = "SharkBite2",
    [8750997647] = "TappingLegendsX",
    [10726371567] = "FindTheSimpsons",
    [10652184030] = "JumpClicker",
    [10898965735] = "MineRacer",
    [10675066724] = "SlimeTowerTycoon",
    [11196588443] = "ZombieMergeTycoon",
    [10977918334] = "MergeDroppers",
    [11402147065] = "RagdollClicker",
    [2619187362] = "SuperPowerFightingSimulator",
    [183364845] = "SpeedRun4",
    [3101667897] = "LegendsOfSpeed",
    [5865858426] = "RetailTycoon2",
    [10925589760] = "MergeSimulator",
    [11989217843] = "FindTheFamilyGuy",
    [12945702551] = "EndlessLuck",
    [1] = "universal"
}
writefile("\\Pearl\\Key System\\PearlKey.pearl", game:HttpGet("https://raw.githubusercontent.com/Faacts/UILibraries/main/RayfieldKey"):sub(17, 44))
local repo = "https://raw.githubusercontent.com/Faacts/FactsHub/main/Supported/"
local script = function() 
    if Games[game.PlaceId] then return game:HttpGet(repo..Games[game.PlaceId]) 
    else return game:HttpGet(repo..Games[1]) 
    end 
end
loadstring(script())()

