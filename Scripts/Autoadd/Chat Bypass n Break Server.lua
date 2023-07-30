-- Text bypass (you can send any text, swearing etc.)

local message = 'shit'
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, 'XboxChannel')


-- Fun loop that makes whole server restart their characters and theyre stuck at spawn lol (breaks server)

local message = ' Fuck this game '
local rndm = math.random

for _ = 1, 10 do
    task.spawn(function()
        while task.wait() do
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(rndm(10000, 99999) .. message .. rndm(10000, 99999), 'XboxChannel')
        end
    end)
    task.wait()
end