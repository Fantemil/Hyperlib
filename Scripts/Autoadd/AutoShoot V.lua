--[[]


 ________  __       __                                       ______            
/        |/  |  _  /  |                                     /      \           
$$$$$$$$/ $$ | / \ $$ |  ______    ______    ______        /$$$$$$  |  ______  
    /$$/  $$ |/$  \$$ | /      \  /      \  /      \       $$ |  $$/  /      \ 
   /$$/   $$ /$$$  $$ | $$$$$$  |/$$$$$$  |/$$$$$$  |      $$ |      /$$$$$$  |
  /$$/    $$ $$/$$ $$ | /    $$ |$$ |  $$/ $$    $$ |      $$ |   __ $$ |  $$ |
 /$$/____ $$$$/  $$$$ |/$$$$$$$ |$$ |      $$$$$$$$/       $$ \__/  |$$ \__$$ |
/$$      |$$$/    $$$ |$$    $$ |$$ |      $$       |      $$    $$/ $$    $$/ 
$$$$$$$$/ $$/      $$/  $$$$$$$/ $$/        $$$$$$$/        $$$$$$/   $$$$$$/  
                                                                               
                                                                               
                                                                               

- Made By ZWare Community: https://www.youtube.com/channel/UCC7hObtOup7CWzUte6VyOlQ
--]]
-- AutoShoot
--ignore
local guns = {
    {Name = "LaserGun", Connectivity = getgenv().LaserGunConnectivity},
    {Name = "RayGun", Connectivity = getgenv().RayGunConnectivity},
    {Name = "NailGun", Connectivity = getgenv().NailGunConnectivity},
    {Name = "RocketLauncher", Connectivity = getgenv().RocketLauncherConnectivity},
    {Name = "ParaGun", Connectivity = getgenv().ParaGunConnectivity},
    {Name = "AK47Gun", Connectivity = getgenv().AK47GunConnectivity},
    {Name = "SixShooterGun", Connectivity = getgenv().SixShooterGunConnectivity},
    {Name = "SniperGun", Connectivity = getgenv().SniperGunConnectivity},
    {Name = "ShotGun", Connectivity = getgenv().ShotGunConnectivity}
}
-- TOGGLES --
getgenv().LaserGunConnectivity = true -- set these ones to false if you wanna ignore one of these guns
getgenv().RayGunConnectivity = true
getgenv().NailGunConnectivity = true
getgenv().RocketLauncherConnectivity = true
getgenv().ParaGunConnectivity = true
getgenv().AK47GunConnectivity = true
getgenv().SixShooterGunConnectivity = true
getgenv().SniperGunConnectivity = true
getgenv().ShotGunConnectivity = true

--END OF TOGGLES--


-- Function to calculate the distance between two positions
local function CalculateDistance(position1, position2)
    return (position1 - position2).Magnitude
end

-- Function to handle shooting at the nearest enemy
local function ShootAtNearestEnemy(remote, enemy)
    -- Create the arguments for the remote
    local args = {
        [1] = enemy.HumanoidRootPart.Position
    }

    -- Fire the remote for the nearest enemy
    remote:FireServer(unpack(args))
end

spawn(function()
    if LaserGunConnectivity == true then
        local remote = game:GetService("Players").LocalPlayer.Character.DebugGun.MouseEvent

        while true do
            -- Search for the "Enemies" folder in the workspace
            local enemiesFolder = game.Workspace:FindFirstChild("Enemies")

            -- Check if the "Enemies" folder exists
            if enemiesFolder and enemiesFolder:IsA("Folder") then
                -- Get the player's character
                local playerCharacter = game.Players.LocalPlayer.Character

                -- Sort enemies based on distance to player
                local enemies = enemiesFolder:GetChildren()
                table.sort(enemies, function(a, b)
                    local distanceToA = CalculateDistance(a.HumanoidRootPart.Position, playerCharacter.HumanoidRootPart.Position)
                    local distanceToB = CalculateDistance(b.HumanoidRootPart.Position, playerCharacter.HumanoidRootPart.Position)
                    return distanceToA < distanceToB
                end)

                -- Shoot at the nearest enemy
                if #enemies > 0 then
                    local nearestEnemy = enemies[1]
                    local success, error = pcall(ShootAtNearestEnemy, remote, nearestEnemy)
                    if not success then
                        warn("Error occurred while shooting at nearest enemy:", error)
                    end
                end
            end

            wait(0.1) -- Adjust the interval as desired
        end
    end
end)

spawn(function()
    if RayGunConnectivity == true then
        local remote = game:GetService("Players").LocalPlayer.Character.Raygun.MouseEvent

        while true do
            -- Search for the "Enemies" folder in the workspace
            local enemiesFolder = game.Workspace:FindFirstChild("Enemies")

            -- Check if the "Enemies" folder exists
            if enemiesFolder and enemiesFolder:IsA("Folder") then
                -- Get the player's character
                local playerCharacter = game.Players.LocalPlayer.Character

                -- Sort enemies based on distance to player
                local enemies = enemiesFolder:GetChildren()
                table.sort(enemies, function(a, b)
                    local distanceToA = CalculateDistance(a.HumanoidRootPart.Position, playerCharacter.HumanoidRootPart.Position)
                    local distanceToB = CalculateDistance(b.HumanoidRootPart.Position, playerCharacter.HumanoidRootPart.Position)
                    return distanceToA < distanceToB
                end)

                -- Shoot at the nearest enemy
                if #enemies > 0 then
                    local nearestEnemy = enemies[1]
                    local success, error = pcall(ShootAtNearestEnemy, remote, nearestEnemy)
                    if not success then
                        warn("Error occurred while shooting at nearest enemy:", error)
                    end
                end
            end

            wait(0.1) -- Adjust the interval as desired
        end
    end
end)

spawn(function()
    if NailGunConnectivity == true then 
        -- Function to calculate the distance between two positions
        local function CalculateDistance(position1, position2)
            return (position1 - position2).Magnitude
        end

        -- Continuously listen for changes in the "Enemies" folder
        coroutine.wrap(function()
            while true do
                -- Search for the "Enemies" folder in the workspace
                local enemiesFolder = workspace:FindFirstChild("Enemies")

                -- Check if the "Enemies" folder exists
                if enemiesFolder and enemiesFolder:IsA("Folder") then
                    -- Get the remote
                    local remote = game:GetService("Players").LocalPlayer.Character.Nailgun.MouseEvent

                    -- Check if the remote exists
                    if remote then
                        -- Get the player's character
                        local playerCharacter = game.Players.LocalPlayer.Character

                        -- Sort enemies based on distance to player
                        local enemies = enemiesFolder:GetChildren()
                        table.sort(enemies, function(a, b)
                            local distanceToA = CalculateDistance(a.HumanoidRootPart.Position, playerCharacter.HumanoidRootPart.Position)
                            local distanceToB = CalculateDistance(b.HumanoidRootPart.Position, playerCharacter.HumanoidRootPart.Position)
                            return distanceToA < distanceToB
                        end)

                        -- Shoot at the nearest enemy
                        if #enemies > 0 then
                            local nearestEnemy = enemies[1]
                            local args = {
                                [1] = nearestEnemy.HumanoidRootPart.Position
                            }
                            remote:FireServer(unpack(args))
                        end
                    end
                end

                -- Wait for a short interval before checking again
                wait(0.1) -- Adjust the interval as desired
            end
        end)()

    end
end)

spawn(function()
    if RocketLauncherConnectivity == true then
        -- Function to calculate the distance between two positions
        local function CalculateDistance(position1, position2)
            return (position1 - position2).Magnitude
        end

        -- Function to shoot at the nearest enemy
        local function ShootAtNearestEnemy(remote, enemies)
            -- Get the player's character
            local playerCharacter = game.Players.LocalPlayer.Character

            -- Sort enemies based on distance to player
            table.sort(enemies, function(a, b)
                local distanceToA = CalculateDistance(a.HumanoidRootPart.Position, playerCharacter.HumanoidRootPart.Position)
                local distanceToB = CalculateDistance(b.HumanoidRootPart.Position, playerCharacter.HumanoidRootPart.Position)
                return distanceToA < distanceToB
            end)

            -- Check if there is a nearest enemy
            if #enemies > 0 then
                -- Shoot at the nearest enemy
                local nearestEnemy = enemies[1]
                local args = {
                    [1] = nearestEnemy.HumanoidRootPart.Position
                }
                remote:FireServer(unpack(args))
            end
        end

        -- Continuously listen for changes in the "Enemies" folder
        coroutine.wrap(function()
            while true do
                -- Search for the "Enemies" folder in the workspace
                local enemiesFolder = workspace:FindFirstChild("Enemies")

                -- Check if the "Enemies" folder exists
                if enemiesFolder and enemiesFolder:IsA("Folder") then
                    -- Get the remote
                    local remote = game:GetService("Players").LocalPlayer.Character.Rocket.MouseEvent

                    -- Check if the remote exists
                    if remote then
                        -- Get the enemies in the folder
                        local enemies = enemiesFolder:GetChildren()

                        -- Shoot at the nearest enemy
                        ShootAtNearestEnemy(remote, enemies)
                    end
                end

                -- Wait for a short interval before checking again
                wait(0.1) -- Adjust the interval as desired
            end
        end)()
    end
end)

spawn(function()
    if ParaGunConnectivity == true then 
        -- Function to shoot at an enemy
        local function ShootAtEnemy(remote, enemy)
            local args = {
                [1] = enemy.HumanoidRootPart.Position
            }

            remote:FireServer(unpack(args))
        end

        -- Continuously listen for changes in the "Enemies" folder
        coroutine.wrap(function()
            while true do
                -- Search for the "Enemies" folder in the workspace
                local enemiesFolder = workspace:FindFirstChild("Enemies")

                -- Check if the "Enemies" folder exists
                if enemiesFolder and enemiesFolder:IsA("Folder") then
                    -- Get the remote
                    local remote = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Anti-Paragun").MouseEvent

                    -- Check if the remote exists
                    if remote then
                        -- Iterate through the enemies in the folder
                        for _, enemy in ipairs(enemiesFolder:GetChildren()) do
                            -- Check if the enemy's name contains "Corrupt"
                            if string.find(enemy.Name:lower(), "corrupt") then
                                -- Shoot at the enemy
                                ShootAtEnemy(remote, enemy)
                                -- Break the loop to only shoot at the first enemy found
                                break
                            end
                        end
                    end
                end

                -- Wait for a short interval before checking again
                wait(0.1) -- Adjust the interval as desired
            end
        end)()
    end
end)

spawn(function()
    if AK47GunConnectivity == true then 
        -- Function to calculate the distance between two positions
local function CalculateDistance(position1, position2)
    return (position1 - position2).Magnitude
end

-- Function to shoot at an enemy
local function ShootAtEnemy(remote, enemy)
    local args = {
        [1] = enemy.HumanoidRootPart.Position
    }

    remote:FireServer(unpack(args))
end

-- Continuously listen for changes in the "Enemies" folder
coroutine.wrap(function()
    while true do
        -- Search for the "Enemies" folder in the workspace
        local enemiesFolder = workspace:FindFirstChild("Enemies")

        -- Check if the "Enemies" folder exists
        if enemiesFolder and enemiesFolder:IsA("Folder") then
            -- Get the remote
            local remote = game:GetService("Players").LocalPlayer.Character:FindFirstChild("AK-47").MouseEvent

            -- Check if the remote exists
            if remote then
                -- Get the player's character
                local playerCharacter = game.Players.LocalPlayer.Character

                -- Get the enemies in the folder
                local enemies = enemiesFolder:GetChildren()

                -- Sort enemies based on distance to player
                table.sort(enemies, function(a, b)
                    local distanceToA = CalculateDistance(a.HumanoidRootPart.Position, playerCharacter.HumanoidRootPart.Position)
                    local distanceToB = CalculateDistance(b.HumanoidRootPart.Position, playerCharacter.HumanoidRootPart.Position)
                    return distanceToA < distanceToB
                end)

                -- Shoot at the nearest enemy
                if #enemies > 0 then
                    local nearestEnemy = enemies[1]
                    ShootAtEnemy(remote, nearestEnemy)
                end
            end
        end

        -- Wait for a short interval before checking again
        wait(0.1) -- Adjust the interval as desired
    end
end)()

    end
end)


spawn(function()
    -- Function to calculate the distance between two positions
local function CalculateDistance(position1, position2)
    return (position1 - position2).Magnitude
end

-- Function to find the nearest enemy from the "Enemies" folder
local function FindNearestEnemy()
    local enemiesFolder = workspace:FindFirstChild("Enemies")

    if enemiesFolder and enemiesFolder:IsA("Folder") then
        local playerCharacter = game.Players.LocalPlayer.Character
        local playerPosition = playerCharacter.HumanoidRootPart.Position
        local enemies = enemiesFolder:GetChildren()

        -- Sort enemies based on distance to player
        table.sort(enemies, function(a, b)
            local distanceToA = CalculateDistance(playerPosition, a.PrimaryPart.Position)
            local distanceToB = CalculateDistance(playerPosition, b.PrimaryPart.Position)
            return distanceToA < distanceToB
        end)

        return enemies[1] -- Return the nearest enemy
    end

    return nil
end

-- Function to fire the remote with the updated arguments
local function FireRemoteWithArguments(remote, args)
    remote:FireServer(unpack(args))
end

-- Coroutine wrap for continuous execution of the script
coroutine.wrap(function()
    while true do
        -- Get the remote
        local remote = game.Players.LocalPlayer:WaitForChild("MouseEvent")

        -- Find the nearest enemy and update the arguments
        local nearestEnemy = FindNearestEnemy()
        if nearestEnemy then
            local enemyPosition = nearestEnemy.PrimaryPart.Position
            local args = {
                [1] = enemyPosition
            }

            -- Fire the remote with the updated arguments
            pcall(FireRemoteWithArguments, remote, args)
        else
            warn("No enemies found in the Enemies folder.")
        end

        -- Adjust the interval as desired
        wait(0.1)
    end
end)()

end)

spawn(function()
    if SixShooterGunConnectivity == true then 
        -- Function to calculate the distance between two positions
        local function CalculateDistance(position1, position2)
            return (position1 - position2).Magnitude
        end

        -- Function to find the nearest enemy from the "Enemies" folder
        local function FindNearestEnemy()
            local enemiesFolder = workspace:FindFirstChild("Enemies")

            if enemiesFolder and enemiesFolder:IsA("Folder") then
                local playerCharacter = game.Players.LocalPlayer.Character
                local playerPosition = playerCharacter.HumanoidRootPart.Position
                local enemies = enemiesFolder:GetChildren()

                -- Sort enemies based on distance to player
                table.sort(enemies, function(a, b)
                    local distanceToA = CalculateDistance(playerPosition, a.PrimaryPart.Position)
                    local distanceToB = CalculateDistance(playerPosition, b.PrimaryPart.Position)
                    return distanceToA < distanceToB
                end)

                return enemies[1] -- Return the nearest enemy
            end

            return nil
        end

        -- Function to fire the remote with the updated arguments
        local function FireRemoteWithArguments(remote, args)
            remote:FireServer(unpack(args))
        end

        -- Coroutine wrap for continuous execution of the script
        coroutine.wrap(function()
            while true do
                -- Get the remote
                local remote = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Six-Shooter").MouseEvent

                -- Find the nearest enemy and update the arguments
                local nearestEnemy = FindNearestEnemy()
                if nearestEnemy then
                    local enemyPosition = nearestEnemy.PrimaryPart.Position
                    local args = {
                        [1] = enemyPosition
                    }

                    -- Fire the remote with the updated arguments
                    pcall(FireRemoteWithArguments, remote, args)
                else
                    warn("No enemies found in the Enemies folder.")
                end

                -- Adjust the interval as desired
                wait(0.1)
            end
        end)()

    end
end)

spawn(function()
    if SniperGunConnectivity == true then 
        -- Function to calculate the distance between two positions
        local function CalculateDistance(position1, position2)
            return (position1 - position2).Magnitude
        end

        -- Function to find the nearest enemy from the "Enemies" folder
        local function FindNearestEnemy()
            local enemiesFolder = workspace:FindFirstChild("Enemies")

            if enemiesFolder and enemiesFolder:IsA("Folder") then
                local playerCharacter = game.Players.LocalPlayer.Character
                local playerPosition = playerCharacter.HumanoidRootPart.Position
                local enemies = enemiesFolder:GetChildren()

                -- Sort enemies based on distance to player
                table.sort(enemies, function(a, b)
                    local distanceToA = CalculateDistance(playerPosition, a.PrimaryPart.Position)
                    local distanceToB = CalculateDistance(playerPosition, b.PrimaryPart.Position)
                    return distanceToA < distanceToB
                end)

                return enemies[1] -- Return the nearest enemy
            end

            return nil
        end

        -- Function to fire the remote with the updated arguments
        local function FireRemoteWithArguments(remote, args)
            remote:FireServer(unpack(args))
        end

        -- Coroutine wrap for continuous execution of the script
        coroutine.wrap(function()
            while true do
                -- Get the remote
                local remote = game:GetService("Players").LocalPlayer.Character.Sniper.MouseEvent

                -- Find the nearest enemy and update the arguments
                local nearestEnemy = FindNearestEnemy()
                if nearestEnemy then
                    local enemyPosition = nearestEnemy.PrimaryPart.Position
                    local args = {
                        [1] = enemyPosition
                    }

                    -- Fire the remote with the updated arguments
                    remote:FireServer(unpack(args))
                else
                    warn("No enemies found in the Enemies folder.")
                end

                -- Adjust the interval as desired
                wait(0.1)
            end
        end)()

    end
end)

spawn(function()
    if ShotGunConnectivity == true then 
        -- Function to calculate the distance between two positions
        local function CalculateDistance(position1, position2)
            return (position1 - position2).Magnitude
        end

        -- Function to find the nearest enemy from the "Enemies" folder
        local function FindNearestEnemy()
            local enemiesFolder = workspace:FindFirstChild("Enemies")

            if enemiesFolder and enemiesFolder:IsA("Folder") then
                local playerCharacter = game.Players.LocalPlayer.Character
                local playerPosition = playerCharacter.HumanoidRootPart.Position
                local enemies = enemiesFolder:GetChildren()

                -- Sort enemies based on distance to player
                table.sort(enemies, function(a, b)
                    local distanceToA = CalculateDistance(playerPosition, a.PrimaryPart.Position)
                    local distanceToB = CalculateDistance(playerPosition, b.PrimaryPart.Position)
                    return distanceToA < distanceToB
                end)

                return enemies[1] -- Return the nearest enemy
            end

            return nil
        end

        -- Function to fire the remote with the updated arguments
        local function FireRemoteWithArguments(remote, args)
            remote:FireServer(unpack(args))
        end

        -- Coroutine wrap for continuous execution of the script
        coroutine.wrap(function()
            while true do
                -- Get the remote
                local remote = game:GetService("Players").LocalPlayer.Character.Shotgun.MouseEvent

                -- Find the nearest enemy and update the arguments
                local nearestEnemy = FindNearestEnemy()
                if nearestEnemy then
                    local enemyPosition = nearestEnemy.PrimaryPart.Position
                    local args = {
                        [1] = enemyPosition
                    }

                    -- Fire the remote with the updated arguments
                    pcall(FireRemoteWithArguments, remote, args)
                else
                    warn("No enemies found in the Enemies folder.")
                end

                -- Adjust the interval as desired
                wait(0.1)
            end
        end)()

    end
end)