repeat task.wait() until game:IsLoaded()

print("Loaded")

local players = game:GetService("Players")
local player = players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass('Humanoid')
local humanoidrootpart = character:FindFirstChild('HumanoidRootPart') or character.PrimaryPart
local rootjoint = humanoidrootpart:WaitForChild'RootJoint'
local rootc0 = rootjoint.C0

player.CharacterAdded:Connect(function()
    character = player.Character
    humanoid = character:FindFirstChildOfClass('Humanoid')
    humanoidrootpart = character:FindFirstChild('HumanoidRootPart') or character.PrimaryPart
    rootjoint = humanoidrootpart:WaitForChild'RootJoint'
    rootc0 = rootjoint.C0
end)

local active_move = nil

local function stoic_bomb()
    if active_move then
        return
    end
    active_move = "Stoic Bomb"

    local flute_track
    local hold_track
    local freezeVelo = true

    -------------------< animations >-------------------
        task.spawn(function()

        task.wait(0.2)

        local flute_anim = Instance.new("Animation")
        flute_anim.AnimationId = "rbxassetid://52154760"
        local hold_anim = Instance.new("Animation")
        hold_anim.AnimationId = "rbxassetid://48138189"

        flute_track = humanoid:LoadAnimation(flute_anim)
        hold_track = humanoid:LoadAnimation(hold_anim)

        flute_track:Play(); hold_track:Play();

        task.wait(1)

        flute_track:AdjustSpeed(0); flute_track:AdjustSpeed(0);

        end)
    ----------------------------------------------------

    -------------------< movement >---------------------
        --// sorry...
        task.spawn(function()

        task.wait(0.2)

        local TweenService = game:GetService("TweenService")
        local initial_position = humanoidrootpart.CFrame

        local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
        local tween = TweenService:Create(humanoidrootpart, tweenInfo, {CFrame = initial_position + Vector3.new(0, 140, 0)})

        tween:Play()
        tween.Completed:Wait()

        tweenInfo = TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        tween = TweenService:Create(humanoidrootpart, tweenInfo, {CFrame = initial_position + Vector3.new(0, 150, 0)})

        tween:Play()
        tween.Completed:Wait()

        tweenInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        tween = TweenService:Create(humanoidrootpart, tweenInfo, {CFrame = initial_position + Vector3.new(0, 8, 0)})

        tween:Play()
        tween.Completed:Wait()

        tweenInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        tween = TweenService:Create(humanoidrootpart, tweenInfo, {CFrame = initial_position + Vector3.new(0, 5, 0)})

        tween:Play()
        tween.Completed:Wait()

        task.wait(0.75)

        flute_track:Stop(); hold_track:Stop();

        freezeVelo = false

        end)
    ----------------------------------------------------

    ----------------< rotation >-----------------
        task.spawn(function()

        local TweenService = game:GetService("TweenService")

        local tweenInfo = TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
        local tween = TweenService:Create(humanoidrootpart, tweenInfo, {CFrame = humanoidrootpart.CFrame * CFrame.Angles(math.rad(-25), 0, 0)})

        tween:Play()
        tween.Completed:Wait()

        task.wait(0.21)

        humanoidrootpart.CFrame = humanoidrootpart.CFrame * CFrame.Angles(math.rad(160), 0, 0)

        tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        tween = TweenService:Create(humanoidrootpart, tweenInfo, {CFrame = humanoidrootpart.CFrame * CFrame.Angles(math.rad(340), 0, 0)})

        tween:Play()
        tween.Completed:Wait()

        end)
    ---------------------------------------------

    ---------------< general >-------------
        task.spawn(function()

        for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
            track:Stop()
        end

        local connection; connection = game:GetService("RunService").RenderStepped:Connect(function()
            if not freezeVelo then
                connection:Disconnect()
                return
            end
            humanoidrootpart.Velocity = Vector3.zero
        end)

        local org_WalkSpeed = humanoid.WalkSpeed
        local org_AutoRotate = humanoid.AutoRotate
        local org_JumpPower = humanoid.JumpPower

        humanoid.WalkSpeed = 0
        humanoid.AutoRotate = false
        humanoid.JumpPower = 0

        task.wait(3)

        humanoid.WalkSpeed = org_WalkSpeed
        humanoid.AutoRotate = org_AutoRotate
        humanoid.JumpPower = org_JumpPower

        humanoid.HipHeight = 0

        active_move = nil

        end)
    ---------------------------------------
end

local function drop_kick()
    if active_move then
        return
    end

    active_move = "20-20-20 Dropkick"

    local nearestPlayer = nil
    local nearestDistance = math.huge

    if not humanoidrootpart then return end

    for _, plr in ipairs(players:GetPlayers()) do
        if plr ~= game.Players.LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local targetRootPart = plr.Character.HumanoidRootPart
            local distance = (humanoidrootpart.Position - targetRootPart.Position).Magnitude

            if distance < nearestDistance then
                nearestDistance = distance
                nearestPlayer = plr
            end
        end
    end

    if not nearestPlayer then return end

    local target = nearestPlayer.Character
    if not target then return end

    if not target:FindFirstChild("Humanoid") then return end

    local TCharacter = target
    local TRootPart = TCharacter:FindFirstChild("HumanoidRootPart")

    humanoid:MoveTo(TRootPart.Position)
    humanoid.WalkSpeed = 85

    local startTime = tick()
    local timeoutDuration = 5

    repeat
        humanoid.WalkSpeed = 85
        humanoid:MoveTo(TRootPart.Position)
        task.wait()
        if tick() - startTime > timeoutDuration then
            humanoid:MoveTo(humanoidrootpart.Position)
            active_move = nil
            return
        end
    until (humanoidrootpart.Position - TRootPart.Position).Magnitude < 5

    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://180436148"

    for _, Anim in pairs(humanoid:GetPlayingAnimationTracks()) do
        Anim:Stop()
    end

    local track = humanoid:LoadAnimation(anim)
    track:Play()
    track.TimePosition = 0.1
    track:AdjustSpeed(0)

    anim:Destroy()

    humanoid:MoveTo(humanoidrootpart.Position)

    local connection = game:GetService('RunService').RenderStepped:Connect(function()
        if not humanoidrootpart then return end

        humanoidrootpart.CFrame = CFrame.new(TRootPart.Position + Vector3.new(0, 1.75, 0) + (TRootPart.CFrame.LookVector * 2.4))
        local direction = (TRootPart.Position - humanoidrootpart.Position).unit
        local lookAtCFrame = CFrame.lookAt(humanoidrootpart.Position, TRootPart.Position)
        humanoidrootpart.CFrame = lookAtCFrame * CFrame.Angles(math.rad(115), math.rad(90), 0)
        humanoidrootpart.Velocity = Vector3.new(0, 0, 0)
    end)

    task.wait(2)

    connection:Disconnect()

    for _, Anim in pairs(humanoid:GetPlayingAnimationTracks()) do
        Anim:Stop()
    end

    humanoidrootpart.CFrame = CFrame.new(humanoidrootpart.Position, TRootPart.Position or nil)
    humanoid.Sit = true

    task.wait(0.5)

    humanoid.Sit = false
    humanoid.WalkSpeed = 16
    humanoid.AutoRotate = true
    humanoid.JumpPower = 50

    active_move = nil
end


local stoic_bomb_skill = Instance.new("Tool")
stoic_bomb_skill.Name = "Stoic Bomb"
stoic_bomb_skill.RequiresHandle = false
stoic_bomb_skill.Parent = player.Backpack

stoic_bomb_skill.Equipped:Connect(function()
    stoic_bomb()
    task.wait()
    stoic_bomb_skill.Parent = player.Backpack
end)

local drop_kick_skill = Instance.new("Tool")
drop_kick_skill.Name = "20-20-20 Dropkick"
drop_kick_skill.RequiresHandle = false
drop_kick_skill.Parent = player.Backpack

drop_kick_skill.Equipped:Connect(function()
    task.spawn(drop_kick)
    task.wait()
    drop_kick_skill.Parent = player.Backpack
end)