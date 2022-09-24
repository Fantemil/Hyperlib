while wait() do
local A_1 =
{
   [1] = "taunt",
   [2] = true
}
local Event = game:GetService("ReplicatedStorage").Events.ME
Event:FireServer(A_1)
task.wait()
local A_1 = "Taunt"
local Event = game:GetService("ReplicatedStorage").Events.DoVoice
Event:FireServer(A_1)
task.wait()
local A_1 =
{
   [1] = "usedupfalse"
}
local Event = game:GetService("ReplicatedStorage").Events.ME
Event:FireServer(A_1)
task.wait()
local A_1 =
{
   [1] = "anger"
}
local Event = game:GetService("ReplicatedStorage").Events.ME
Event:FireServer(A_1)
end