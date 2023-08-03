
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Words = HttpService:JSONDecode(game:HttpGet("https://raw.github.com/0zBug/Misc/main/Data/Words/Words.json"))

local Event = ReplicatedStorage.SendChat

for x = 1, #Words, 10 do
    task.spawn(function()
        Sentence = {}
        
        for i = 0, 9 do
            table.insert(Sentence, Words[x + i])
        end

        Event:FireServer(table.concat(Sentence, " "), false, Color3.new())
    end)
end
