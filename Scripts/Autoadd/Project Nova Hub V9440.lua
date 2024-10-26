getgenv().ToggleUI = "J"-- //  Key Toggle "J" set by default however you can change it.
getgenv().ProjectNova = "https://raw.githubusercontent.com/Lvl9999/TheStrongestBattlegrounds/main/ProjectNovaV9";

pcall(function()
    loadstring(game:HttpGet(getgenv().ProjectNova))();
end)