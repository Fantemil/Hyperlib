--[[
This script will automatically correct anyone who says 'hack' or 'hacker' or any other variation with 'exploit' or 'exploiter'
Script was made for a user on v3rmillion
Written by Amiriki
]]

repeat task.wait() until game:IsLoaded()
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local ChatRemote = ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
local Players = game:GetService('Players')
function onChatted(msg)
    if msg:lower():find('hack') then
        task.wait(math.random(0.5, 1.5))
        ChatRemote:FireServer(msg:lower():gsub('hack', 'exploit')..'*', "All")
    end
end

for i, plr in pairs(Players:GetPlayers()) do
    plr.Chatted:Connect(onChatted)
end

Players.PlayerAdded:Connect(function(plr)
    plr.Chatted:Connect(onChatted)
end)