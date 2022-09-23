repeat
    wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game:IsLoaded()

if game.PlaceId == 9498006165 then -- Tapping Simulator!
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KxngW/KxngW/main/TappingSim.Lua"))()

elseif game.PlaceId == 8884334497 then -- Mining Clicker Simulator
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KxngW/KxngW/main/MiningClickerSim.lua"))()

elseif game.PlaceId == 7177496972 then -- Anime Warriors
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KxngW/KxngW/main/AnimeWarriors.lua"))()

elseif game.PlaceId == 8540346411 then -- Rebirth Champions X
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KxngW/KxngW/main/RebirthChampionsX.lua"))()

elseif game.PlaceId == 10204162989 then -- Pickaxe Simulator
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KxngW/KxngW/main/PickaxeSimulator.lua"))()
end