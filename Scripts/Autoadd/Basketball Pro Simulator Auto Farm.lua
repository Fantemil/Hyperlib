getgenv().shoot = true
while getgenv().shoot == true do
task.wait()
local A_1 = "Shoot"
local A_2 = "Green"
local Event = game:GetService("ReplicatedStorage").RF
Event:InvokeServer(A_1, A_2)
task.wait()
local A_1 = "Made"
local Event = game:GetService("ReplicatedStorage").RE
Event:FireServer(A_1)
end