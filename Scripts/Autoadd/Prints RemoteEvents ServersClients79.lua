-- LocalScript placed in StarterPlayerScripts or StarterGui

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local function logEvent(event, eventType, eventName)
    print(string.format("[%s Event] %s: %s", eventType, eventName, event:GetFullName()))
end

local function trackRemoteEvents()
    -- Track RemoteEvents that fire from server to client (FireServer)
    for _, remoteEvent in ipairs(ReplicatedStorage:GetDescendants()) do
        if remoteEvent:IsA("RemoteEvent") and remoteEvent.OnServerEvent then
            logEvent(remoteEvent, "Server", remoteEvent.Name)
        end
    end

    -- Track ClientRemoteEvents that fire from client to server (OnClientEvent)
    for _, player in ipairs(Players:GetPlayers()) do
        local playerGui = player:FindFirstChild("PlayerGui")
        if playerGui then
            for _, clientEvent in ipairs(playerGui:GetDescendants()) do
                if clientEvent:IsA("RemoteEvent") and clientEvent.OnClientEvent then
                    logEvent(clientEvent, "Client", clientEvent.Name)
                end
            end
        end
    end
end

-- Log existing events on start
trackRemoteEvents()

-- Track new events as they are created
ReplicatedStorage.DescendantAdded:Connect(function(newEvent)
    if newEvent:IsA("RemoteEvent") then
        logEvent(newEvent, "Server", newEvent.Name)
    end
end)

Players.PlayerAdded:Connect(function(player)
    player.DescendantAdded:Connect(function(newEvent)
        if newEvent:IsA("RemoteEvent") then
            logEvent(newEvent, "Client", newEvent.Name)
        end
    end)
end)

-- Continuously check for new events
while true do
    wait(5)  -- Adjust the interval as needed
    trackRemoteEvents()
end