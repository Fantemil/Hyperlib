getgenv().Penis = true
while getgenv().Penis and task.wait(0) do
    pcall(function()
local args = {
    [1] = "CheckAdd",
    [2] = 14,
    [3] = 1,
    [4] = 1
}

game:GetService("ReplicatedStorage").RemoteEvents.Star_RemoteEvent:FireServer(unpack(args))

 end)
end