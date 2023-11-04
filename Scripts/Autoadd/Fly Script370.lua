-- Initialization
local cloneref = cloneref or function(...) return ... end

local Players = cloneref(game:GetService("Players"))
local lp = Players.LocalPlayer

local flying = false
local bv, bav
local buttons = {W = false, S = false, A = false, D = false, Moving = false}

local function StartFly()
    if not lp.Character then return end
    local c = lp.Character
    local h = c:FindFirstChildOfClass("Humanoid")
    if not h or flying then return end

    h.PlatformStand = true
    local cam = workspace.CurrentCamera

    bv = Instance.new("BodyVelocity")
    bav = Instance.new("BodyAngularVelocity")

    bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
    bv.Parent = c.Head
    bav.Parent = c.Head

    flying = true

    h.Died:connect(function() 
        EndFly()
    end)
end

local function EndFly()
    if bv then bv:Destroy() end
    if bav then bav:Destroy() end

    local c = lp.Character
    local h = c and c:FindFirstChildOfClass("Humanoid")
    if h then h.PlatformStand = false end

    flying = false
end

game:GetService("UserInputService").InputBegan:connect(function(input, GPE)
    if GPE then return end
    
    if input.KeyCode == Enum.KeyCode.F then
        if flying then
            EndFly()
        else
            StartFly()
        end
    else
        for i, e in pairs(buttons) do
            if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
                buttons[i] = true
                buttons.Moving = true
            end
        end
    end
end)

game:GetService("UserInputService").InputEnded:connect(function(input, GPE)
    if GPE then return end
    local a = false
    for i, e in pairs(buttons) do
        if i ~= "Moving" then
            if input.KeyCode == Enum.KeyCode[i] then
                buttons[i] = false
            end
            if buttons[i] then a = true end
        end
    end
    buttons.Moving = a
end)

local function setVec(vec)
    return vec * ((getgenv().FlySpeed or 50) / vec.Magnitude)
end

game:GetService("RunService").Heartbeat:connect(function(step)
    local c = cloneref(lp.Character)
    if flying and c and c.PrimaryPart then
        local p = c.PrimaryPart.Position
        local cf = workspace.CurrentCamera.CFrame
        local ax, ay, az = cf:toEulerAnglesXYZ()
        c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
        if buttons.Moving then
            local t = Vector3.new()
            if buttons.W then t = t + (setVec(cf.lookVector)) end
            if buttons.S then t = t - (setVec(cf.lookVector)) end
            if buttons.A then t = t - (setVec(cf.rightVector)) end
            if buttons.D then t = t + (setVec(cf.rightVector)) end
            c:TranslateBy(t * step)
        end
    end
end)
