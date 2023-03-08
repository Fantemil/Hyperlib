getgenv().radar_hack = true

local game_client = {}
for i,v in next, getgc(true) do
    if typeof(v) == "table" then
        if rawget(v, 'goingLoud') and rawget(v, 'isInSight') then
            game_client.spotting = v
        elseif rawget(v, "getCharacterObject") then
            game_client.character_controller = v
        end
    end
end

local old_is_spotted = game_client.spotting.isSpotted
game_client.spotting.isSpotted = function(character)
    if game_client.character_controller.isAlive() and getgenv().radar_hack then
        return true
    else
        return old_is_spotted(character)
    end
end