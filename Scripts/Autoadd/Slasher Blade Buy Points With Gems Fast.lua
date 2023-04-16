 for i = 1,500 do
task.spawn(function()
local args = {
    [1] = "GemBuyUpPoints",
    [2] = 5416
}

game:GetService("ReplicatedStorage").Remote.Event.Up:FindFirstChild("[C-S]TryBuyPoints"):FireServer(unpack(args))
end)
end