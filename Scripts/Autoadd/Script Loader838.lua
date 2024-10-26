-- Gamelist
getgenv().gamesConfig = {
    {
        gameName = "A literal baseplate",
        placeId = 4483381587,
        ConfigScript = [[ --script in here]]
    },
    {
        gameName = "Game Placeholder",
        placeId = 0000000000, 
        ConfigScript = [[ --script here  ]]
    },
    -- Add more games if needed!
}

--[[LOGO]]--
getgenv().logo = [[
    Welcome to
        ____   ____                             _________            .__        __          
        \   \ /   /____   ____   _______  ___  /   _____/ ___________|__|______/  |_  ______
         \   Y   // __ \ /    \ /  _ \  \/  /  \_____  \_/ ___\_  __ \  \____ \   __\/  ___/
          \     /\  ___/|   |  (  <_> >    <   /        \  \___|  | \/  |  |_> >  |  \___ \ 
           \___/  \___  >___|  /\____/__/\_ \ /_______  /\___  >__|  |__|   __/|__| /____  >
                      \/     \/            \/         \/     \/         |__|             \/ 
                                        discord.gg/
         [*] made by venox.w#0

    ]]

--[[KEYSYSTEM]]--
getgenv().keysystem = true
getgenv().key = "test"                            -- (can also use HttpGet or Loadstring to load the key details for example from a unlisted paste)
getgenv().keylink = "url to obtain key"

--[[GAME CHECK]]--
getgenv().gamechecker = true                                      --game placeid checker on/off (true/false)
getgenv().ScriptName = "Name Here"                                --name of your script
getgenv().UniversalScript = [[ -- script here ]]                  --script to execute when gamechecker off

-- Loader
loadstring(game:HttpGet(("https://raw.githubusercontent.com/venoxhh/LoaderV1/main/Loader.lua")))()
