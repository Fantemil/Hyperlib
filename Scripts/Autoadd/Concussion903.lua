local player = game.Players.LocalPlayer
local cam = game.Workspace.CurrentCamera
local tweenservice = game:GetService("TweenService")
local soundid = 9069161602

local rizzsound = Instance.new("Sound", player.Character or player:WaitForChild("PlayerScripts"))
rizzsound.SoundId = "rbxassetid://" .. soundid
rizzsound.Volume = 1

local skibidiblur = Instance.new("BlurEffect", cam)
skibidiblur.Size = 0

local sigmaeffect = Instance.new("ColorCorrectionEffect", cam)
sigmaeffect.TintColor = Color3.new(1, 1, 1)
sigmaeffect.Saturation = 0

local overlay = Instance.new("Frame")
overlay.Size = UDim2.new(1, 0, 1, 0)
overlay.Position = UDim2.new(0, 0, 0, 0)
overlay.BackgroundColor3 = Color3.new(0, 0, 0)
overlay.BackgroundTransparency = 1
overlay.Visible = true
overlay.Parent = player:WaitForChild("PlayerGui")

rizzsound:Play()
wait(0.1)

tweenservice:Create(skibidiblur, TweenInfo.new(0.5), {Size = 24}):Play()
wait(0.5)

local function fadecolor()
    tweenservice:Create(sigmaeffect, TweenInfo.new(0.5), {TintColor = Color3.new(1, 0, 0), Saturation = -1}):Play()
    wait(0.5)
    tweenservice:Create(sigmaeffect, TweenInfo.new(0.5), {TintColor = Color3.new(1, 1, 1), Saturation = 0}):Play()
    wait(0.5)
end

local shakeidk

local function shakecamera()
    local player = game:GetService("Players").LocalPlayer
    local char = game.Workspace:WaitForChild(player.Name)
    local hum = char:WaitForChild("Humanoid")
    local rs = game:GetService("RunService")

    shakeidk = rs.RenderStepped:Connect(function()
        local ct = tick()
        if hum.MoveDirection.Magnitude > 0 then
            local bobblex = math.cos(ct * 10) * 0.25
            local bobbley = math.abs(math.sin(ct * 10)) * 0.25
            local bobble = Vector3.new(bobblex, bobbley, 0)
            hum.CameraOffset = hum.CameraOffset:lerp(bobble, 0.1)
        else
            hum.CameraOffset = hum.CameraOffset * 0.75
        end
    end)
end

shakecamera()

local elapsedtime = 0
while elapsedtime < 6.7 do
    fadecolor()
    elapsedtime = elapsedtime + 1
end

if shakeidk then
    shakeidk:Disconnect()
end

tweenservice:Create(skibidiblur, TweenInfo.new(0.5), {Size = 0}):Play()
wait(0.5)

skibidiblur:Destroy()
sigmaeffect:Destroy()
overlay:Destroy()
rizzsound:Destroy()
