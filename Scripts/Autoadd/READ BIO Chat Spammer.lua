local settings = {
   AutoChat_Time = 1, --Change time
   AutoChat_Delay = 1, --Change delay
   AutoChat = true, --Change spam status on/off with "true" or "false" (execute again after changing)
}

local chatrem = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

while task.wait(settings.AutoChat_Time) do
    chatrem:FireServer('PUT YOUR MESSAGE HERE', "All") --Put your message here
    print("Sent Message")
end