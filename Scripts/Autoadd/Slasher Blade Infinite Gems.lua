for i = 1, 500 do
task.spawn(function()
local args = {
    [1] = "10001"
}
game:GetService("ReplicatedStorage").Remote.Event.Dungeon:FindFirstChild("[C-S]TryGetDungeonReward"):FireServer(unpack(args))

end)
end