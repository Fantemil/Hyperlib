if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Scripts = {
    [7419509075] = "https://raw.githubusercontent.com/hellamane/epixcryan/main/C.lua",
    [7047488135] = "https://raw.githubusercontent.com/hellamane/epixcryan/main/E.lua",
    [102131021] = "https://raw.githubusercontent.com/hellamane/epixcryan/main/F.lua",
    [10320240572] = "https://raw.githubusercontent.com/hellamane/epixcryan/main/S.lua",
    [4997792989] = "https://raw.githubusercontent.com/hellamane/epixcryan/main/H.lua",
    [9988027602] = "https://raw.githubusercontent.com/hellamane/epixcryan/main/FJT.lua"
}

local Check = Scripts[game.PlaceId] or Scripts[game.GameId]
local Log = loadstring(game:HttpGet("https://raw.githubusercontent.com/Belkworks/synlog/master/init.lua", "Log"))()

if Check then
    local Success, Result = pcall(function()
        return game:HttpGet(Check)
    end)

    if Success then
        loadstring(Result, "Loader")()
    else
        Log:error(("Failed to load: %s"):format(Result))
    end
else
    Log:error("Game not supported!")
end 