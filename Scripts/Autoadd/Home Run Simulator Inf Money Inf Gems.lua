getgenv().oopen =true
while getgenv().oopen == true do
task.wait(0.1)
for i = 1, 3 do
task.spawn(function()
local A_1 = 100000
local Event = game:GetService("ReplicatedStorage").RF["Purchase_Coins"]
Event:InvokeServer(A_1)
task.wait()
local A_1 = "Parking Lot"
local Event = game:GetService("ReplicatedStorage").RF["Open_Crate"]
Event:InvokeServer(A_1)
end)
end
end