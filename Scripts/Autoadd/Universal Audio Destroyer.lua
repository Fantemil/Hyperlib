local duration = 999999 -- integer only, no decimals
if game:GetService("SoundService").RespectFilteringEnabled then return end

local sounds = {}

for i,v in pairs(Game:GetDescendants()) do
    if v:IsA("Sound")  then
        table.insert(sounds,v)
    end
end


local con = Game.DescendantAdded:Connect(function(v)
    if v:IsA("Sound") then
        table.insert(sounds,v)
    end
end)
wait(.1)
local start = math.floor(tick())
repeat
    for i,v in pairs(sounds) do
        v:Play()
        v.TimePosition = math.random(0,v.TimeLength * 1000)/1000
        task.wait()
    end
until math.floor(tick()) == start + duration
con:Disconnect()

for i,v in pairs(sounds) do
    v:Stop()
end