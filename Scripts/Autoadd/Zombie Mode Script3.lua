local players = game:GetService("Players")
local tweenservice = game:GetService("TweenService")
local soundservice = game:GetService("SoundService")
local userinputservice = game:GetService("UserInputService")
local localplayer = players.LocalPlayer
local gyattchar = localplayer.Character or localplayer.CharacterAdded:Wait()
local rizzhumanoid = gyattchar:WaitForChild("Humanoid")

local skibidiguimain = Instance.new("ScreenGui")
local gyattframe = Instance.new("Frame")

skibidiguimain.Parent = localplayer:WaitForChild("PlayerGui")
skibidiguimain.IgnoreGuiInset = true
gyattframe.Parent = skibidiguimain
gyattframe.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
gyattframe.Size = UDim2.new(1, 0, 1, 0)
gyattframe.BackgroundTransparency = 1

local sigmaanime = Instance.new("Animation")
sigmaanime.AnimationId = "rbxassetid://183294396"
local gyattanimtrack = rizzhumanoid:LoadAnimation(sigmaanime)

local rizztweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out)
local skibidiweight = Instance.new("NumberValue")
skibidiweight.Value = 0

skibidiweight.Changed:Connect(function(val)
    gyattanimtrack:AdjustWeight(val)
end)

gyattanimtrack:Play()
gyattanimtrack:AdjustSpeed(0)
local sigmatween = tweenservice:Create(skibidiweight, rizztweeninfo, {Value = 1})
sigmatween:Play()

local function gyattfade()
    local fadein = tweenservice:Create(gyattframe, TweenInfo.new(1), {BackgroundTransparency = 0.5})
    local fadeout = tweenservice:Create(gyattframe, TweenInfo.new(1), {BackgroundTransparency = 1})
    fadein:Play()
    fadein.Completed:Wait()
    fadeout:Play()
end

local rizzdeathsound = Instance.new("Sound")
rizzdeathsound.SoundId = "rbxassetid://574998190"
rizzdeathsound.Volume = 1
rizzdeathsound.Looped = false
rizzdeathsound.Parent = soundservice

local skibidisound = Instance.new("Sound")
skibidisound.SoundId = "rbxassetid://574999280"
skibidisound.Volume = 1
skibidisound.Looped = false
skibidisound.Parent = soundservice

local function playskibidi()
    skibidisound:Play()
end

playskibidi()

local rizzloop = true
task.spawn(function()
    while rizzloop do
        local delaytime = math.random(5, 10)
        task.wait(delaytime)
        if rizzloop then
            playskibidi()
        end
    end
end)

local fadeactive = true
task.spawn(function()
    while fadeactive do
        gyattfade()
        task.wait(2)
    end
end)

local function rizzshake()
    local gyatthum = rizzhumanoid
    local runservice = game:GetService("RunService")

    local connection
    connection = runservice.RenderStepped:Connect(function()
        local ct = tick()
        if gyatthum.MoveDirection.Magnitude > 0 then
            local bobx = math.cos(ct * 10)
            local boby = math.abs(math.sin(ct * 10))
            local bob = Vector3.new(bobx, boby, 0)
            gyatthum.CameraOffset = gyatthum.CameraOffset:lerp(bob, 0.1)
        else
            gyatthum.CameraOffset = gyatthum.CameraOffset * 0.75
        end
    end)
    return connection
end

local cameraShakeConnection = rizzshake()

local function disableesp()
    for _, player in pairs(players:GetPlayers()) do
        if player.Character then
            local highlight = player.Character:FindFirstChildOfClass("Highlight")
            if highlight then
                highlight:Destroy()
            end
            
            local head = player.Character:FindFirstChild("Head")
            if head then
                for _, gui in pairs(head:GetChildren()) do
                    if gui:IsA("BillboardGui") then
                        gui:Destroy()
                    end
                end
            end
        end
    end
end

local function ondeath()
    gyattanimtrack:Stop()
    skibidisound:Stop()
    rizzloop = false
    fadeactive = false
    rizzdeathsound:Play()
    skibidiguimain:Destroy()
    
    disableesp()
end

rizzhumanoid.Died:Connect(ondeath)

local function createhighlight(player)
    if player.Character and player.Character:FindFirstChild("Head") then
        local highlightColor = player == players.LocalPlayer and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(120, 0, 0)
        if not player.Character:FindFirstChildOfClass("Highlight") then
            local highlight = Instance.new("Highlight")
            highlight.Parent = player.Character
            highlight.Adornee = player.Character
            highlight.FillColor = highlightColor
            highlight.OutlineColor = highlightColor
            highlight.FillTransparency = 0.75
            highlight.OutlineTransparency = 0.2

            local head = player.Character:FindFirstChild("Head")
            if head then
                local billboardgui = Instance.new("BillboardGui")
                billboardgui.Parent = head
                billboardgui.Adornee = head
                billboardgui.Size = UDim2.new(3, 0, 1, 0)
                billboardgui.StudsOffset = Vector3.new(0, 2, 0)

                local nametag = Instance.new("TextLabel")
                nametag.Parent = billboardgui
                nametag.Size = UDim2.new(1, 0, 1, 0)
                nametag.BackgroundTransparency = 1
                nametag.Text = player == players.LocalPlayer and "Zombie" or "Food"
                nametag.TextColor3 = highlightColor
                nametag.TextScaled = true
                nametag.Font = Enum.Font.GothamBold
                nametag.TextSize = 24
                nametag.ZIndex = 2 
            end
        end
    end
end

local function applyesp()
    for _, player in pairs(players:GetPlayers()) do
        createhighlight(player)
    end
end

players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        createhighlight(player)
    end)
end)

applyesp()

local rizzkeyactive = true
userinputservice.InputBegan:Connect(function(input, processed)
    if processed or not rizzkeyactive then return end
    if input.KeyCode == Enum.KeyCode.R then
        local skibidianim = Instance.new("Animation")
        skibidianim.AnimationId = "rbxassetid://163209885"
        local rizzanimtrack = rizzhumanoid:LoadAnimation(skibidianim)
        local gyattsound = Instance.new("Sound")
        gyattsound.SoundId = "rbxassetid://574998739"
        gyattsound.Volume = 1
        gyattsound.Looped = false
        gyattsound.Parent = soundservice

        gyattsound:Play()
        rizzanimtrack:Play()

        task.delay(2.5, function()
            gyattsound:Stop()
            rizzanimtrack:Stop()
            gyattanimtrack:Play()
        end)
    end
end)

local function disablerizz()
    rizzkeyactive = false
end

rizzhumanoid.Died:Connect(disablerizz)
