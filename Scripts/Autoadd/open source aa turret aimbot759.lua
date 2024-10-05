local function predictenemyposition(player, projectilespeed)
    local closestenemy = nil
    local closestdistance = math.huge
    local enemies = game.Players:GetPlayers()

    for _, enemy in ipairs(enemies) do
        if enemy ~= player and enemy.Team ~= player.Team then
            if enemy.Character and enemy.Character:FindFirstChild("Humanoid") and enemy.Character:FindFirstChild("HumanoidRootPart") then
                local enemyposition = enemy.Character.HumanoidRootPart.Position
                local distance = (player.Character.HumanoidRootPart.Position - enemyposition).magnitude

                if distance < closestdistance then
                    closestdistance = distance
                    closestenemy = enemy
                end
            end
        end
    end

    if closestenemy and closestdistance <= 2400 then
        local enemyvelocity = closestenemy.Character.HumanoidRootPart.Velocity
        local enemyposition = closestenemy.Character.HumanoidRootPart.Position

        local timetoHit = closestdistance / projectilespeed
        local predictedposition = enemyposition + enemyvelocity * timetoHit
        return predictedposition, enemyvelocity, closestenemy
    end

    return nil
end

local function createpathindicator(startposition, velocity, projectilespeed, enemy)
    local pathlength = 5
    local timeinterval = 0.05
    local currentposition = startposition
    local indicators = {}

    for i = 1, pathlength do
        local predictedposition = currentposition + velocity * (i * timeinterval)

        local indicator = Instance.new("Part")
        indicator.Size = Vector3.new(1, 1, 1)
        indicator.Position = predictedposition
        indicator.Anchored = true
        indicator.CanCollide = false
        indicator.Transparency = 0.5
        indicator.BrickColor = BrickColor.new("Bright blue")
        indicator.Material = Enum.Material.Neon
        indicator.Parent = game.Workspace

        table.insert(indicators, indicator)
        game:GetService("Debris"):AddItem(indicator, 3)

        currentposition = predictedposition
    end

    task.delay(timeinterval * pathlength + 0.5, function()
        if enemy and enemy.Character and enemy.Character:FindFirstChild("HumanoidRootPart") then
            local actualposition = enemy.Character.HumanoidRootPart.Position
            local distancethreshold = 5

            for _, ind in ipairs(indicators) do
                local distance = (actualposition - ind.Position).magnitude
                if distance > distancethreshold then
                    ind.BrickColor = BrickColor.new("Bright yellow")
                else
                    ind.BrickColor = BrickColor.new("Bright green")
                end
            end
        end
    end)
end

local function updatepredictedzoneindicator(redball, predictedposition)
    if not redball then
        redball = Instance.new("Part")
        redball.Size = Vector3.new(2, 2, 2)
        redball.Anchored = true
        redball.CanCollide = false
        redball.Transparency = 0.5
        redball.BrickColor = BrickColor.new("Bright red")
        redball.Material = Enum.Material.Neon
        redball.Parent = game.Workspace
    end
    redball.Position = predictedposition
    return redball
end

local function aimandshoot(player)
    local projectilespeed = 899
    local redball

    while player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 do
        local predictedaimposition, enemyvelocity, enemy = predictenemyposition(player, projectilespeed)

        if predictedaimposition then
            local args = {
                [1] = "aim",
                [2] = {
                    [1] = predictedaimposition
                }
            }
            game:GetService("ReplicatedStorage").Event:FireServer(unpack(args))

            createpathindicator(predictedaimposition, enemyvelocity, projectilespeed, enemy)
            redball = updatepredictedzoneindicator(redball, predictedaimposition)

            local shootargs = {
                [1] = "shoot",
                [2] = {
                    [1] = true
                }
            }
            game:GetService("ReplicatedStorage").Event:FireServer(unpack(shootargs))
        else
            print("No enemies found within 2400 studs.")
            
            local shootargs = {
                [1] = "shoot",
                [2] = {
                    [1] = false
                }
            }
            game:GetService("ReplicatedStorage").Event:FireServer(unpack(shootargs))
            
            if redball then
                redball.Position = Vector3.new(0, -100, 0)
            end
        end
        
        task.wait(0.05)
    end
end

local player = game.Players.LocalPlayer

local function oncharacteradded(character)
    task.wait(10)
    aimandshoot(player)
end

player.CharacterAdded:Connect(oncharacteradded)

if player.Character then
    oncharacteradded(player.Character)
end
