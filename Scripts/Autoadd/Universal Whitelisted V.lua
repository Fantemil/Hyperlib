--[[
 WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
function is_whitelisted(player)
    --// Add the names or user IDs of whitelisted players to this table
    local whitelist = {
        "mclpvinn", --// player username (need the real username not the display name)
        123456789,  -- User ID 
        "Player1",
    }
    
    --// Check if the player is in the whitelist or The player is not in the whitelised
    for _, nameOrID in pairs(whitelist) do
        if player.Name == nameOrID or player.UserId == nameOrID then
            return true
        end
    end

    return false
end

function is_blacklisted(player)
    --// Add the names or user IDs of blacklisted players to this table
    local blacklist = {
        "BoyBoy123",
        1223464556,  -- User ID 
        "Player2",
    }
    
    --// Check if the player is in the blacklist
    for _, nameOrID in pairs(blacklist) do
        if player.Name == nameOrID or player.UserId == nameOrID then
            return true
        end
    end

    return false
end

--// local script
local player = game.Players.LocalPlayer
if is_whitelisted(player) then
    print(player.Name .. " is allowed to use the script")
elseif is_blacklisted(player) then
    print(player.Name .. " is not allowed to use the script")
else
    print(player.Name .. " is not whitelisted or blacklisted")
end