while task.wait(10) do

local A_1 = "Test"
local A_2 = "System"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
end

--or
--This Script Its Patched Dont Use it

while task.wait() do
local A_1 = "playerhaswokenup"
local Event = game:GetService("ReplicatedStorage").Events.RemoteEvent
Event:FireServer(A_1)
end