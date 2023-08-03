local games = {
    ["AnimeClickerSimulator"] = 3102144307,
    ["DestructionSimulator"] = 2248408710,
    ["MiningClickerSimulator"] = 8884334497,
    ["SpeedRunSimulator"] = 5293755937
}
local function run()
    for i,v in pairs(games) do
        if game.PlaceId == v then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptsLynX/FrozenHub/main/"..i))()
            return
        end
    end
    error("Game Not Supported!")
end
run()