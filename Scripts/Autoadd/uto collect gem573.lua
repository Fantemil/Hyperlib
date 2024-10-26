local gemNames = {"Diamond", "Emerald", "Ruby", "Sapphire"} -- add new gem name if game update new(check name by DEX in workplace

local function isGem(part)
    for _, gemName in ipairs(gemNames) do
        if part.Name == gemName then
            return true
        end
    end
    return false
end

local function moveGemToPlayer(gem, player)
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local playerPosition = player.Character.HumanoidRootPart.Position
        gem.Position = playerPosition
    end
end

while true do
    for _, gem in ipairs(game.Workspace:GetChildren()) do
        if isGem(gem) then
            for _, player in ipairs(game.Players:GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local playerPosition = player.Character.HumanoidRootPart.Position
                    local distance = (gem.Position - playerPosition).Magnitude
                    moveGemToPlayer(gem, player)
                end
            end
        end
    end
    wait(1) -- change there if lag
end