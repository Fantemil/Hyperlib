local URL = "https://WheatHub.kelprepl.repl.co/scripts/"

function load_script(name)
    loadstring(game:HttpGet(URL .. name))()
end

if 7560156054 == game.PlaceId then
    load_script("Clicker_Simulator")
elseif 537413528 == game.PlaceId then
    load_script("Build_A_Boat_For_Treasure")
end