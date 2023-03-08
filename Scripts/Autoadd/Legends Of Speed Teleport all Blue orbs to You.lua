while true do
 wait (0.1)
local A_1 = "collectOrb"
local A_2 = "Blue Orb"
local A_3 = "City"
local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
Event:FireServer(A_1, A_2, A_3)
end