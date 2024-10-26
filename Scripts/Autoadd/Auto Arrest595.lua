local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

local function teleportToPlayer(targetPlayer)
    if targetPlayer.Character then
        local targetHRP = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
        if targetHRP then
            hrp.CFrame = targetHRP.CFrame
        end
    end
end

local function checkPlayers()
    for _, targetPlayer in pairs(game.Players:GetPlayers()) do
        if targetPlayer ~= player and targetPlayer.Character then
            local torso = targetPlayer.Character:FindFirstChild("Torso") or targetPlayer.Character:FindFirstChild("UpperTorso")
            if torso and torso:FindFirstChild("IllegalGui") then
                local playerPosition = hrp.Position
                local targetPosition = torso.Position
                local distance = (playerPosition - targetPosition).Magnitude
                if distance > 10 then
                    teleportToPlayer(targetPlayer)
                end
            end
        end
    end
end

while true do
    checkPlayers()
    wait(0.1)
end
