player =  "S"
fakemsg = "You can now access the KJ test on a private server."
message = "###########                                                                                                                                     ["..tostring(player).."] "..tostring(fakemsg)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")