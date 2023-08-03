--Buy everything for 0$
for i,v in pairs(getgc(true)) do 
    if type(v) == 'table' and rawget(v, 'price') then 
        rawset(v, 'price', 0) 
    end
end
--Infinite Levels
game:GetService('RunService').Heartbeat:connect(function()
    game:GetService("ReplicatedStorage").ServerEvents.LoseRound:FireServer(math.huge)
end)
