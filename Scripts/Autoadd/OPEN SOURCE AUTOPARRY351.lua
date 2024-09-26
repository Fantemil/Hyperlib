--[[ for toggle buttons value to make it work.

Section:CreateToggle("Auto Parry", function(toggled) -- must be the same value as the toggles below

              resolve_parry_Remote()
        getgenv().aura_Enabled = toggled -- the value to make the parry work

print(toggled) -- optional
end)


]]--

local Stats = game:GetService("Stats")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")
local VenoX_Util = loadstring(game:HttpGet("https://raw.githubusercontent.com/cracklua/cracks/m/sources/pitbull/Scripts/Blade%20Ball.lua"))()

local local_player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local camera = workspace.CurrentCamera
local venoX_Data = nil
local hit_Sound = nil
local closest_Entity = nil
local parry_remote = nil

--[[ Parry settings ]]--

getgenv().Fsploit = {
    ["AutoParry"] = true, -- must be true
    ["PingBased"] = false, -- can be true (optional)
    ["PingBasedOffset"] = 0, -- (optional)
    ["DistanceToParry"] = 0.5, -- parry Range
    ["BallSpeedCheck"] = true, -- do not mess with this 
}

--[[ functions ]]--

getgenv().aura_Enabled = false
getgenv().hit_sound_Enabled = false
getgenv().hit_effect_Enabled = false
getgenv().night_mode_Enabled = false
getgenv().trail_Enabled = false
getgenv().self_effect_Enabled = false

local FsploitTable = getgenv().Fsploit
local aura_table = {
    canParry = true,
    is_Spamming = false,
    parry_Range = 0,
    spam_Range = 0,
    hit_Count = 0,
    hit_Time = tick(),
    ball_Warping = tick(),
    is_ball_Warping = false,
}

local function initialize(dataFolder_name)
    venoX_Data = Instance.new("Folder", game:GetService("CoreGui"))
    venoX_Data.Name = dataFolder_name

    hit_Sound = Instance.new("Sound", venoX_Data)
    hit_Sound.SoundId = "rbxassetid://936447863"
    hit_Sound.Volume = 5
end

local function get_closest_entity(Object)
    task.spawn(function()
        local max_distance = math.huge
        for _, entity in pairs(workspace.Alive:GetChildren()) do
            if entity.Name ~= local_player.Name then
                local distance = (Object.Position - entity.HumanoidRootPart.Position).Magnitude
                if distance < max_distance then
                    closest_Entity = entity
                    max_distance = distance
                end
            end
        end
    end)
end

local function resolve_parry_Remote()
    for _, service in pairs({game:GetService("AdService"), game:GetService("SocialService")}) do
        local temp_remote = service:FindFirstChildOfClass("RemoteEvent")
        if temp_remote and temp_remote.Name:find("\n") then
            parry_remote = temp_remote
            break
        end
    end
end

local function IsTheTarget()
    return local_player.Character and local_player.Character:FindFirstChild("Highlight")
end

local function FindBall()
    local RealBall
    for _, v in pairs(workspace:WaitForChild("Balls", 9e9):GetChildren()) do
        if v:GetAttribute("realBall") == true then
            RealBall = v
            break
        end
    end
    return RealBall
end

ReplicatedStorage.Remotes.ParrySuccess.OnClientEvent:Connect(function()
    if getgenv().hit_sound_Enabled then
        hit_Sound:Play()
    end
    if getgenv().hit_effect_Enabled then
        local hit_effect = game:GetObjects("rbxassetid://17407244385")[1]
        hit_effect.Parent = VenoX_Util.getBall()
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

workspace:WaitForChild("Balls").ChildRemoved:Connect(function()
    aura_table.hit_Count = 0
    aura_table.is_ball_Warping = false
    aura_table.is_Spamming = false
end)

task.defer(function()
    RunService.Heartbeat:Connect(function()
        if not local_player.Character then
            return
        end
        if getgenv().trail_Enabled then
            local trail = game:GetObjects("rbxassetid://17483658369")[1]
            trail.Name = "venox_fx"
            if local_player.Character.PrimaryPart:FindFirstChild("venox_fx") then
                return
            end
            local Attachment0 = Instance.new("Attachment", local_player.Character.PrimaryPart)
            local Attachment1 = Instance.new("Attachment", local_player.Character.PrimaryPart)
            Attachment0.Position = Vector3.new(0, -2.411, 0)
            Attachment1.Position = Vector3.new(0, 2.504, 0)
            trail.Parent = local_player.Character.PrimaryPart
            trail.Attachment0 = Attachment0
            trail.Attachment1 = Attachment1
        elseif local_player.Character.PrimaryPart:FindFirstChild("venox_fx") then
            local_player.Character.PrimaryPart.venox_fx:Destroy()
        end
    end)
end)

task.defer(function()
    while task.wait(1) do
        if getgenv().night_mode_Enabled then
            game:GetService("TweenService"):Create(game:GetService("Lighting"), TweenInfo.new(3), {ClockTime = 3.9}):Play()
        else
            game:GetService("TweenService"):Create(game:GetService("Lighting"), TweenInfo.new(3), {ClockTime = 13.5}):Play()
        end
    end
end)

task.spawn(function()
    RunService.PreRender:Connect(function()
        if not getgenv().aura_Enabled and not FsploitTable.AutoParry then
            return
        end

        local Ball = FindBall()
        if not Ball then
            return
        end
        
        local BallPosition = Ball.Position
        local BallVelocity = Ball.AssemblyLinearVelocity.Magnitude
        local Distance = local_player:DistanceFromCharacter(BallPosition)
        local Ping = BallVelocity * (Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000)

        if FsploitTable.PingBased then
            Distance -= Ping + FsploitTable.PingBasedOffset
        end

        if FsploitTable.BallSpeedCheck and BallVelocity == 0 then
            return
        end

        if (Distance / BallVelocity) <= FsploitTable.DistanceToParry and IsTheTarget() and FsploitTable.AutoParry then
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
        end

        if getgenv().aura_Enabled and closest_Entity then
            if workspace.Alive:FindFirstChild(closest_Entity.Name) and workspace.Alive:FindFirstChild(closest_Entity.Name).Humanoid.Health > 0 then
                if aura_table.is_Spamming then
                    if local_player:DistanceFromCharacter(closest_Entity.HumanoidRootPart.Position) <= aura_table.spam_Range then
                        parry_remote:FireServer(0.5, CFrame.new(camera.CFrame.Position, camera.CFrame.Position + (camera.CFrame.LookVector * 100)), {[closest_Entity.Name] = closest_Entity.HumanoidRootPart.Position}, {closest_Entity.HumanoidRootPart.Position.X, closest_Entity.HumanoidRootPart.Position.Y}, false)
                    end
                end
            end
        end
    end)
end)

initialize("venox_temp")
resolve_parry_Remote()

--[[ Remaked by Fsploit / Recoded ]]--