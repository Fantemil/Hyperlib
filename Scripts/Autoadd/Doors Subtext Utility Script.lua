local function text(Text)

firesignal(game.ReplicatedStorage.EntityInfo.Caption.OnClientEvent, Text)
end

text("Input text here.")