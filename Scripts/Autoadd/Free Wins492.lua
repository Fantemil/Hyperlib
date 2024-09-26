local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
while not player do
    Players.PlayerAdded:Wait()
    player = Players.LocalPlayer
end

local eventsFolder = ReplicatedStorage:WaitForChild("Events")
local checkWordEvent = eventsFolder:WaitForChild("CheckWordEvent")

local currentWordObject = player:WaitForChild("Statistics"):WaitForChild("Game"):WaitForChild("CurrentWord")

local function fireCheckWordEvent()
    local currentWord = currentWordObject.Value
    local args = {
        [1] = currentWord
    }
    checkWordEvent:FireServer(unpack(args))
end

currentWordObject.Changed:Connect(fireCheckWordEvent)

fireCheckWordEvent()