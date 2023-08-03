function say(data)
    return game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(data, "All")
end

for attempt = 1, 5 do
    say(string.char(0))
    wait(3)
end