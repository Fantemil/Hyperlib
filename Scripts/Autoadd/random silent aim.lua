-- https://discord.gg/rTgRJrqFdT
-- https://discord.gg/rTgRJrqFdT
-- https://discord.gg/rTgRJrqFdT
-- https://discord.gg/rTgRJrqFdT
-- https://discord.gg/rTgRJrqFdT
-- https://discord.gg/rTgRJrqFdT
-- https://discord.gg/rTgRJrqFdT
-- https://discord.gg/rTgRJrqFdT
 
 
--// KAL SKIDDED THIS SHIT! HE DIDNT MADE THIS BTW
    Settings = {
        Kalslock = {
        Enabled = true,
        Key = "q",
        showdot = true,
        airshots = true,
        notifaction = true,
        pingprediction = true,
        FOV = math.huge,
        RESOVLER = true,
        Tracer = true,
        TracerColor = Color3.new(0, 255, 238),
        TracerTransparency = 0.75,
        TracerThickness = 5,
        Circles = false,
        CircleFOV = 500,
        CircleColor = Color3.new(255, 255, 255),
        CircleThickness = 2,
        CircleFilled = true,
        CircleTransparency = 0.10,
        CircleTransparencyOutline = 0,
        OutlineColor = Color3.new(255, 255, 255),
        Texts = false, 
        TextColor = Color3.new(255, 255, 255),
        TextSize = 35,
        TextInput = "skidded",
        Hitbox = true,
        NoBulletDelay = false,
        Autoclicker = false,
        AutoclickerTime = 0.01,
        AutoclickerKey = "v",
        AnimationPack = false
 
}
}
 
--[[
    Parts - / HumanoidRootPart / LowerTorso / UpperTorso / Head 
]]
 
        local SelectedPart = "HumanoidRootPart"
        local Prediction = true
        local PredictionValue = 0.132
 
 
 
 local AnchorCount = 0
            local MaxAnchor = 50
 
                local CC = game:GetService"Workspace".CurrentCamera
                    local Plr;
                        local enabled = false
                            local accomidationfactor = 0.132
                local mouse = game.Players.LocalPlayer:GetMouse()
 
                            local Inset = game:GetService("GuiService"):GetGuiInset().Y
                local Line = Drawing.new("Line")
                    local Text = Drawing.new("Text")
                          local Circle = Drawing.new("Circle")
                          local Circle1 = Drawing.new("Circle")
 
 
                           _G.Types = {
            Ball = Enum.PartType.Ball,
            Block = Enum.PartType.Block, 
            Cylinder = Enum.PartType.Cylinder
        }
 
                          local placemarker = Instance.new("Part", game.Workspace)
                          placemarker.Shape = _G.Types.Ball
                          placemarker.Material = "ForceField"
                          placemarker.Color = Color3.new(0, 1, 1)
 
    function makemarker(Parent, Adornee, Color, Size, Size2)
        local e = Instance.new("BillboardGui", Parent)
        e.Name = "PP"
        e.Adornee = Adornee
        e.Size = UDim2.new(Size, Size2, Size, Size2)
        e.AlwaysOnTop = Settings.Kalslock.showdot
        local a = Instance.new("Frame", e)
        if Settings.Kalslock.showdot == true then
        a.Size = UDim2.new(1, 0, 1, 0)
        else
        a.Size = UDim2.new(0, 0, 0, 0)
        end
        if Settings.Kalslock.showdot == true then
        a.Transparency = 0
        a.BackgroundTransparency = 0
        else
        a.Transparency = 1
        a.BackgroundTransparency = 1
        end
        a.BackgroundColor3 = Color
        local g = Instance.new("UICorner", a)
        if Settings.Kalslock.showdot == false then
        g.CornerRadius = UDim.new(0, 0)
        else
        g.CornerRadius = UDim.new(1, 1) 
        end
        return(e)
    end
 
 
    local data = game.Players:GetPlayers()
    function noob(player)
        local character
        repeat wait() until player.Character
        local handler = makemarker(guimain, player.Character:WaitForChild(SelectedPart), Color3.fromRGB(0, 255, 229), 0.3, 3)
        handler.Name = player.Name
        player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild(SelectedPart) end)
 
 
        spawn(function()
            while wait() do
                if player.Character then
                end
            end
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
        placemarker.Anchored = true
        placemarker.CanCollide = false
        if Settings.Kalslock.showdot == true then
        placemarker.Size = Vector3.new(11, 11, 11)
        else
        placemarker.Size = Vector3.new(0, 0, 0)
        end
        if Settings.Kalslock.Hitbox == true then
        placemarker.Transparency = 0.30
        else
        placemarker.Transparency = 1
        end
        if Settings.Kalslock.showdot then
        makemarker(placemarker, placemarker, Color3.fromRGB(0, 255, 238), 0.80, 0)
        end
    end)
 
    game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
        if k == Settings.Kalslock.Key and Settings.Kalslock.Enabled then
            if enabled == true then
                enabled = false
                if Settings.Kalslock.notifaction == true then
                    Plr = getClosestPlayerToCursor()
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Kal Skidded This";
                    Text = "  Unlocked",
                    Icon = "http://www.roblox.com/asset/?id=5314810647",
                    Duration = 3
                })
            end
            else
                Plr = getClosestPlayerToCursor()
                enabled = true
                if Settings.Kalslock.notifaction == true then
 
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Kal Skidded This";
                        Text = "  Target: "..tostring(Plr.Character.Humanoid.DisplayName),
                        Icon = "http://www.roblox.com/asset/?id=8709610734",
                        Duration = 3
                    })
 
                end
            end
        end
    end)
 
 
 
    function getClosestPlayerToCursor()
        local closestPlayer
        local shortestDistance = Settings.Kalslock.FOV
 
        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
                local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
        return closestPlayer
    end
 
    local pingvalue = nil;
    local split = nil;
    local ping = nil;
 
    game:GetService"RunService".Stepped:connect(function()
        if enabled and Plr.Character ~= nil and Plr.Character:FindFirstChild("HumanoidRootPart") then
            placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position)
                            local Vector1 = CC:WorldToViewportPoint(Plr.Character.HumanoidRootPart.Position)
            Line.Color = Settings.Kalslock.TracerColor
                Line.Transparency = Settings.Kalslock.TracerTransparency
                Line.Thickness = Settings.Kalslock.TracerThickness
                Line.From = Vector2.new(mouse.X, mouse.Y + Inset)
                Line.To = Vector2.new(Vector1.X, Vector1.Y)
                Line.Visible = Settings.Kalslock.Tracer
                Text.Position = Vector2.new(mouse.X, mouse.Y + Inset)
                Text.Visible = Settings.Kalslock.Texts
                Text.Center = true
                Text.Outline = true
                Text.Font = 1
                Text.Size = Settings.Kalslock.TextSize
                Text.Color = Settings.Kalslock.TextColor
                Text.Text = Settings.Kalslock.TextInput
                Circle.Position = Vector2.new(mouse.X, mouse.Y + Inset)
                Circle.Visible = Settings.Kalslock.Circles
                Circle.Thickness = 1.5
                Circle.Thickness = Settings.Kalslock.CircleThickness
                Circle.Radius = Settings.Kalslock.CircleFOV
                Circle.Color = Settings.Kalslock.CircleColor
                Circle.Filled = Settings.Kalslock.CircleFilled
                Circle.Transparency = Settings.Kalslock.CircleTransparency
                Circle1.Visible = true
                Circle1.Radius = Settings.Kalslock.CircleTransparencyOutline
                Circle1.Position = Vector2.new(mouse.X, mouse.Y + Inset)
                Circle1.Thickness = 5
                Circle1.Color = Settings.Kalslock.OutlineColor
 
        else
                Circle.Visible = false
                Line.Visible = false
                Text.Visible = false
                Circle1.Visible = false
            placemarker.CFrame = CFrame.new(0, 9999, 0)
        end
        if Settings.Kalslock.pingprediction == true then
             pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
             split = string.split(pingvalue,'(')
             ping = tonumber(split[1])
            if ping < 130 then
                PredictionValue = 0.151
            elseif ping < 125 then
                PredictionValue = 0.149
            elseif ping < 110 then
                PredictionValue = 0.146
            elseif ping < 105 then
                PredictionValue = 0.138
            elseif ping < 90 then
                PredictionValue = 0.136
            elseif ping < 80 then
                PredictionValue = 0.134
            elseif ping < 70 then
                PredictionValue = 0.131
            elseif ping < 60 then
                PredictionValue = 0.1229
            elseif ping < 50 then
                PredictionValue = 0.1225
            elseif ping < 40 then
                PredictionValue = 0.1256
            end
        end
    end)
 
    local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(...)
        local args = {...}
        if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" and Settings.Kalslock.Enabled and Plr.Character ~= nil then
 
            -- args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
            --[[
            if Settings.Kalslock.airshots == true then
                if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
 
                    --// Airshot
                    args[3] = Plr.Character.LeftFoot.Position+(Plr.Character.LeftFoot.Velocity*PredictionValue)
 
                else
                    args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
 
                end
            else
    args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*PredictionValue)
    end
    ]]
    if Prediction == true then
 
    args[3] = Plr.Character[SelectedPart].Position+(Plr.Character[SelectedPart].Velocity*PredictionValue)
 
    else
 
    args[3] = Plr.Character[SelectedPart].Position
 
    end
 
    return old(unpack(args))
    end
    return old(...)
    end)
 
    game:GetService("RunService").RenderStepped:Connect(function()
        if Settings.Kalslock.RESOVLER == true and Plr.Character ~= nil and enabled and Settings.Kalslock.Enabled then
        if Settings.Kalslock.airshots == true and enabled and Plr.Character ~= nil then
 
        if game.Workspace.Players[Plr.Name].Humanoid:GetState() == Enum.HumanoidStateType.Freefall then -- Plr.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Freefall
 
 
 
        if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
        AnchorCount = AnchorCount + 1
        if AnchorCount >= MaxAnchor then
        Prediction = false
        wait(2)
        AnchorCount = 0;
        end
        else
        Prediction = true
        AnchorCount = 0;
        end
 
        SelectedPart = "LeftFoot"
 
        else
 
 
        if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
        AnchorCount = AnchorCount + 1
        if AnchorCount >= MaxAnchor then
        Prediction = false
        wait(2)
        AnchorCount = 0;
        end
 
        else
        Prediction = true
        AnchorCount = 0;
        end
 
        SelectedPart = "HumanoidRootPart"
 
        end
        else
 
 
 
        if Plr.Character ~= nil and Plr.Character.HumanoidRootPart.Anchored == true then
        AnchorCount = AnchorCount + 1
        if AnchorCount >= MaxAnchor then
        Prediction = false
        wait(2)
        AnchorCount = 0;
        end
        else
         Prediction = true
         AnchorCount = 0;
        end
        SelectedPart = "HumanoidRootPart"
        end
        else
        SelectedPart = "HumanoidRootPart"
        end
        end)
 
        if Settings.Kalslock.NoBulletDelay == true then
            local FuckDelay = game:GetService("CorePackages").Packages
            FuckDelay:Destroy()
        end
 
        if Settings.Kalslock.Autoclicker == true then
            local time = Settings.Kalslock.AutoclickerTime --decrease if too slow increase if too fast
 
            click = false
            m = game.Players.LocalPlayer:GetMouse()
            m.KeyDown:connect(function(key)
            if key == Settings.Kalslock.AutoclickerKey then
            if click == true then click = false
            elseif
            click == false then click = true
 
            while click == true do 
            wait(time)
            mouse1click()
            end
            end
            end
            end)
        end
 
   