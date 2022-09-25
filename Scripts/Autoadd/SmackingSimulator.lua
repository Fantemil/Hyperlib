 while wait() do
local A_1 = "Double Jump 10x"
local Event = game:GetService("ReplicatedStorage").Events.ClaimQuest
Event:FireServer(A_1)
wait()
local Event = game:GetService("ReplicatedStorage").Events.DoubleJump
Event:FireServer()
end