if not game:IsLoaded() then
    game.Loaded:Wait()
end 

if game.PlaceId == 6403373529 then
      
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Message from Rogue Hub:No more got banned by rogue hub bypassed by semihu803", "All")
    task.wait(1)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Rogue Hub",
        Text = "Game Dedected:Slap Battles👋",
        Duration = 5
    })
    return
end 