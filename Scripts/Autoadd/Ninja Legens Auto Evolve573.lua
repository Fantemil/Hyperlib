getgenv().farmer = true; --If you stop the script just change "true" to "false" than  for make it works again just change "false" to "true"
    while wait() do
        if getgenv().farmer == true then
game.ReplicatedStorage.rEvents.autoEvolveRemote:InvokeServer("autoEvolvePets")
        end
    end