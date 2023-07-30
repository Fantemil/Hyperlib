local spoofvalue1, spoofvalue2 = game.PlaceId, game.GameId

local old; old = hookmetamethod(game, "__index", function(s, k)
    if s == game and k == "PlaceId" then
        return spoofvalue1
    elseif s == game and k == "GameId" then
        return spoofvalue2
    end
    return old(s, k)
end)

local old; old = hookmetamethod(game, "__newindex", function(s, k, v)
    if s == game and k == "PlaceId" then
        spoofvalue1 = v
        return
    elseif s == game and k == "GameId" then
        spoofvalue2 = v
        return
    end
    return old(s, k, v)
end)

game.PlaceId = 9880062154

loadstring(game:HttpGet(('https://raw.githubusercontent.com/Aidez/decaying_winter/main/GOODWILL_COMMAND_SCRIPT'),true))()