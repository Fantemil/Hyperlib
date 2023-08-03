you can edit or add words of you want
local words = {
    'seed',
    'sad',
    'sonned',
    'sonny',
	'clowned',
	'sped',
	'quit',
	'log',
	'dog',
	'ur being farmed',
	'free kill',
	'sit.',
	'skill issue'
}

local player = game.Players.LocalPlayer
local keybind = 'y'

local event = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

player:GetMouse().KeyDown:connect(function(key)
    if key == keybind then
        event:FireServer(words[math.random(#words)], "All")
    end
end)