game:GetService("RunService").Heartbeat:Connect(function()
local args = {
        [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position,
        [2] = 4,
        [3] = 1,
        [4] = 0,
        [5] = 1
    }
game:GetService("ReplicatedStorage"):WaitForChild("PunchRemote"):FireServer(unpack(args))
end)