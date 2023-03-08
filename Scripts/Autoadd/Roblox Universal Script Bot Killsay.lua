while true do
for i, v in next, game.Players:GetChildren() do
if v:IsA("Player") then
local r = math.random(1,3)
if r == 1 then
local A_1 = "You tried your best "..v.Name.." But playing Heavy wont help you"
local a_e = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1,a_e)
elseif r == 2 then 
local A_1 = "If your main is sniper then you should quit "..v.Name
local a_e = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1,a_e)
elseif r == 3 then
local A_1 = "Hey "..v.Name.." i see you cant play Spy try quiiting"
local a_e = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1,a_e)
end

wait(10)
end
end
end