repeat task.wait() until game:IsLoaded()
getgenv().autofarm = true

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Services = ReplicatedStorage.ReplicatedStorage.Packages.Knit.Services
local PartyService = Services.PartyService
local GetPartyFromPlayer = PartyService.RF.GetPartyFromPlayer
local VoteOn = PartyService.RF.VoteOn
local StartDungeon = Services.DungeonService.RF.StartDungeon

local UseSword = Services.WeaponService.RF.UseSword
function createDungeon(name, difficulty, join, hardcore)
    CreateParty:InvokeServer(name, difficulty, join, not hardcore and "Normal")
    StartParty:InvokeServer(GetPartyFromPlayer:InvokeServer(LocalPlayer)['Data']['UUID'])
end

function retry()
    VoteOn:InvokeServer("Retry")
end

function goNext()
    VoteOn:InvokeServer("Next")
end

if game.PlaceId == 10515146389 then
    createDungeon("SnowCastle", "Hell", "All", "Normal")
end
function startDungeon()
    StartDungeon:InvokeServer()
end

function getAliveMobs()
    local mobs = {}
    for _,v in next, workspace.Mobs:GetChildren() do
        if v:FindFirstChild("Humanoid") and v.PrimaryPart and v.Humanoid.Health > 0 then
            table.insert(mobs, v)
        end
    end
    return mobs
end

function swing()
    UseSword:InvokeServer()
end

-- THIS IS FOR DODGE ATTACKS, DOESN'T WORK YET. FEEL FREE TO MAKE IT WORK

function isPositionClear(position, obstacles)
    for _, obstacle in pairs(obstacles) do
        if obstacle.Parent and obstacle.Name == "Warning" and obstacle.Transparency ~= 1 then
            local distance = (Vector3.new(position.X, 0, position.Z) - Vector3.new(obstacle.Position.X, 0, obstacle.Position.Y)).Magnitude
            if distance - 1 < (obstacle.Size.Magnitude / 2) then
                return false
            end
        end
    end
    return true
end

function dogeAttacks(targetPosition, obstacles)
    for pos1 = 1,100 do
        for neg1 = -1, 1, 2 do
            for pos2 = 1,100 do
                for neg2 = -1, 1, 2 do 
                    local randomOffset = Vector3.new(pos1 * neg1, 0, pos2 * neg2)
                    local newPosition = targetPosition + randomOffset

                    if isPositionClear(newPosition, obstacles) then
                        return newPosition
                    end
                end
            end
        end
    end

    return nil
end

startDungeon()

-- THIS IS FOR DODGE ATTACKS, DOESN'T WORK YET. FEEL FREE TO MAKE IT WORK
--[[

local obstacles = {}
workspace.Effects.ChildAdded:Connect(function(child)
    wait()
    if child:IsA("BasePart") then
        table.insert(obstacles, child)
    else
        for _,child in next, child:GetChildren() do
            if child:IsA("BasePart") then
                task.spawn(function()
                    table.insert(obstacles, child)
                end)
            end
        end
    end
end)

workspace.Effects.ChildRemoved:Connect(function(child)
    if child:IsA("BasePart") then
        table.remove(obstacles, table.find(obstacles, child))
    else
        for _,child in next, child:GetChildren() do
            if child:IsA("BasePart") then
                table.remove(obstacles, table.find(obstacles, child))
            end
        end
    end
end)
]]

task.spawn(function()
    while task.wait() and getgenv().autofarm do
        if LocalPlayer.Character and LocalPlayer.Character.PrimaryPart then
            LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(0,0,0)
        end
    end
end)

function killMob(mob)
    task.wait()
    if LocalPlayer.Character and LocalPlayer.Character.PrimaryPart and mob.PrimaryPart and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then

        local targetPosition = (mob.PrimaryPart.CFrame).p + Vector3.new(0,4,0)
        if not targetPosition then
            LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(1000,100,1000)
        else
            local oldHealth = mob.Humanoid.Health
            repeat
                LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(targetPosition, mob.PrimaryPart.Position)
                task.wait()
                swing()
            until not LocalPlayer.Character or not LocalPlayer.Character.PrimaryPart or mob.Humanoid.Health ~= oldHealth or #mob.Humanoid:GetPlayingAnimationTracks() > 1
            if LocalPlayer.Character and LocalPlayer.Character.PrimaryPart then
                LocalPlayer.Character.PrimaryPart.CFrame = LocalPlayer.Character.PrimaryPart.CFrame + Vector3.new(0,50,0)
            end
        end
    end

end

function pickupShit()
    for _,v in next, workspace.Camera.Drops:GetChildren() do
        if v:FindFirstChild("Center") and v.Center:FindFirstChild("ProximityPrompt") then
            fireproximityprompt(v.Center.ProximityPrompt)
        end
    end 
end

while getgenv().autofarm and task.wait() do
    for _, mob in next, getAliveMobs() do
        killMob(mob)
        pickupShit()
    end
    if game:GetService("Players").LocalPlayer.PlayerGui.DungeonComplete.Main.Visible then
        retry()
    end
end