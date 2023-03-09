local money = 9e9 --Change the number of money you want

local A_1 = "Sanctioned"
local A_2 = -money
local A_3 = "0"
local A_4 =
{
}
local Event = game:GetService("ReplicatedStorage").RemoteEvent
Event:FireServer(A_1, A_2, A_3, A_4)