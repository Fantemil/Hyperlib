while wait() do
local args = {
    [1] = "diamond3"
}

game:GetService("ReplicatedStorage").Remote.Event.Spin:FindFirstChild("[C-S]TryDiamondSpin"):FireServer(unpack(args))
end