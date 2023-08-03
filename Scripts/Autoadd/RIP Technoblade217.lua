repeat task.wait() until game:IsLoaded()

chattbl = {"Technoblade never dies.", "#RIPTECHNOBLADE", "Technoblade will be in our memories", "Thank you technoblade for all the fun memories and inspiration", "#Technoblade", "You will be missed, Technoblade"}
function message(...)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(...)
end

task.spawn(function()
    while task.wait(10) do
        message(chattbl[math.random(#chattbl)] , "All")
    end
end)