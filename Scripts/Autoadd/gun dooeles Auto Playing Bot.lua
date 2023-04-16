local SETTINGS = {
    Combat = {
        ExtraFirerateDelay = 0.01,  -- time in seconds added to weapon debounce
        PrefireDelay = 0.25,  -- time before enemy is shot
        CrouchOnPrefire = true,  -- on/off crouch during the prefire and shooting
        HeadshotChance = 75,  -- % chance of snapping the crosshair onto the enemy's head

        -- penetration params for different maps
        Penetration = {
            ['SciFi'] = {
                Depth = 2,
                Count = 2,
            },
        
            ['Vicinity'] = {
                Depth = 1.5,
                Count = 1,
            },

            ['Warehouse'] = {
                Depth = .4,
                Count = 1,
            },

            ['Storage'] = {
                Depth = .3,
                Count = 1,
            },

            ['Alleyway'] = {
                Depth = 3.5,
                Count = 2,
            },

            ['Rocky Road'] = {
                Depth = 1,
                Count = 2,
            },
        },
    },

    Movement = {
        CanJump = true,  -- on/off the ability to jump
        JumpFrequency = 60, -- % chance of a jump when jump conditions are met
        ForcedJumpCooldown = 2,  -- forced cooldown for a jump

        Slides = {
            Constant = false,  -- slides constantly
            OnlyWhenEnemyVisible = false,  -- slides when the enemy becomes visible
            OnlyWhenEnemyNotVisible = true  -- slides constantly whenever the enemy is not visible
        },

        SlideDelay = 0,  -- delay before slide after slide conditions are met
        ForcedSlideCooldown = 1,  -- forced cooldown between slides

        PFAgentRadius = 4,  -- default agent width for pathfinding
        PFAgentHeight = 2,  -- default agent height for pathfinding
        PFWaypointSpacing = 20  -- spacing between waypoints to the target
    }
}


-- override default pathfinding data for different maps
local pfDataOverride = {
    ['SciFi'] = {
        AgentRadius = 1,
        AgentHeight = 3,
    },

    ['Vicinity'] = {
        AgentRadius = 1,
        AgentHeight = 7
    },
    ['Warehouse'] = {},
    ['Storage'] = {},
    ['Alleyway'] = {},
    ['Rocky Road'] = {}
}

local Players = game:GetService("Players")
local PathfindingService = game:GetService("PathfindingService")
local RunService = game:GetService("RunService")

local raycastModule = require(game.ReplicatedStorage.GunSystem.Raycast)

local lp = Players.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
local camera = workspace.CurrentCamera
local playBtn = lp.PlayerGui.MainUI.MainMenu.Main.Ranked

local none = function() end
local currentAimPart = 'Head'
local currentMap = 'Warehouse'
local wasVisibleLastFrame = false
local lastShot, lastJump, lastSlide = 0, 0, 0
local lastPrefireDelayStart, lastMovableTick = 0, 0
local beforeStartCounter = 0
local enemy = nil
local currentHumMoveTarget = nil

local utility = {}

local function initGameFunctions()
    local gunModule = require(game.ReplicatedStorage.GunSystem.GunClientAssets.Modules.Gun)
    local charModule = require(game.ReplicatedStorage.GunSystem.GunClientAssets.Modules.Character)

    utility.Fire = gunModule.Fire
    utility.Reload = gunModule.Reload
    utility.GetCurrentWeapon = gunModule.GetCurrentWeapon
    utility.SetSprint = charModule.SetSprint
    utility.Slide = charModule.Slide
    utility.Crouch = charModule.Crouch
    utility.IsRunning = charModule.IsRunning
    utility.IsSliding = charModule.IsSliding
end

local function isEnemyVisible(player)
    if (player.Character == nil or not(player.Character:FindFirstChild('Head') and char:FindFirstChild('Head')) or player.Character.Humanoid.Health <= 0) then
        return false
    end

    local rayParams = RaycastParams.new()
    rayParams.FilterDescendantsInstances = {lp.Character}

    local depth = (SETTINGS.Combat.Penetration[currentMap] and SETTINGS.Combat.Penetration[currentMap].Depth or 1)
    local pens = (SETTINGS.Combat.Penetration[currentMap] and SETTINGS.Combat.Penetration[currentMap].Count or 2)

    local ray = raycastModule.new(rayParams, depth, true, false, pens)
    local result = ray:Raycast(camera.CFrame.Position, (player.Character.Head.Position - camera.CFrame.Position) * 2)

    return (result and result.Instance.Name == 'Handle' and result.Instance.Parent.Name:match('Accessory'))
end

local function isPlayerMovable()
    local s, val = pcall(function()
        return (char and char.PrimaryPart.Anchored == false and hum.WalkSpeed > 0 and hum.Health > 0)
    end)

    return (s and val)
end

local function canPlayerSlide()
    return (tick() - lastSlide >= SETTINGS.Movement.ForcedSlideCooldown and tick() - lastMovableTick >= 1)
end

local function getMapName()
    local max, name = 0, 'Storage'

    for _, map in next, workspace.Map:GetChildren() do
        local dcount = #map:GetDescendants()

        if (dcount > max) then
            max, name = dcount, map.Name
        end
    end

    return name
end

local function getEnemy()
    local current, currentDist = nil, math.huge

    for _, v in next, Players:GetPlayers() do
        if (v.Team == nil or v.Team == lp.Team or v.Character == nil) then continue end
        
        pcall(function()
            local magnitude = (v.Character.PrimaryPart.Position - char.PrimaryPart.Position).Magnitude
            if (magnitude < currentDist) then
                current, currentDist = v, magnitude
            end
        end)
    end

    return current
end

local function getNewPath(targetPos)
    local path = PathfindingService:CreatePath({
        WaypointSpacing = SETTINGS.Movement.PFWaypointSpacing,
        AgentRadius = (pfDataOverride[currentMap] and pfDataOverride[currentMap].AgentRadius) or SETTINGS.Movement.PFAgentRadius,
        AgentHeight = (pfDataOverride[currentMap] and pfDataOverride[currentMap].AgentHeight) or SETTINGS.Movement.PFAgentHeight
    })

local s, err = pcall(function()
path:ComputeAsync(char.PrimaryPart.Position, targetPos)
end)

if (s and path.Status == Enum.PathStatus.Success) then
return path:GetWaypoints()
else
return false, err
end
end

local function moveTo(pos)
    hum:MoveTo(pos)
end

local idx idx = hookmetamethod(game, '__index', function(self, property)
    if (property == 'MoveDirection' and char:FindFirstChild('HumanoidRootPart')) then
        return char.HumanoidRootPart.CFrame.LookVector
    end

    return idx(self, property) 
end)

lp.CharacterAdded:Connect(function(newChar)
    char = newChar
    hum = newChar:WaitForChild('Humanoid')
    beforeStartCounter = 0

    task.delay(1, function()
        currentMap = getMapName()
        utility.SetSprint(true)
    end)
end)

RunService:BindToRenderStep('Main', 1, function()
    enemy = getEnemy()

    if (enemy == nil or lp.Team == nil) then return end

    if (isPlayerMovable() == false) then
        lastMovableTick = tick()
        return
    end

    if (beforeStartCounter < 90) then
        beforeStartCounter += 1
        return
    end

    if (utility.Crouch == nil or utility.SetSprint == nil) then
        return initGameFunctions()
    end

    if (SETTINGS.Movement.Slides.Constant and canPlayerSlide()) then
        lastSlide = tick()
        utility.Slide(true)
    end

    if (enemy.Character and enemy.Character:FindFirstChild(currentAimPart)) then
        camera.CFrame = CFrame.lookAt(camera.CFrame.Position, enemy.Character[currentAimPart].Position)
    end

    if (isEnemyVisible(enemy)) then
        local canFire = true
        local weapon = utility.GetCurrentWeapon()

        if (SETTINGS.Combat.PrefireDelay > 0) then
            if (wasVisibleLastFrame == false and tick() - lastPrefireDelayStart >= SETTINGS.Combat.PrefireDelay * 2) then
                canFire = false
                lastPrefireDelayStart = tick()

                if (utility.IsRunning()) then
                    utility.SetSprint(false)
                end

            elseif (tick() - lastPrefireDelayStart < SETTINGS.Combat.PrefireDelay) then
                if (utility.IsRunning()) then
                    utility.SetSprint(false)
                end

                canFire = false
            end
            
            if (SETTINGS.Combat.CrouchOnPrefire) then
                utility.Crouch(true)
            end
        end

        if (canFire and tick() - lastShot > weapon.FireRate + SETTINGS.Combat.ExtraFirerateDelay) then
            lastShot = tick()
            utility.Fire(weapon)
        end

        if (wasVisibleLastFrame == false) then
            currentAimPart = (math.random(1, 100) <= SETTINGS.Combat.HeadshotChance and 'Head' or 'HumanoidRootPart')

            if (SETTINGS.Movement.Slides.OnlyWhenEnemyVisible and canPlayerSlide()) then
                lastSlide = tick() + SETTINGS.Movement.SlideDelay
                task.delay(SETTINGS.Movement.SlideDelay, utility.Slide, true)
            end
        end

        wasVisibleLastFrame = true
    else
        utility.Crouch(false)

        if (SETTINGS.Movement.Slides.OnlyWhenEnemyNotVisible and canPlayerSlide()) then
            lastSlide = tick() + SETTINGS.Movement.SlideDelay
            task.delay(SETTINGS.Movement.SlideDelay, utility.Slide, true)
        end

        if (utility.IsRunning() == false) then
            utility.SetSprint(true)
        end

        wasVisibleLastFrame = false
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if (lp.Team == nil) then
                if (playBtn.Text:lower():match('play ranked')) then
                    beforeStartCounter = 0
                    firesignal(playBtn.Activated)
                end
        
                return
            end
        
            if (not(enemy) or isPlayerMovable() == false) then return end
        
            local waypoints, err = getNewPath(enemy.Character.PrimaryPart.Position)
    
            if (waypoints == false or (typeof(waypoints == 'table') and #waypoints <= 0)) then
                hum:MoveTo((camera.CFrame * CFrame.new(0, 0, -10)).Position)
                currentHumMoveTarget = nil
                task.wait(.25)
                return
            end
        
            for i = 1, 2 do
                local targetPos = waypoints[i].Position
                hum:MoveTo(targetPos)
                currentHumMoveTarget = targetPos 
                    
                local moveFinished = false
            
                local moveConn = hum.MoveToFinished:Connect(function()
                    moveFinished = true
                end)
            
                repeat
                    RunService.Heartbeat:Wait()
                until char.PrimaryPart.AssemblyLinearVelocity.Magnitude < 5 or moveFinished
            
                moveConn:Disconnect()
            
                if (SETTINGS.Movement.CanJump and tick() - lastJump > SETTINGS.Movement.ForcedJumpCooldown) then
                    if (math.random(1, 100) <= SETTINGS.Movement.JumpFrequency or (char.PrimaryPart.Position - enemy.Character.PrimaryPart.Position).Magnitude < 30) then
                        hum:ChangeState(Enum.HumanoidStateType.Jumping)
                        lastJump = tick()
                    end
                end
            end

            hum:MoveTo((camera.CFrame * CFrame.new(0, 0, -5)).Position)
            currentHumMoveTarget = nil
        end)
    end
end)

initGameFunctions()

-- by cooked