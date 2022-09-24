repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

game:GetService("RunService").Heartbeat:Connect(function()
    task.spawn(function()
        for i = 1, 100 do
            LocalPlayer.Backpack.SwimScript.IceWalk.RemoteEvent:FireServer(game.Players.LocalPlayer.Character, 1)
        end
    end)
end)