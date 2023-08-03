local games = {
[9551640993] = "https://raw.githubusercontent.com/AdminusGames/Mining_Simulator_2/main/.lua",
[8750997647] = "https://raw.githubusercontent.com/AdminusGames/Tapping_Legends_X/main/.lua",
[8884433153] = "https://raw.githubusercontent.com/AdminusGames/Collect_All_Pets/main/.lua",
[9648883891] = "https://raw.githubusercontent.com/AdminusGames/Festival_Tycoon/main/.lua",
[1962086868] = "https://raw.githubusercontent.com/AdminusGames/Tower_Of_Hell/main/.lua",
[9498006165] = "https://raw.githubusercontent.com/AdminusGames/Tapping_Simulator/main/.lua",
[286090429] = "https://raw.githubusercontent.com/AdminusGames/Arsenal/main/.lua",
[3956818381] = "https://raw.githubusercontent.com/AdminusGames/Ninja_Legends/main/.lua",
[537413528] = "https://raw.githubusercontent.com/AdminusGames/Build_A_Boat_For_Treasure/main/.lua",
}

local function run()
    if games[game.PlaceId] then
        loadstring(game:HttpGet(games[game.PlaceId])){}
        return
    end
    loadstring(game:HttpGet('"https://raw.githubusercontent.com/AdminusGames/Universal/main/.lua"')){}
end
run()