-- Enjoy SpamBot Script Made by Sakura
--READ BEFORE USE DONT SAY I DONT WARN YOU IF YOU DON'T READ USING THIS SCRIPT
--UPDATED RECCMONED PUT 10 MIN SERVERHOP OR MORE TO AVOID DETECTION FROM ROBLOX AND ALSO USE AUTO CLICKER OR SOMETHING THAT MAKE IT LESS SUSPICIOUS OF GETTING CAUGHT BY ROBLOX
--OR ELSE JUST DONT USE SERVERHOP AND DISABLE THE SCRIPT SETTINGS BECAUSE IS RISK GETTING IP BAN FOR A WHILE well if you don't use serverhop setting mean you don't need to worry about getting IP ban for while by anti cheat BC roblox only detect suspicious roblox player that join and leave game rapidly
--turn off teleport settings if game has anti cheat of Stopping you from teleporting 
--recommend turning lot of alt account on lot of server to make spam bot Effective if you have good pc to turn on lot of alt account 
--Use ANY KIND OF VPN TO BYPASS ROBLOX CLIENT KICK THAT STOPPING YOU FROM JOINING GAME IF YOU STILL GET KICKED CHANGE NEW VPN SERVER
---WARNING DONT EVER PUT TOO LESS SERVERHOP TIME PUT IT ABOUT 10 MIN OR MORE OR ELSE YOU WILL GET KICKED AND CAN'T PLAY GAME BY ANTI CHEAT ROBLOX
-- Warning: This script only works for basic Roblox games that don't have the modern Roblox chat system.
-- SETTINGS
---Set some of Setting to False If you dont want something to be active 
--ONLY WORK PERFECTLY WITH EXECUTOR THAT HAS AUTO EXECUTE THROUGH FILE OR SAVED SCRIPT 
getgenv().settings = {
    AutoChat_Time = 0.1,  -- Time in seconds between each chat message
    AutoChat_Delay = 1.5,  -- Additional delay after each message
    AutoChat = true,  -- Set to true to enable auto chat
    Message = "Want DOMNUIS?! follow Averyy3k on Roblox!ð°ð¤ Please dont act tough on chatð¤Cus We Had lot of here ð°ð¤followð¤",  -- The message you want to spam in chat
    ServerHop_Time = 1000,  -- Time in seconds to wait before server hopping
    GameID = 5373028495,  -- Replace with the actual game ID
    GameLink = "https://www.roblox.com/games/5373028495/LGBTQ-Hangout",  -- Replace with the actual game link
    Teleport_Delay = 1,  -- Time in seconds between each random teleport
}

-- FUNCTION TO SEND CHAT MESSAGE
local function sendChatMessage()
    local chatrem = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
    while settings.AutoChat do
        chatrem:FireServer(settings.Message, "All")
        print("Sent Message")
        wait(settings.AutoChat_Delay)
    end
end

-- FUNCTION TO TELEPORT TO A RANDOM PLAYER
local function teleportToRandomPlayer()
    local player = game.Players.LocalPlayer
    while true do
        local players = game.Players:GetPlayers()
        if #players > 1 then  -- Ensure there is at least one other player
            local randomPlayer
            repeat
                randomPlayer = players[math.random(1, #players)]
            until randomPlayer ~= player  -- Ensure the random player is not the local player
            
            local character = player.Character
            local targetCharacter = randomPlayer.Character
            if character and targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart") then
                character:MoveTo(targetCharacter.HumanoidRootPart.Position)
                print("Teleported to " .. randomPlayer.Name)
            end
        end
        wait(settings.Teleport_Delay)
    end
end

-- FUNCTION TO SERVER HOP RANDOMLY
local function hop()
    pcall(function()
        local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. settings.GameID .. "/servers/Public?sortOrder=Asc&limit=100"))
        if #Servers.data > 0 then
            local randomServer = Servers.data[math.random(1, #Servers.data)]
            if randomServer.playing < randomServer.maxPlayers then
                wait(settings.ServerHop_Time)
                game:GetService('TeleportService'):TeleportToPlaceInstance(settings.GameID, randomServer.id)
            end
        end
    end)
end

-- FUNCTION TO MONITOR AND HOP SERVERS
local function monitorAndHop()
    while true do
        hop()
        wait(settings.ServerHop_Time)
    end
end

-- Function to restart the script after server hop
local function reinitializeScript()
    if settings.AutoChat then
        task.spawn(sendChatMessage)
    end
    task.spawn(teleportToRandomPlayer)
    task.spawn(monitorAndHop)
end

-- MAIN
reinitializeScript()

-- Detect when the player is added to the new server and reinitialize the script
game.Players.LocalPlayer.OnTeleport:Connect(function(teleportState)
    if teleportState == Enum.TeleportState.Started then
        wait(1)  -- Wait briefly to ensure the player has loaded into the new server
        reinitializeScript()
    end
end)
