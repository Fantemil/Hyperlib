local words = {
    'ur bad',
    'Dont care',
    'Quit the game',
    'XD ',
    'sad',
    'I would quit if i had that aim',
'Log already sonny boy',
    'how did u fail to get me',
}

local player = game.Players.LocalPlayer
local keybind = 'z'

local event = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

player:GetMouse().KeyDown:connect(function(key)
    if key == keybind then
        event:FireServer(words[math.random(#words)], "All")
    end
end)