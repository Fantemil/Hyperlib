local r = require(game.ReplicatedStorage.INDEXER.ToolsInfo)

for i,v in pairs(r) do
    for i,v1 in pairs(v) do
        if i == "Z" or i == "X" or i == "C" or i == "V" or i == "B" then
            v1.cool = 0
        end
    end
end