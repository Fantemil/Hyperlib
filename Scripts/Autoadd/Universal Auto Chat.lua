-- Settings

local message = "RBX SCRIPT COM insert OP SITE 1#" -- the message
local Tiemlolol = 2 -- the wait time between chats, anything under 2 isnt recommended


-- Script (dont modify)

if _G.AutoSay then _G.AutoSay = false
else _G.AutoSay = true
end
while _G.AutoSay do
 local args = {[1] = message,[2] = "All"}
 game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
 task.wait(tonumber(Tiemlolol))
end