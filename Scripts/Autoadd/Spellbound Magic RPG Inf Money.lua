while wait() do
for i =1,10 do
local A_1 =
{
[1] = "XP",
[2] = 10800
}
local A_2 = "FreeTier24"
local Event = game:GetService("ReplicatedStorage").Events.SeasonGiveReward
Event:FireServer(A_1, A_2)
task.wait()
local A_1 =
{
[1] = "Coins",
[2] = 10800
}
local A_2 = "FreeTier24"
local Event = game:GetService("ReplicatedStorage").Events.SeasonGiveReward
Event:FireServer(A_1, A_2)
end
end