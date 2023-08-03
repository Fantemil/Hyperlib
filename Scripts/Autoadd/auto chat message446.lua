local settings = {
   AutoChat_Time = 30,
   AutoChat_Delay = 10,
   AutoChat = true,
}

local chatrem = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

while task.wait(settings.AutoChat_Time) do
    chatrem:FireServer('PUT YOUR MESSAGE HERE', "All")
    print("Sent Message")
end