local a = game.Players
local b = a.LocalPlayer
local c = 800--  bullet velocity between 799-800
local function d()
    local e = b.Character
    local f = e and e:FindFirstChild("HumanoidRootPart") and e.HumanoidRootPart.Position
    if f then
        local g, h = nil, math.huge
        for _, i in ipairs(a:GetPlayers()) do
            if i ~= b and i.Team ~= b.Team and i.Character and i.Character:FindFirstChild("HumanoidRootPart") then
                local j = (i.Character.HumanoidRootPart.Position - f).Magnitude
                if j < h then
                    local k = i.Character:FindFirstChildOfClass("Humanoid")
                    if k and k.Health > 0 then
                        h = j
                        g = i
                    end
                end
            end
        end
        return g
    end
end
local function l(m, n)
    if not m then return m end
    local o = m.Velocity
    return m.Position + (o * n)
end
local p = Drawing.new("Line")
p.Visible = false
p.Color = Color3.new(1, 0, 0)
p.Thickness = 2
game:GetService("RunService").Heartbeat:Connect(function()
    local s = d()
    if s then
        local t = s.Character:FindFirstChild("HumanoidRootPart")
        if t then
            local u = b.Character.HumanoidRootPart.Position
            local v = l(t, (t.Position - u).Magnitude / c)
            p.From = Vector2.new(workspace.CurrentCamera:WorldToViewportPoint(u).X, workspace.CurrentCamera:WorldToViewportPoint(u).Y)
            p.To = Vector2.new(workspace.CurrentCamera:WorldToViewportPoint(v).X, workspace.CurrentCamera:WorldToViewportPoint(v).Y)
            p.Visible = true
            game:GetService("ReplicatedStorage").Event:FireServer("aim", {v})
        end
    else
        p.Visible = false
    end
end)
warn("\119\97\114\110\40\34\109\97\100\101\32\98\121\32\112\108\97\121\118\111\114\97\34\41")