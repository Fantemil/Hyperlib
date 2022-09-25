 local c = require(game.ReplicatedStorage.Config)
for i,v in pairs(c) do
    if type(v) == "table" then
        for i,v in pairs(v) do
            if v.placeCooldown then
                v.placeCooldown = 0
            end
        end
    end
end