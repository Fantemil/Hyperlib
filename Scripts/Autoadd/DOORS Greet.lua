local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local greetingMessages = {
    "Hello, %s!",
    "Greetings, %s!",
    "Welcome, %s!"
}

function greetPlayer(player)
    local randomIndex = math.random(1, #greetingMessages)
    local message = greetingMessages[randomIndex]:format(player.Name)
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
end

for _, player in pairs(Players:GetPlayers()) do
    greetPlayer(player)
end

Players.PlayerAdded:Connect(function(player)
    greetPlayer(player)
end)

Players.PlayerRemoving:Connect(function(player)
    -- Handle player leaving event here
end)