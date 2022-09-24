-- main aimlock settings
local configs = {
    main = {
        enabled = true,
        aimlockkey = "c",
        prediction = 0.134123,
        aimpart = 'HumanoidRootPart', -- Head, UpperTorso, HumanoidRootPart, LowerTorso
        notifications = true
    }
}

-- box / marker settings

local boxsettings = {
    box = {
        Showbox = true,

        boxsize = Vector3.new(3.3, 3, 2.8), -- Box Size
        markercolor = Color3.fromRGB(1, 120, 145), -- Marrker Color
        markersize = UDim2.new(1, 0, 3, 0) -- Marker Size
    }
}

-- dont mess with anything below
local box = Instance.new("Part", game.Workspace)

local Mouse = game.Players.LocalPlayer:GetMouse()

function makemarker(Parent, Adornee, Color, Size, Size2)
    local box = Instance.new("BillboardGui", Parent)
    box.Name = "PRIVATE-REWRITE!"
    box.Adornee = Adornee
    box.Size = UDim2.new(Size, Size2, Size, Size2)
    box.AlwaysOnTop = true

    local a = Instance.new("Frame", box)
    a.Size = boxsettings.box.markersize
    a.BackgroundColor3 = Color

    local g = Instance.new("UICorner", a)
    g.CornerRadius = UDim.new(50, 25)
    return (box)
end

local Plr
Mouse.KeyDown:Connect(function(KeyPressed)
    if KeyPressed == (configs.main.aimlockkey) then
        if configs.main.enabled == true then
            configs.main.enabled = false
            if configs.main.notifications == true then
                Plr = FindClosestUser()
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Private",
                    Text = "Unlocked;"
                })
            end
        else
            Plr = FindClosestUser()
            configs.main.enabled = true
            if configs.main.notifications == true then
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Private",
                    Text = "Locked On;  " .. tostring(Plr.Character.Humanoid.DisplayName)
                })
            end
        end
    end
end)

local data = game.Players:GetPlayers()
function noob(player)
    local character
    repeat
        wait()
    until player.Character
    local handler = makemarker(guimain, player.Character:WaitForChild(configs.main.aimpart),
        Color3.fromRGB(107, 184, 255), 0.10, 8)
    handler.Name = player.Name
    player.CharacterAdded:connect(function(Char)
        handler.Adornee = Char:WaitForChild("HumanoidRootPart")
    end)
end

for i = 1, #data do
    if data[i] ~= game.Players.LocalPlayer then
        noob(data[i])
    end
end

game.Players.PlayerAdded:connect(function(Player)
    noob(Player)
end)

spawn(function()
    box.Anchored = true
    box.CanCollide = false
    box.Size = boxsettings.box.boxsize
    if boxsettings.box.Showbox == true then
        box.Transparency = 0.70
    else
        box.Transparency = 1
    end
    makemarker(box, box, boxsettings.box.markercolor, 0.40, 1)
end)

function FindClosestUser()
    local closestPlayer
    local ShortestDistance = 300

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
            v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos = game:GetService "Workspace".CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) -
                                  Vector2.new(game.Players.LocalPlayer:GetMouse().X,
                    game.Players.LocalPlayer:GetMouse().Y)).magnitude
            if magnitude < ShortestDistance then
                closestPlayer = v
                ShortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end

game:GetService "RunService".Stepped:connect(function()
    if configs.main.enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
        box.CFrame = CFrame.new(Plr.Character[configs.main.aimpart].Position +
                                    (Plr.Character.UpperTorso.Velocity * configs.main.prediction))
    else
        box.CFrame = CFrame.new(0, 9999, 0)
    end
end)

repeat
    wait()
until game:IsLoaded()
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if configs.main.enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = Plr.Character[configs.main.aimpart].Position +
                      (Plr.Character[configs.main.aimpart].Velocity * configs.main.prediction)
        return old(unpack(args))
    end
    return old(...)
end)