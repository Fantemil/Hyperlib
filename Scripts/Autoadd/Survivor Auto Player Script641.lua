-- Script by Roblox Executor Script Maker

game.Players.LocalPlayer.Character.Humanoid.autoJump = true

local players = game:GetService("Players")
local player = players.LocalPlayer
local mouse = player:GetMouse()

function kill()
    local players = game:GetService("Players"):GetPlayers()
    
    for i = 1, #players do
        local p = players[i]
        if p.Character then
            if p.Character:FindFirstChild("Head") then
                local head = p.Character:FindFirstChild("Head")
                if p.Character:FindFirstChild("Humanoid") then
                    local humanoid = p.Character:FindFirstChild("Humanoid")
                    
                    if p ~= player and humanoid.Health > 0 then
                        firetouchinterest(head, head, 0)
                        wait(0.1)
                        firetouchinterest(head, head, 1)
                    end
                end
            end
        end
    end
end

function findNearbyPlayers()
    local players = game:GetService("Players"):GetPlayers()
    
    for i = 1, #players do
        local p = players[i]
        if p.Character then
            if p.Character:FindFirstChild("Head") then
                local head = p.Character:FindFirstChild("Head")
                local distance = (player.Character.HumanoidRootPart.Position - head.Position).Magnitude
                
                if p ~= player and distance < 20 then
                    return p
                end
            end
        end
    end
end

function killNearbyPlayers()
    local player = findNearbyPlayers()
    
    if player then
        local head = player.Character:FindFirstChild("Head")
        if head then
            firetouchinterest(head, head, 0)
            wait(0.1)
            firetouchinterest(head, head, 1)
        end
    end
end

while wait() do
    killNearbyPlayers()
    kill()
end
