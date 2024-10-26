

local version = '0.2'

print('Visual. - https://dsc.gg/52JdnPCzWr')
print(version)

setfpscap(165)      

local Stats = game:GetService('Stats')
local Players = game:GetService('Players')
local RunService = game:GetService('RunService')
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local Nurysium_Util = loadstring(game:HttpGet('https://pastebin.com/raw/k9uXwH5S'))()

local local_player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local nurysium_Data = nil
local hit_Sound = nil

local closest_Entity = nil
local parry_remote = nil

getgenv().aura_Enabled = false
getgenv().hit_sound_Enabled = false
getgenv().hit_effect_Enabled = false
getgenv().night_mode_Enabled = false
getgenv().trail_Enabled = false
getgenv().self_effect_Enabled = false
getgenv().kill_effect_Enabled = false
getgenv().shaders_effect_Enabled = false

local Services = {
    game:GetService('AdService'),
    game:GetService('SocialService')
}

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Tevfnn/Visual_Tevfn/main/Visual_Helper"))()
task.wait(0.5)

library:init("Visual 0.2", game:GetService("UserInputService").TouchEnabled, game:GetService("CoreGui"))

library:create_section("Combat", 17440545793)
library:create_section("Misc", 17440868530)
library:create_section("Visual", 17560376274)
library:create_section("Server", 17440865331)
library:create_section("Settings", 17440866925)

function initializate(dataFolder_name: string)
    local nurysium_Data = Instance.new('Folder', game:GetService('CoreGui'))
    nurysium_Data.Name = dataFolder_name

    hit_Sound = Instance.new('Sound', nurysium_Data)
    hit_Sound.SoundId = 'rbxassetid://8632670510'
    hit_Sound.Volume = 5
end

local function get_closest_entity(Object: Part)
    task.spawn(function()
        local closest
        local max_distance = math.huge

        for index, entity in workspace.Alive:GetChildren() do
            if entity.Name ~= Players.LocalPlayer.Name then
                local distance = (Object.Position - entity.HumanoidRootPart.Position).Magnitude

                if distance < max_distance then
                    closest_Entity = entity
                    max_distance = distance
                end

            end
        end

        return closest_Entity
    end)
end

--// Thanks Me for this.
function resolve_parry_Remote()
    for _, value in Services do
        local temp_remote = value:FindFirstChildOfClass('RemoteEvent')

        if not temp_remote then
            continue
        end

        if not temp_remote.Name:find('\n') then
            continue
        end

        parry_remote = temp_remote
    end
end

local aura_table = {
    canParry = true,
    is_Spamming = false,

    parry_Range = 0,
    spam_Range = 0,  
    hit_Count = 0,

    hit_Time = tick(),
    ball_Warping = tick(),
    is_ball_Warping = false
}

ReplicatedStorage.Remotes.ParrySuccess.OnClientEvent:Connect(function()
    if getgenv().hit_sound_Enabled then
        hit_Sound:Play()
    end

    if getgenv().hit_effect_Enabled then
        local hit_effect = game:GetObjects("rbxassetid://17407244385")[1]

        hit_effect.Parent = Nurysium_Util.getBall()
        hit_effect:Emit(3)
        
        task.delay(5, function()
            hit_effect:Destroy()
        end)

    end
end)

ReplicatedStorage.Remotes.ParrySuccessAll.OnClientEvent:Connect(function()
    aura_table.hit_Count += 1

    task.delay(0.15, function()
        aura_table.hit_Count -= 1
    end)
end)

workspace:WaitForChild("Balls").ChildRemoved:Connect(function(child)
    aura_table.hit_Count = 0
    aura_table.is_ball_Warping = false
    aura_table.is_Spamming = false
end)

library:create_toggle("Auto Parry", "Combat", function(toggled)
    resolve_parry_Remote()
    getgenv().aura_Enabled = toggled
end)

library:create_toggle("Hit Sound", "Combat", function(toggled)
    getgenv().hit_sound_Enabled = toggled
end)

library:create_toggle("Hit Effect", "Misc", function(toggled)
    getgenv().hit_effect_Enabled = toggled
end)

library:create_toggle("Trail", "Misc", function(toggled)
    getgenv().trail_Enabled = toggled
end)

library:create_toggle("Kill Effect", "Misc", function(toggled)
    getgenv().kill_effect_Enabled = toggled
end)

library:create_toggle("Copy Discord Invite", "Settings", function(toggle)
setclipboard("https://discord.gg/52JdnPCzWr")
toclipboard("https://discord.gg/52JdnPCzWr")
end)

library:create_toggle("Fps Boost", "Server", function(toggle)
loadstring(game:HttpGet("https://pastebin.com/raw/uzLqqbec"))()
end)

library:create_toggle("Anti-Lag", "Server", function(toggle)
loadstring(game:HttpGet("https://pastebin.com/raw/qtu4MBV0"))()
end)

library:create_toggle("Shaders", "Misc", function(toggled)
    getgenv().shaders_effect_Enabled = toggled
end)

library:create_toggle("Show Visualiser", "Visual", function(toggle)
getgenv().disableVisualizer = false
getgenv().debugCurved = false
getgenv().disable = false
getgenv().disableVisualizer = false
getgenv().curveRestriction = 14.8 --higher the number, more restrictions for curved balls
loadstring(game:HttpGet('https://pastebin.com/raw/fAEPN6BC'))()
end)

--// kill effect

function play_kill_effect(Part)
    task.defer(function()
        local bell = game:GetObjects("rbxassetid://17519762269")[1]

        bell.Name = 'Yeat_BELL'
        bell.Parent = workspace

        bell.Position = Part.Position - Vector3.new(0, 20, 0)
        bell:WaitForChild('Sound'):Play()

        game:GetService("TweenService"):Create(bell, TweenInfo.new(0.85, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {
            Position = Part.Position + Vector3.new(0, 10, 0)
        }):Play()

        task.delay(5, function()
            game:GetService("TweenService"):Create(bell, TweenInfo.new(1.45, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {
                Position = Part.Position + Vector3.new(0, 100, 0)
            }):Play()
        end)

        task.delay(6, function()
            bell:Destroy()
        end)
    end)
end

task.defer(function()
    workspace.Alive.ChildRemoved:Connect(function(child)
        if not workspace.Dead:FindFirstChild(child.Name) then
            return
        end

        if getgenv().kill_effect_Enabled then
            play_kill_effect(child.HumanoidRootPart)
        end
    end)
end)

--// self effect

task.defer(function()
    game:GetService("RunService").Heartbeat:Connect(function()

        if not local_player.Character then
            return
        end

        if getgenv().self_effect_Enabled then
            local effect = game:GetObjects("rbxassetid://17519530107")[1]

            effect.Name = 'nurysium_efx'

            if local_player.Character.PrimaryPart:FindFirstChild('nurysium_efx') then
                return
            end
            
            effect.Parent = local_player.Character.PrimaryPart
        else
            
            if local_player.Character.PrimaryPart:FindFirstChild('nurysium_efx') then
                local_player.Character.PrimaryPart['nurysium_efx']:Destroy()
            end
        end

    end)
end)

--// trail

task.defer(function()
    game:GetService("RunService").Heartbeat:Connect(function()

        if not local_player.Character then
            return
        end

        if getgenv().trail_Enabled then
            local trail = game:GetObjects("rbxassetid://17483658369")[1]

            trail.Name = 'nurysium_fx'

            if local_player.Character.PrimaryPart:FindFirstChild('nurysium_fx') then
                return
            end

            local Attachment0 = Instance.new("Attachment", local_player.Character.PrimaryPart)
            local Attachment1 = Instance.new("Attachment", local_player.Character.PrimaryPart)

            Attachment0.Position = Vector3.new(0, -2.411, 0)
            Attachment1.Position = Vector3.new(0, 2.504, 0)

            trail.Parent = local_player.Character.PrimaryPart
            trail.Attachment0 = Attachment0
            trail.Attachment1 = Attachment1
        else
            
            if local_player.Character.PrimaryPart:FindFirstChild('nurysium_fx') then
                local_player.Character.PrimaryPart['nurysium_fx']:Destroy()
            end
        end

    end)
end)

--// shaders.gsl :stars::shushing_face:

task.defer(function()
    while task.wait(1) do
        if getgenv().shaders_effect_Enabled then
            game:GetService("TweenService"):Create(game:GetService("Lighting").Bloom, TweenInfo.new(4), {
                Size = 100,
                Intensity = 2.1
            }):Play()
        else
            game:GetService("TweenService"):Create(game:GetService("Lighting").Bloom, TweenInfo.new(3), {
                Size = 3,
                Intensity = 1
            }):Play()
        end
    end
end)

--// aura

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

    RunService.PreRender:Connect(function()
        if not getgenv().aura_Enabled then
            return
        end

        local ping = Stats.Network.ServerStatsItem['Data Ping']:GetValue() / 10
        local self = Nurysium_Util.getBall()

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

        if ball_Dot < 0 then
            aura_table.ball_Warping = tick()
        end

        task.spawn(function()
            if (tick() - aura_table.ball_Warping) >= 0.25 + target_distance_Limited - ball_speed_Limited or ball_Distance <= 12 then
                aura_table.is_ball_Warping = false

                return
            end

            aura_table.is_ball_Warping = true
        end)

        if ball_Distance <= aura_table.parry_Range and not aura_table.is_Spamming and not aura_table.is_ball_Warping then
            parry_remote:FireServer(
                0.5,
                CFrame.new(camera.CFrame.Position, Vector3.new(math.random(-1000, 1000), math.random(0, 1000), math.random(-1000, 100))),
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
                RunService.PreRender:Wait()
            until (tick() - aura_table.hit_Time) >= 1
                aura_table.canParry = true
        end)
    end)
end)


initializate('nurysium_temp')