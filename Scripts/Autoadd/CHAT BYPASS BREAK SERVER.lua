local message = '  '
local rndm = math.random

for _ = 1, 5 do -- Reduced number of iterations
    task.spawn(function()
        while task.wait() do
            pcall(function()
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(rndm(10000, 99999) .. message .. rndm(10000, 99999), 'XboxChannel')
            end)
        end
    end)
    task.delay(0.1) -- Added delay between each task spawn
end
