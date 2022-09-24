_G.farm = true -- false for off
while _G.farm do
task.wait()
local A_1 = "Throw"
local A_2 = 100
local Event = game:GetService("ReplicatedStorage").Remote.RemoteFunction
Event:InvokeServer(A_1, A_2)
task.wait()
local A_1 = "InterruptKick"
local Event = game:GetService("ReplicatedStorage").Remote.RemoteEvent
Event:FireServer(A_1)
end