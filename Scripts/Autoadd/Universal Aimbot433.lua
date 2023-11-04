-- Created by MrOrmsman

-- Get the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Create a function to aim at a target
local function aimAt(target)
    -- Calculate the direction to the target
    local direction = (target.Position - character.Head.Position).Unit
    
    -- Set the character's look vector to the direction
    character:SetPrimaryPartCFrame(CFrame.new(character.PrimaryPart.Position, character.PrimaryPart.Position + direction))
end

-- Create a loop to continuously aim at the nearest enemy
while true do
    -- Get all the players in the game
    local players = game.Players:GetPlayers()
    
    -- Find the nearest enemy
    local nearestEnemy = nil
    local nearestDistance = math.huge
    
    for _, enemy in ipairs(players) do
        if enemy ~= player then
            local enemyCharacter = enemy.Character
            if enemyCharacter then
                local distance = (enemyCharacter.Head.Position - character.Head.Position).Magnitude
                if distance < nearestDistance then
                    nearestEnemy = enemyCharacter
                    nearestDistance = distance
                end
            end
        end
    end
    
    -- Aim at the nearest enemy if there is one
    if nearestEnemy then
        aimAt(nearestEnemy)
    end
    
    -- Wait for a short period before aiming again
    wait(0.1)
end