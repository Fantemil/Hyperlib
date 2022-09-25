while wait() do
local A_1 = 50
local A_2 = "Punch"
local Event = game:GetService("ReplicatedStorage").Combat
Event:FireServer(A_1, A_2)
end