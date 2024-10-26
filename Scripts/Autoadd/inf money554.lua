local replicatedStorage = game:GetService("ReplicatedStorage")
local groupRewardEvent = replicatedStorage:WaitForChild("Events"):WaitForChild("GroupReward")

local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

while true do
    local character = localPlayer and localPlayer.Character
    local bodyColors = character and character:FindFirstChild("Body Colors")

    if bodyColors then
        local args = { bodyColors }
        groupRewardEvent:FireServer(unpack(args))
    else
        warn("patched")
    end

    wait(0)
end