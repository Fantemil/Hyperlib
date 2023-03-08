local reset = false

pcall(function()
    if _G.stepped then
        reset = true
        _G.stepped:Disconnect()
        _G.input:Disconnect()
        _G.charAdded:Disconnect()
        _G.charAdded = nil
        _G.stepped = nil
        _G.input = nil
        print("RESET")
    end
    
    if not reset then
        print("LOADED")
    end
end)

local plr = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")
local rs = game:GetService("RunService")

local lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local window = lib:MakeWindow({Name = "Magnet's Hoopz UI"})
local main = window:MakeTab({Name = "Main"})

main:AddToggle({Name = "Aimbot", Default = false, Callback = function(v)
    _G.Aimbot = v
end})
main:AddToggle({Name = "Reach", Default = false, Callback = function(v)
    _G.Reach = v
end})
main:AddToggle({Name = "AutoGaurd/Defend", default = false, Callback = function(v)
    if v then
        game.StarterGui:SetCore("SendNotification", {Title = "AutoGaurd/Defend", Text = "Press U to go to the nearest ball", Duration = 5, Button1 = "Okay"})
    end
    _G.Autogaurd = v
end})
main:AddSlider({Name = "WalkSpeed", Min = 16, Max = 19, Default = 16, Color = Color3.fromRGB(80, 80, 255), Increment = 0.1, Callback = function(v)
    _G.WS = v
end})

local shootingEvent = game:GetService("ReplicatedStorage").shootingEvent

if workspace:FindFirstChild("PracticeArea") then
    workspace.PracticeArea.Parent = workspace.Courts
end

local jumping = false

for i,v in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
    for z,x in pairs(getupvalues(v.Function)) do
        if type(x) == "table" and rawget(x, 1) then
            _G.method = x
        elseif z == 10 then
            _G.key = x
        end
    end
end

for i,v in pairs(getconnections(plr.Character.HumanoidRootPart:GetPropertyChangedSignal("Size"))) do
    v:Disable()
end

for i,v in pairs(getconnections(plr.Character.HumanoidRootPart:GetPropertyChangedSignal("Color"))) do
    v:Disable()
end

for i,v in pairs(getconnections(plr.Character.HumanoidRootPart:GetPropertyChangedSignal("BrickColor"))) do
    v:Disable()
end

for i,v in pairs(getconnections(plr.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"))) do
    v:Disable()
end

local ground

local part = workspace:FindPartOnRay(Ray.new(plr.Character.Torso.Position, Vector3.new(0, -100, 5)))
if part then
    ground = part
end

local tracking = false
local player

function updateNearestPlayerWithBall()
    local dist = 9e9
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= plr.Name and v.Character and v.Character:FindFirstChild("Basketball") and not plr.Character:FindFirstChild("Basketball") and (plr.Character.Torso.Position - v.Character.Torso.Position).Magnitude < 50 then
            local mag = (plr.Character.Torso.Position - v.Character.Torso.Position).Magnitude
            if dist > mag then
                dist = mag
                player = v
            end
        end
    end
end

if _G.hook ~= nil then
    _G.hook = ""; _G.hook = hookmetamethod(game, "__index", newcclosure(function(self, idx)
        if tostring(self) == "HumanoidRootPart" and idx == "Size" then
            return Vector3.new(2, 2, 1)
        elseif tostring(self) == "HumanoidRootPart" and idx == "BrickColor" then
            return BrickColor.new("Medium stone grey")
        elseif tostring(self) == "HumanoidRootPart" and idx == "Color" then
            return Color3.fromRGB(163, 162, 165)
        elseif tostring(self) == "Humanoid" and idx == "WalkSpeed" then
            return 16
        end
        return hook(self, idx)
    end))
end

shootingEvent.OnClientEvent:Connect(function(newKey)
    _G.key = newKey
end)

function setup()
    local dist, goal = 9e9, nil
    for i,v in pairs(workspace.Courts:GetDescendants()) do
        if v.Name == "Swish" and v:IsA("Sound") and plr.Character and plr.Character:FindFirstChild("Torso") then
            local mag = (plr.Character.Torso.Position - v.Parent.Position).Magnitude
            if dist > mag then
                dist = mag; goal = v.Parent
            end
        end
    end
    return dist, goal
end

function power()
    return plr.Power
end

function changePower(goal)
    power().Value = goal
end

function table(a, b)
    local args = {
X1 = a.X, 
Y1 = a.Y, 
Z1 = a.Z, 
X2 = b.X, 
Y2 = b.Y, 
Z2 = b.Z
};

return {args[_G.method[1]], args[_G.method[2]], args[_G.method[3]], args[_G.method[4]], args[_G.method[5]], args[_G.method[6]]}
end

function arc()
    local dist, goal = setup()

    dist = math.floor(dist)
    print(dist)
    if dist == 12 or dist == 13 then
        return 15
    elseif dist == 14 or dist == 15 then
        return 20
    elseif dist == 16 or dist == 17 then
        return 15
    elseif dist == 18 then
        return 25
    elseif dist == 19 then
        return 20
    elseif dist == 20 or dist == 21 then
        return 20
    elseif dist == 22 or dist == 23 then
        return 25
    elseif dist == 24 or dist == 25 then
        return 20
    elseif dist == 26 then
        return 15
    elseif dist == 27 or dist == 28 then
        return 25
    elseif dist == 29 or dist == 30 then
        return 20
    elseif dist == 31 then
        return 15
    elseif dist == 32 or dist == 33 then
        return 30
    elseif dist == 34 or dist == 35 or dist == 36 then
        return 25
    elseif dist == 37 or dist == 38 then
        return 35
    elseif dist == 39 or dist == 40 then
        return 30
    elseif dist == 41 then
        return 25
    elseif dist == 42 or dist == 43 then
        return 40
    elseif dist == 44 then
        return 35
    elseif dist == 45 or dist == 46 then
        return 30
    elseif dist == 47 or dist == 48 then
        return 45
    elseif dist == 49 then
        return 40
    elseif dist == 50 then
        return 35
    elseif dist == 51 then
        return 50
    elseif dist == 52 then
        return 55
    elseif dist == 53 or dist == 54 then
        return 50
    elseif dist == 55 then
        return 45
    elseif dist == 56 then
        return 40
    elseif dist == 57 or dist == 58 then
        return 55
    elseif dist == 59 or dist == 60 or dist == 61 then
        return 50
    elseif dist == 62 or dist == 63 then
        return 65
    elseif dist == 64 then
        return 55
    elseif dist == 65 then
        return 60
    elseif dist == 66 or dist == 67 then
        return 50
    elseif dist == 68 or dist == 69 then
        return 75
    elseif dist == 70 or dist == 71 then
        return 70
    elseif dist == 72 then
        return 65
    elseif dist == 73 then
        return 60
    elseif dist == 74 then
        return 50
    elseif jumping then
        if dist == 9 or dist == 10 then
            return 20
        elseif dist == 11 or dist == 12 then
            return 15
        end
    end
end

function getNearestPart(torso)
    local dist, part = 9e9 
    for i,v in pairs(plr.Character:GetChildren()) do
        if v:IsA("Part") and torso then
            local mag = (v.Position - torso.Position).Magnitude
            if dist > mag then
                dist = mag
                part = v
            end
        end
    end
    return part
end

function stepped() pcall(function()
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and _G.Aimbot then
        local pwr = power()
        local dist, goal = setup()
        local root = plr.Character.HumanoidRootPart
    
        dist = math.floor(dist)

        if root and hasBall then
            root.Size = Vector3.new(2.1, 2.1, 1.1)
            root.BrickColor = BrickColor.new("Lime green")
            root.Material = Enum.Material.Neon
            
            if dist >= 13 and dist <= 16 then
                changePower(30)
                root.Transparency = 0
            elseif dist >= 17 and dist <= 21 then
                changePower(35)
                root.Transparency = 0
            elseif dist >= 22 and dist <= 26 then
                changePower(40)
                root.Transparency = 0 
            elseif dist >= 27 and dist <= 31 then
                changePower(45)
                root.Transparency = 0
            elseif dist >= 32 and dist <= 36 then
                changePower(50)
                root.Transparency = 0
            elseif dist >= 37 and dist <= 41 then
                changePower(55)
                root.Transparency = 0
            elseif dist >= 42 and dist <= 46 then
                changePower(60)
                root.Transparency = 0
            elseif dist >= 47 and dist <= 50 then
                changePower(65)
                root.Transparency = 0
            elseif dist >= 51 and dist <= 56 then
                changePower(70)
                root.Transparency = 0
            elseif dist >= 57 and dist <= 61 then
                changePower(75)
                root.Transparency = 0
            elseif dist >= 62 and dist <= 67 then
                changePower(80)
                root.Transparency = 0
            elseif dist >= 68 and dist <= 74 then
                changePower(85)
                root.Transparency = 0
            elseif jumping and dist == 9 or dist == 10 or dist == 11 or dist == 12 then
                changePower(25)
                root.Transparency = 0
            else
                root.Transparency = 1
            end
        elseif root and not hasBall and _G.Aimbot then
            root.Transparency = 1
        elseif root and not _G.Aimbot then
            root.Transparency = 1
        end
    end
    
    updateNearestPlayerWithBall()
    
    if _G.WS ~= 16 and plr.Character:WaitForChild("Humanoid").WalkSpeed ~= 0 then
        plr.Character:WaitForChild("Humanoid").WalkSpeed = _G.WS
    end

    if _G.Autogaurd and tracking and player and plr.Character and plr.Character:FindFirstChild("Humanoid") and not plr.Character:FindFirstChild("Basketball") and player.Character and player.Character:FindFirstChild("Basketball") then
        plr.Character.Humanoid:MoveTo(player.Character.Basketball:FindFirstChildOfClass("Part").Position + player.Character.Torso.CFrame.LookVector + ((player.Character.Humanoid.MoveDirection * 2) + (plr.Character.Torso.Velocity.Unit * 3)))
        
        if (player.Character.Torso.Position.Y - ground.Position.Y) > 2.5 then
            plr.Character.Humanoid.Jump = true
        end
    elseif tracking and player ~= nil and player.Character and plr.Character and plr.Character:FindFirstChild("Basketball") or not player.Character:FindFirstChild("Basketball") then
        tracking = false
        return
    end
    
    for i,v in pairs(game.Players:GetPlayers()) do
        if (v.Name ~= plr.Name and v.Character and plr.Character) and _G.Reach then
            local nearestPart = getNearestPart(v.Character.Torso)
            for z,x in pairs(v.Character:GetChildren()) do
                if ((nearestPart.Position - v.Character.Torso.Position).Magnitude < 8) then
                    if (x:IsA("Tool") or x:IsA("Folder")) then
                        firetouchinterest(nearestPart, x:FindFirstChildOfClass("Part"), 0)
                        task.wait()
                        firetouchinterest(nearestPart, x:FindFirstChildOfClass("Part"), 1)
                    elseif (x:IsA("BasePart") and string.find(x.Name:lower(), "ball")) then
                        firetouchinterest(nearestPart, x, 0)
                        task.wait()
                        firetouchinterest(nearestPart, x, 1)
                    end
                end
            end
        end
    end
end) end

function shoot()
    local dist, goal = setup()
    local pwr = power()
    local arc = arc()
    
    if arc ~= nil and plr.Character and plr.Character:FindFirstChild("Humanoid") then
        local args = table(plr.Character.Torso.Position, (goal.Position + Vector3.new(0, arc, 0) - plr.Character.HumanoidRootPart.Position + plr.Character.Humanoid.MoveDirection).Unit)
    
        shootingEvent:FireServer(
            plr.Character.Basketball,
            pwr.Value,
            args,
            _G.key
        )
    end
end

function jumped()
    if _G.Aimbot and plr.Character and hasBall and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.HumanoidRootPart.Transparency == 0 then
        jumping = true
        task.wait(0.325)
        shoot()
        task.wait(0.1)
        jumping = false
    end
end

function added(v)
    if v.Name == "Basketball" then
        task.wait(0.5)
        hasBall = true
    end
end

function removed(v)
    if v.Name == "Basketball" then
        hasBall = false
    end
end

function began(key, gpe)
    if not gpe and key.KeyCode == Enum.KeyCode.U and _G.Autogaurd then
        updateNearestPlayerWithBall()
        if not tracking then
            tracking = true
        else
            tracking = false
        end
    end
end

_G.input = plr.Character.Humanoid.Jumping:Connect(jumped)
_G.added = plr.Character.ChildAdded:Connect(added)
_G.removed = plr.Character.ChildRemoved:Connect(removed)
_G.stepped = rs.Stepped:Connect(stepped)
_G.began = uis.InputBegan:Connect(began)

_G.charAdded = plr.CharacterAdded:Connect(function(ch)
    _G.input = ch:WaitForChild("Humanoid").Jumping:Connect(jumped)
    _G.added = ch.ChildAdded:Connect(added)
    _G.removed = ch.ChildRemoved:Connect(removed)
    
    for i,v in pairs(getconnections(ch:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("Size"))) do
        v:Disable()
    end
    for i,v in pairs(getconnections(ch:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("BrickColor"))) do
        v:Disable()
    end
    for i,v in pairs(getconnections(ch:WaitForChild("HumanoidRootPart"):GetPropertyChangedSignal("Color"))) do
        v:Disable()
    end
    for i,v in pairs(getconnections(ch:WaitForChild("Humanoid"):GetPropertyChangedSignal("WalkSpeed"))) do
        v:Disable()
    end
end)