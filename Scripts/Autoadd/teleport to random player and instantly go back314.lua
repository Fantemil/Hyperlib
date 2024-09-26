local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TeleportService = game:GetService("TeleportService")

local function teleportToRandomPlayer()
    local players = Players:GetPlayers()
    if #players < 2 then
        warn("Not enough players to teleport")
        return
    end

    local randomPlayer
    repeat
        randomPlayer = players[math.random(1, #players)]
    until randomPlayer ~= LocalPlayer

    local originalPosition = LocalPlayer.Character.HumanoidRootPart.CFrame
    LocalPlayer.Character.HumanoidRootPart.CFrame = randomPlayer.Character.HumanoidRootPart.CFrame

    wait(0.1)  -- The time after which we returned to our starting position.

    LocalPlayer.Character.HumanoidRootPart.CFrame = originalPosition
end

teleportToRandomPlayer()
