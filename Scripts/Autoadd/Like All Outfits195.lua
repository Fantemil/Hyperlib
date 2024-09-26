local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function likeAllOutfits()
    for _, player in ipairs(Players:GetPlayers()) do
        local args = {
            [1] = player
        }
        ReplicatedStorage.Events.LikeOutfit:FireServer(unpack(args))
    end
end

likeAllOutfits()