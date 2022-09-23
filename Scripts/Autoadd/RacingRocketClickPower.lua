getgenv().Penis = true
while getgenv().Penis and task.wait(0) do
    pcall(function()
local args = {
    [1] = "ClickPower",
    [2] = 20000
}

game:GetService("ReplicatedStorage").RemoteEvents.Rocket_RemoteEvent:FireServer(unpack(args))
 end)
end