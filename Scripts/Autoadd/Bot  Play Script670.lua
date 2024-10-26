local piggy = script.Parent -- Reference to PiggyBot model
local humanoid = piggy:WaitForChild("Humanoid")
local players = game:GetService("Players")
local targetPlayer = nil -- Variable to store the current target player

function findNearestPlayer()
    local nearestPlayer = nil
    local nearestDistance = math.huge -- Start with a very high number

    for _, player in pairs(players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (piggy.PrimaryPart.Position - player.Character.HumanoidRootPart.Position).magnitude
            if distance < nearestDistance and player.Team.Name ~= "Piggies" then -- Exclude players on the Piggies team
                nearestDistance = distance
                nearestPlayer = player
            end
        end
    end

    return nearestPlayer
end

function chasePlayer()
    while true do
        targetPlayer = findNearestPlayer() -- Find nearest player
        if targetPlayer and targetPlayer.Character then
            local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            
            humanoid:MoveTo(targetPosition) -- Move towards the target player
        end

        wait(1) -- Wait for 1 second before checking again
    end
end

chasePlayer() -- Start chasing players when the game begins
