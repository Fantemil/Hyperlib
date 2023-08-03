if game.PlaceVersion ~= 5584 then
    local response = messagebox("The script detected a game update!\nPlease use an alt account to test if the script is still safe!\n\nRun script?", "WARNING", 52)
    if response == 7 then return end
end
loadstring(game:HttpGet('https://raw.githubusercontent.com/choke-dev/RE-Script/main/In%20Plain%20Sight%202/Camera%20ESP.lua'))()