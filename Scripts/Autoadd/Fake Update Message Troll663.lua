player =  "S"
fakemsg = "A countdown has started for the new update."
message = "###########                                                                                                                                     ["..tostring(player).."] "..tostring(fakemsg)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")