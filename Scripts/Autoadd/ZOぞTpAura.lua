local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local rand = 0

function closest()
    local Character = LocalPlayer.Character
    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (Character or HumanoidRootPart) then return end

    local TargetDistance = math.huge
    local Target

    for i,v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local TargetHRP = v.Character.HumanoidRootPart
            local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
            if mag < TargetDistance and v.Character.Humanoid.Health > 0 then
                if not v.Character:FindFirstChildOfClass("Tool") or v.Character:FindFirstChildOfClass("Tool").Blocking.Value == false then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    end

    return Target
end
local c = game.Players.LocalPlayer.Character
local o = c.HumanoidRootPart
local p = Instance.new("Part",workspace)
task.spawn(function()
    repeat task.wait()
        if c:FindFirstChildOfClass("Tool") then
            c:FindFirstChildOfClass("Tool"):Activate()
        end
    until c.Humanoid.Health <= 0
end)
local range = 25
p.Transparency = 0.5
p.CanCollide = false
p.Anchored = true
p.Position = o.Position 
p.Size = Vector3.new(1,1,1)
workspace.Camera.CameraSubject = p
local s = p:Clone()
task.spawn(function()
    repeat task.wait()
        pcall(function()
            local cl = closest()
            if (cl.Character.HumanoidRootPart.Position-o.Position).magnitude < range and (o.Position-p.Position).magnitude < range then
                s.CFrame = cl.Character.HumanoidRootPart.CFrame + cl.Character.HumanoidRootPart.CFrame.LookVector * -3.5
                s.CFrame = CFrame.lookAt(s.Position,cl.Character.HumanoidRootPart.Position)
                o.CFrame = s.CFrame
            else
                o.CFrame = p.CFrame--CFrame.new(p.Position + Vector3.new(math.random(-10,10),math.random(0,10),math.random(-10,10)))
            end
        end)
    until c.Humanoid.Health <= 0
end)
local fw,bw = false,false
game:GetService("UserInputService").InputBegan:Connect(function(k, gameProcessedEvent)
    if not gameProcessedEvent then
        if k.KeyCode == Enum.KeyCode.W then
            fw = true
        elseif k.KeyCode == Enum.KeyCode.S then
            bw= true
        end
    end
end)
game:GetService("UserInputService").InputEnded:Connect(function(k, gameProcessedEvent)
    if not gameProcessedEvent then
        if k.KeyCode == Enum.KeyCode.W then
            fw = false
        elseif k.KeyCode == Enum.KeyCode.S then
            bw = false
        end
    end
end)

repeat task.wait()
    if fw then
        p.Position = p.Position + workspace.CurrentCamera.CFrame.LookVector *2
    elseif bw then
        p.Position = p.Position + workspace.CurrentCamera.CFrame.LookVector *-2
    end
until c.Humanoid.Health <= 0