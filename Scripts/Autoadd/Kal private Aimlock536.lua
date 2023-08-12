-- script bought by kal (private request)


--[[

KKKKKKKKK    KKKKKKK               AAA               LLLLLLLLLLL             
K:::::::K    K:::::K              A:::A              L:::::::::L             
K:::::::K    K:::::K             A:::::A             L:::::::::L             
K:::::::K   K::::::K            A:::::::A            LL:::::::LL             
KK::::::K  K:::::KKK           A:::::::::A             L:::::L               
  K:::::K K:::::K             A:::::A:::::A            L:::::L               
  K::::::K:::::K             A:::::A A:::::A          22 L:::::L               
  K:::::::::::K             A:::::A   A:::::A          L:::::L               
  K:::::::::::K            A:::::A     A:::::A         L:::::L               
  K::::::K:::::K          A:::::AAAAAAAAA:::::A        L:::::L               
  K:::::K K:::::K        A:::::::::::::::::::::A       L:::::L               
KK::::::K  K:::::KKK    A:::::AAAAAAAAAAAAA:::::A      L:::::L         LLLLLL
K:::::::K   K::::::K   A:::::A             A:::::A   LL:::::::LLLLLLLLL:::::L
K:::::::K    K:::::K  A:::::A               A:::::A  L::::::::::::::::::::::L
K:::::::K    K:::::K A:::::A                 A:::::A L::::::::::::::::::::::L
KKKKKKKKK    KKKKKKKAAAAAAA                   AAAAAAALLLLLLLLLLLLLLLLLLLLLLLL


]]


--[[


                       _            _                _             _   
                      ( )          ( )              ( )           (_ ) 
  ___ ___     _ _    _| |   __     | |_    _   _    | |/')    _ _  | | 
/' _ ` _ `\ /'_` ) /'_` | /'__`\   | '_`\ ( ) ( )   | , <   /'_` ) | | 
| ( ) ( ) |( (_| |( (_| |(  ___/   | |_) )| (_) |   | |\`\ ( (_| | | | 
(_) (_) (_)`\__,_)`\__,_)`\____)   (_,__/'`\__, |   (_) (_)`\__,_)(___)
                                          ( )_| |                      
                                          `\___/'                      
-- Moongod Modfified (Switched out metatables / airshot and Sorted things out optimzing it)
-- Was this fully made by kal? fuck no bro its literally skidded but skidded inna good way no1 
seen before so yes its good


]]

    --[[ set Values to
        true if you want it to show
        false if not
    --]]
    
    -- Configurations
    --[[
    CLose = HumanoidRootPart / 0.120689803 Predict /  0.132 Accomdation / No AIRSHOT
    Mid = HumanoidRootPart / 0.141 Predict / 0.135 Accomdation / No AIRSHOT
    Far = 121 Predict / 0.138 Accomdation / Airshot true
    
                ^ My Sets


       // -- = -- sets  -- = -- \\
      |       astro  - 0.109     |
      |       astro  - 0.115     |
      |       astro  - 0.121     |
      |       astro  - 0.135     |
      |       astro  - 0.132     |
      |       silent - 0.1325    |     
      |       silent - 0.119     |     
      |       silent - 0.112     |
      // -- = -- holy  -- = -- \\
    ]]
    

--[[
        _G.Types = {
            Ball = Enum.PartType.Ball,
            Block = Enum.PartType.Block, 
            Cylinder = Enum.PartType.Cylinder
        }
        
        --variables                 
            local Tracer = Instance.new("Part", game.Workspace)
        Tracer.Name = "gay"
        Tracer.Shape = _G.Types.Ball
        Tracer.Material = "ForceField"
        Tracer.Size = Vector3.new(7,7,7)
        game:GetService("RunService").RenderStepped:Connect(function()
        Tracer.Transparency = Options.MySlider.Value
        Tracer.Color = Options.ColorPicker.Value
        end)
        --]]
    Settings = {
        Kalslock = {
        Enabled = true,
        Key = "q",
        showdot = true,
        airshots = true,
        notifaction = true,
        pingprediction = false,
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
        TextInput = "made by kal",
        Hitbox = true,
        NoBulletDelay = true,
        Autoclicker = true,
        AutoclickerTime = 0.01,
        AutoclickerKey = "v",
        AnimationPack = true
    
}
}

--[[
    Parts - / HumanoidRootPart / LowerTorso / UpperTorso / Head 
]]

        local SelectedPart = "HumanoidRootPart"
        local Prediction = true
        local PredictionValue = 0.2
        


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
                    Title = "  Kal >3";
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
                        Title = "  Kal >3";
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
        
        if Settings.Kalslock.AnimationPack == true then
            -- Animation Pack --














for _, v in next, game:GetService("CoreGui"):GetChildren() do
    if (v.Name:match("Animation")) then
        v:Destroy()
    end
end

local Folder = Instance.new('Folder', game:GetService("Workspace"))
Folder.Name = ("Animation")

local LeanAnimation = Instance.new("Animation", Folder)
LeanAnimation.Name = "LeanAnimation"
LeanAnimation.AnimationId = "rbxassetid://3152375249"

local LayAnimation = Instance.new("Animation", Folder)
LayAnimation.Name = "LayAnimation"
LayAnimation.AnimationId = "rbxassetid://3152378852"

local Dance1Animation = Instance.new("Animation", Folder)
Dance1Animation.Name = "Dance1Animation"
Dance1Animation.AnimationId = "rbxassetid://3189773368"

local Dance2Animation = Instance.new("Animation", Folder)
Dance2Animation.Name = "Dance2Animation"
Dance2Animation.AnimationId = "rbxassetid://3189776546"

local GreetAnimation = Instance.new("Animation", Folder)
GreetAnimation.Name = "GreetAnimation"
GreetAnimation.AnimationId = "rbxassetid://3189777795"

local ChestPumpAnimation = Instance.new("Animation", Folder)
ChestPumpAnimation.Name = "ChestPumpAnimation"
ChestPumpAnimation.AnimationId = "rbxassetid://3189779152"

local PrayingAnimation = Instance.new("Animation", Folder)
PrayingAnimation.Name = "PrayingAnimation"
PrayingAnimation.AnimationId = "rbxassetid://3487719500"

if game.PlaceId == 2788229376 then
    function AnimationPack(Character)
        Character:WaitForChild'HumanoidRootPart'
        local Animation = Instance.new("ScreenGui")
        local AnimationPack = Instance.new("TextButton")
        local CloseButton = Instance.new("TextButton")
        local ScrollingFrame = Instance.new("ScrollingFrame")
        local ChestPumpButton = Instance.new("TextButton")
        local Dance1Button = Instance.new("TextButton")
        local Dance2Button = Instance.new("TextButton")
        local LayButton = Instance.new("TextButton")
        local GreetButton = Instance.new("TextButton")
        local LeanButton = Instance.new("TextButton")
        local PrayingButton = Instance.new("TextButton")

        Animation.Name = "Animation"
        Animation.Parent = game.CoreGui
        Animation.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        AnimationPack.Name = "AnimationPack"
        AnimationPack.Parent = Animation
        AnimationPack.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AnimationPack.BorderSizePixel = 0
        AnimationPack.Position = UDim2.new(0, 0, 0.5, 0)
        AnimationPack.Size = UDim2.new(0, 100, 0, 20)
        AnimationPack.Visible = false
        AnimationPack.Font = Enum.Font.SourceSansBold
        AnimationPack.Text = "Animations"
        AnimationPack.TextColor3 = Color3.fromRGB(0, 0, 0)
        AnimationPack.TextSize = 18.000

        CloseButton.Name = "CloseButton"
        CloseButton.Parent = AnimationPack
        CloseButton.BackgroundColor3 = Color3.fromRGB(255, 112, 112)
        CloseButton.Position = UDim2.new(0, 0, 0, 97)
        CloseButton.Size = UDim2.new(0, 120, 0, 25)
        CloseButton.Visible = false
        CloseButton.Font = Enum.Font.SourceSansBold
        CloseButton.Text = "CLOSE"
        CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        CloseButton.TextSize = 30.000

        ScrollingFrame.Parent = AnimationPack
        ScrollingFrame.Active = true
        ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        ScrollingFrame.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
        ScrollingFrame.Position = UDim2.new(0, 60, 0, 0)
        ScrollingFrame.Size = UDim2.new(0, 120, 0, 195)
        ScrollingFrame.Visible = false
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 200)

        ChestPumpButton.Name = "ChestPumpButton"
        ChestPumpButton.Parent = ScrollingFrame
        ChestPumpButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ChestPumpButton.Position = UDim2.new(0, 0, 0.727272749, 0)
        ChestPumpButton.Size = UDim2.new(1, 0, 0, 30)
        ChestPumpButton.Font = Enum.Font.GothamBlack
        ChestPumpButton.Text = "Chest Pump"
        ChestPumpButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        ChestPumpButton.TextSize = 12.000
        ChestPumpButton.TextWrapped = true

        Dance1Button.Name = "Dance1Button"
        Dance1Button.Parent = ScrollingFrame
        Dance1Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Dance1Button.Position = UDim2.new(0, 0, 0.290909111, 0)
        Dance1Button.Size = UDim2.new(1, 0, 0, 30)
        Dance1Button.Font = Enum.Font.GothamBlack
        Dance1Button.Text = "Dance1"
        Dance1Button.TextColor3 = Color3.fromRGB(0, 0, 0)
        Dance1Button.TextSize = 12.000
        Dance1Button.TextWrapped = true

        Dance2Button.Name = "Dance2Button"
        Dance2Button.Parent = ScrollingFrame
        Dance2Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Dance2Button.Position = UDim2.new(0, 0, 0.436363667, 0)
        Dance2Button.Size = UDim2.new(1, 0, 0, 30)
        Dance2Button.Font = Enum.Font.GothamBlack
        Dance2Button.Text = "Dance2"
        Dance2Button.TextColor3 = Color3.fromRGB(0, 0, 0)
        Dance2Button.TextSize = 12.000
        Dance2Button.TextWrapped = true

        LayButton.Name = "LayButton"
        LayButton.Parent = ScrollingFrame
        LayButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LayButton.Position = UDim2.new(0, 0, 0.145454556, 0)
        LayButton.Size = UDim2.new(1, 0, 0, 30)
        LayButton.Font = Enum.Font.GothamBlack
        LayButton.Text = "Lay"
        LayButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        LayButton.TextSize = 12.000
        LayButton.TextWrapped = true

        GreetButton.Name = "GreetButton"
        GreetButton.Parent = ScrollingFrame
        GreetButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        GreetButton.Position = UDim2.new(0, 0, 0.581818223, 0)
        GreetButton.Size = UDim2.new(1, 0, 0, 30)
        GreetButton.Font = Enum.Font.GothamBlack
        GreetButton.Text = "Greet"
        GreetButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        GreetButton.TextSize = 12.000
        GreetButton.TextWrapped = true

        LeanButton.Name = "LeanButton"
        LeanButton.Parent = ScrollingFrame
        LeanButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        LeanButton.Size = UDim2.new(1, 0, 0, 30)
        LeanButton.Font = Enum.Font.GothamBlack
        LeanButton.Text = "Lean"
        LeanButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        LeanButton.TextSize = 12.000
        LeanButton.TextWrapped = true

        PrayingButton.Name = "PrayingButton"
        PrayingButton.Parent = ScrollingFrame
        PrayingButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        PrayingButton.Position = UDim2.new(5.96046448e-08, 0, 0.872727275, 0)
        PrayingButton.Size = UDim2.new(1, 0, 0, 30)
        PrayingButton.Font = Enum.Font.GothamBlack
        PrayingButton.Text = "Praying"
        PrayingButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        PrayingButton.TextSize = 12.000
        PrayingButton.TextWrapped = true

        wait(1)

        local AnimationPack = game:GetService("CoreGui").Animation.AnimationPack
        local ScrollingFrame = AnimationPack.ScrollingFrame
        local CloseButton = AnimationPack.CloseButton

        AnimationPack.Visible = true

        local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)

        local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)

        local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)

        local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)

        local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)

        local ChestPump = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ChestPumpAnimation)

        local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)

        function Stop()
            Lay:Stop()
            Lean:Stop()
            Dance1:Stop()
            Dance2:Stop()
            Greet:Stop()
            ChestPump:Stop()
            Praying:Stop()
        end

        local LeanTextButton = ScrollingFrame.LeanButton
        local LayTextButton = ScrollingFrame.LayButton
        local Dance1TextButton = ScrollingFrame.Dance1Button
        local Dance2TextButton = ScrollingFrame.Dance2Button
        local GreetTextButton = ScrollingFrame.GreetButton
        local ChestPumpTextButton = ScrollingFrame.ChestPumpButton
        local PrayingTextButton = ScrollingFrame.PrayingButton

        AnimationPack.MouseButton1Click:Connect(function()
            if ScrollingFrame.Visible == false then
                ScrollingFrame.Visible = true
                CloseButton.Visible = true
            end
        end)
        CloseButton.MouseButton1Click:Connect(function()
            if ScrollingFrame.Visible == true then
                ScrollingFrame.Visible = false
                CloseButton.Visible = false
            end
        end)
        LeanTextButton.MouseButton1Click:Connect(function()
            Stop()
            Lean:Play()
        end)
        LayTextButton.MouseButton1Click:Connect(function()
            Stop()
            Lay:Play()
        end)
        Dance1TextButton.MouseButton1Click:Connect(function()
            Stop()
            Dance1:Play()
        end)
        Dance2TextButton.MouseButton1Click:Connect(function()
            Stop()
            Dance2:Play()
        end)
        GreetTextButton.MouseButton1Click:Connect(function()
            Stop()
            Greet:Play()
        end)
        ChestPumpTextButton.MouseButton1Click:Connect(function()
            Stop()
            ChestPump:Play()
        end)
        PrayingTextButton.MouseButton1Click:Connect(function()
            top()
            Praying:Play()
        end)

        game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
            Stop()
        end)
        game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
            game.CoreGui.Animation:Destroy()
        end)
    end
    AnimationPack(game.Players.LocalPlayer.Character)
    game.Players.LocalPlayer.CharacterAdded:Connect(AnimationPack)
end
end