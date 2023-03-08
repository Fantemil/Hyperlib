getgenv().farm = true
while getgenv().farm == true do
task.wait(2)
for i = 1, 2500 do
task.spawn(function()
local A_1 =
{
    [1] =
{
    [1] = "",
    [2] = "skillsControl",
    [3] = "Mera",
    [4] = "B",
    [5] = "Hold",
    [6] = Vector3.new(0,0,0)
}
}
local Event = game:GetService("ReplicatedStorage").RemoteEvent
Event:FireServer(A_1)
end)
end
end