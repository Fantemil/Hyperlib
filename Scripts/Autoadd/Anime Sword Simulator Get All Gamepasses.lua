local r = require(game.ReplicatedStorage:WaitForChild("Resources"))
local g = {31927159, 31927056, 31953869, 31953619, 31953748, 31953706, 31953662, 31926918, 31953579, 38916043, 31953543, 31431593, 31404754, 31404444}

for i,v in ipairs(g) do
table.insert(r.StatService.Get().Gamepasses, v)
end