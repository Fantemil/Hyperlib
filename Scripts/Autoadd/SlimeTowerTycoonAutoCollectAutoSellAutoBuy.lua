local game_list = {
    --// Godzilla Simulator
    ["1257535190"] = "https://raw.githubusercontent.com/GhostDuckyy/Bread/main/Storage/Godzilla_Sim.lua",

    --// Rebirth Champions X
    ["8540346411"] = "https://raw.githubusercontent.com/GhostDuckyy/Bread/main/Storage/Rebirth%20Champions%20X.lua",

    --// Tapping Simulator
    --["9498006165"] = "https://raw.githubusercontent.com/GhostDuckyy/Bread/main/Storage/Tapping%20Simulator.lua",

    --// Op ninja simulator
    ["4225025295"] = "https://raw.githubusercontent.com/GhostDuckyy/Bread/main/Storage/op%20ninja%20simulator.lua",

    --// Dragon Farm Simulator
    ["9983979661"] = "https://raw.githubusercontent.com/GhostDuckyy/Bread/main/Storage/Dragon%20Farm%20Simulator.lua",

    --// Wheat Farming Simulator
    ["10106105124"] = "https://raw.githubusercontent.com/GhostDuckyy/Bread/main/Storage/Wheat%20Farming%20Simulator.lua",

    --// Pickaxe Simulator
    ["10204162989"] = "https://raw.githubusercontent.com/GhostDuckyy/Bread/main/Storage/Pickaxe%20Simulator.lua",

    --// Slime Tower Tycoon
    ["10675066724"] = "https://raw.githubusercontent.com/GhostDuckyy/Bread/main/Storage/Slime%20Tower%20Tycoon.lua",



}

for ID, url in next, (game_list) do
    if string.find(ID,tostring(game.PlaceId)) or string.match(ID,tostring(game.PlaceId)) then
        if url ~= nil then
            local s,e = pcall(function() loadstring(game:HttpGet(url,true))(); end)
            if s then
                warn("Bread🍞 Success to load!")
            end
            if e then
                warn("Bread🍞 Failed to load!")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostDuckyy/Bread/main/Loader/error.lua",true))();
             break;
            end
        end
    end
end