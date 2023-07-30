

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = ReplicatedStorage:WaitForChild("Knit")
local Services = Knit:WaitForChild("Services")
local RaidService = Services:WaitForChild("RaidService")
local RF = RaidService:WaitForChild("RF")
local GiveReward = RF:WaitForChild("GiveReward")

local playerId = 69696969696969 -- 

local function getPlayerName(playerId)
    local player = game.Players:GetPlayerByUserId(playerId)
    if player then
        return player.Name
    end
    return "Unknown Player"
end

local function giveRewardToPlayer(playerId)
    local playerName = getPlayerName(playerId)
    print("Giving reward to player:", playerName)
    local args = {
        [1] = playerId
    }
    GiveReward:InvokeServer(unpack(args))
    print("Reward given successfully to player:", playerName)
end

giveRewardToPlayer(playerId)

-- Additional functionality: Print the names of all players in the game
print("List of players:")
for _, player in ipairs(game.Players:GetPlayers()) do
    print("-", player.Name)
end