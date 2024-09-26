--credit to triple and fsploit 
resolve_parry_Remote()

getgenv().aura_Enabled = true
    
getgenv().triple = {
    ["AutoParry"] = true,
    ["PingBased"] = true,
    ["PingBasedOffset"] = 0,
    ["DistanceToParry"] = 0.5, -- Parry Range V2 (not done)
    ["BallSpeedCheck"] = true,
    ["ParryRange"] = 20,  -- Parry Range
    ["SpamRange"] = 15 -- Spam Range
}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local ReplicatedTriple = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Stats = game:GetService("Stats")
local workspace = game:GetService("Workspace")
local TriplEx = loadstring(game:HttpGet("https://pastebin.com/raw/q3WCffrK"))()

local triple = ReplicatedTripleWaitForChild("Remotes", 9e9)
local tripleBalls = workspace:WaitForChild("Balls", 9e9)

local hit_Sound = Instance.new("Sound", Player.PlayerGui)
hit_Sound.SoundId = "rbxassetid://0"
hit_Sound.Volume = 5

--credit fsploit for this

local aura_table = {
    canParry = true,
    is_Spamming = false,
    parry_Range = getgenv().triple.ParryRange,
    spam_Range = getgenv().triple.SpamRange,
    hit_Count = 0,
    hit_Time = tick(),
    ball_Warping = tick(),
    is_ball_Warping = false
}

local function IsTheTarget()
    return Player.Character:FindFirstChild("Highlight")
end

local function FindBall()
    for _, ball in ipairs(tripleBalls:GetChildren()) do
        if ball:GetAttribute("realBall") == true then
            return ball
        end
    end
end

local function get_closest_entity(Object)
    local closest
    local max_distance = math.huge
    for _, entity in ipairs(workspace.Alive:GetChildren()) do
        if entity.Name ~= Player.Name then
            local distance = (Object.Position - entity.HumanoidRootPart.Position).Magnitude
            if distance < max_distance then
                closest = entity
                max_distance = distance
            end
        end
    end
    return closest
end

local function resolve_parry_Remote()
    for _, service in ipairs({game:GetService("AdService"), game:GetService("SocialService")}) do
        local temp_remote = service:FindFirstChildOfClass("RemoteEvent")
        if temp_remote and temp_remote.Name:find("\n") then
            parry_remote = temp_remote
            break
        end
    end
end


triple.ParrySuccess.OnClientEvent:Connect(function()
    if getgenv().hit_sound_Enabled then
        hit_Sound:Play()
    end
    if getgenv().hit_effect_Enabled then
        local hit_effect = game:GetObjects("rbxassetid://0")[1]
        hit_effect.Parent = FindBall()
        hit_effect:Emit(3)
        task.delay(5, function()
            hit_effect:Destroy()
        end)
    end
end)

triple.ParrySuccessAll.OnClientEvent:Connect(function()
    aura_table.hit_Count += 1
    task.delay(0.15, function()
        aura_table.hit_Count -= 1
    end)
end)

workspace:WaitForChild("Balls").ChildRemoved:Connect(function()
    aura_table.hit_Count = 0
    aura_table.is_ball_Warping = false
    aura_table.is_Spamming = false
end)


RunService.PreRender:Connect(function()
    local Ball = FindBall()
    if not Ball then return end

    local BallPosition = Ball.Position
    local BallVelocity = Ball.AssemblyLinearVelocity.Magnitude
    local Distance = Player:DistanceFromCharacter(BallPosition)
    local Ping = BallVelocity * (Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000)

    if getgenv().triple.PingBased then
        Distance -= Ping + getgenv().triple.PingBasedOffset
    end

    if getgenv().triple.BallSpeedCheck and BallVelocity == 0 then return end

    if (Distance / BallVelocity) <= getgenv().triple.DistanceToParry and IsTheTarget() and getgenv().triple.AutoParry then
        triple:WaitForChild("ParryButtonPress"):Fire()
    end

    local closest = get_closest_entity(Player.Character.PrimaryPart)
    if closest then
        if workspace.Alive:FindFirstChild(closest.Name) and workspace.Alive:FindFirstChild(closest.Name).Humanoid.Health > 0 then
            if aura_table.is_Spamming and Player:DistanceFromCharacter(closest.HumanoidRootPart.Position) <= aura_table.spam_Range then
                parry_remote:FireServer(0.5, CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + workspace.CurrentCamera.CFrame.LookVector * 100), {[closest.Name] = closest.HumanoidRootPart.Position}, {closest.HumanoidRootPart.Position.X, closest.HumanoidRootPart.Position.Y}, false)
            end
        end
    end

    if (Ball.Position - Player.Character.PrimaryPart.Position).Magnitude <= aura_table.parry_Range and not aura_table.is_Spamming and not aura_table.is_ball_Warping then
        parry_remote:FireServer(0.5, CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + workspace.CurrentCamera.CFrame.LookVector * 100), {[closest.Name] = closest.HumanoidRootPart.Position}, {closest.HumanoidRootPart.Position.X, closest.HumanoidRootPart.Position.Y}, false)
        aura_table.canParry = false
        aura_table.hit_Time = tick()
        aura_table.hit_Count += 1
        task.delay(0.15, function()
            aura_table.hit_Count -= 1
        end)
    end

    task.spawn(function()
        repeat
            RunService.PreRender:Wait()
        until (tick() - aura_table.hit_Time) >= 1
        aura_table.canParry = true
    end)
end)
         
         task.spawn(function()

    RunService.PreRender:Connect(function()

        if not getgenv().aura_Enabled then

            return

        end

        if closest_Entity then

            if workspace.Alive:FindFirstChild(closest_Entity.Name) and workspace.Alive:FindFirstChild(closest_Entity.Name).Humanoid.Health > 0 then

                if aura_table.is_Spamming then

                    if local_player:DistanceFromCharacter(closest_Entity.HumanoidRootPart.Position) <= aura_table.spam_Range then   

                        parry_remote:FireServer(

                            0.5,

                            CFrame.new(camera.CFrame.Position, Vector3.zero),

                            {[closest_Entity.Name] = closest_Entity.HumanoidRootPart.Position},

                            {closest_Entity.HumanoidRootPart.Position.X, closest_Entity.HumanoidRootPart.Position.Y},

                            false

                        )

                    end

                end

            end

        end

    end)

    RunService.Heartbeat:Connect(function()

        if not getgenv().aura_Enabled then

            return

        end

        local ping = Stats.Network.ServerStatsItem['Data Ping']:GetValue() / 10

        local self = TriplEx.getBall()

        if not self then

            return

        end

        self:GetAttributeChangedSignal('target'):Once(function()

            aura_table.canParry = true

        end)

        if self:GetAttribute('target') ~= local_player.Name or not aura_table.canParry then

            return

        end

        get_closest_entity(local_player.Character.PrimaryPart)

        local player_Position = local_player.Character.PrimaryPart.Position

        local ball_Position = self.Position

        local ball_Velocity = self.AssemblyLinearVelocity

        if self:FindFirstChild('zoomies') then

            ball_Velocity = self.zoomies.VectorVelocity

        end

        local ball_Direction = (local_player.Character.PrimaryPart.Position - ball_Position).Unit

        local ball_Distance = local_player:DistanceFromCharacter(ball_Position)

        local ball_Dot = ball_Direction:Dot(ball_Velocity.Unit)

        local ball_Speed = ball_Velocity.Magnitude

        local ball_speed_Limited = math.min(ball_Speed / 1000, 0.1)

        local ball_predicted_Distance = (ball_Distance - ping / 15.5) - (ball_Speed / 3.5)

        local target_Position = closest_Entity.HumanoidRootPart.Position

        local target_Distance = local_player:DistanceFromCharacter(target_Position)

        local target_distance_Limited = math.min(target_Distance / 10000, 0.1)

        local target_Direction = (local_player.Character.PrimaryPart.Position - closest_Entity.HumanoidRootPart.Position).Unit

        local target_Velocity = closest_Entity.HumanoidRootPart.AssemblyLinearVelocity

        local target_isMoving = target_Velocity.Magnitude > 0

        local target_Dot = target_isMoving and math.max(target_Direction:Dot(target_Velocity.Unit), 0)

        aura_table.spam_Range = math.max(ping / 10, 15) + ball_Speed / 7

        aura_table.parry_Range = math.max(math.max(ping, 4) + ball_Speed / 3.5, 9.5)

        aura_table.is_Spamming = aura_table.hit_Count > 1 or ball_Distance < 13.5

        if ball_Dot < -0.2 then

            aura_table.ball_Warping = tick()

        end

        task.spawn(function()

            if (tick() - aura_table.ball_Warping) >= 0.15 + target_distance_Limited - ball_speed_Limited or ball_Distance <= 10 then

                aura_table.is_ball_Warping = false

                return

            end

            aura_table.is_ball_Warping = true

        end)

        if ball_Distance <= aura_table.parry_Range and not aura_table.is_Spamming and not aura_table.is_ball_Warping then

            parry_remote:FireServer(

                0.5,

                CFrame.new(camera.CFrame.Position, Vector3.new(math.random(0, 100), math.random(0, 1000), math.random(100, 1000))),

                {[closest_Entity.Name] = target_Position},

                {target_Position.X, target_Position.Y},

                false

            )

            aura_table.canParry = false

            aura_table.hit_Time = tick()

            aura_table.hit_Count += 1

            task.delay(0.15, function()

                aura_table.hit_Count -= 1

            end)

        end

        task.spawn(function()

            repeat

                RunService.Heartbeat:Wait()

            until (tick() - aura_table.hit_Time) >= 1

                aura_table.canParry = true

        end)

    end)

end)

initializate('triple_temp')