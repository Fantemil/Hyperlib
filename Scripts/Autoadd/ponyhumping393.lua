


local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/cueshut/saves/main/compact"))()
UI = UI.init("Era", "v1.2.1", "Era")

local MagnetsOne, MagnetsTwo = UI:AddTab("Magnets", "Catching") do
local Section = MagnetsOne:AddSeperator("Catching") do
  
local player = game.Players.LocalPlayer
local rs = game:GetService("RunService")

-- Define variables to store the range values
local legitRange = 0
local leagueRange = 0

-- Function to move the ball
function moveBall(ball)
    if ball and player.Character then
        local leftArm = player.Character:FindFirstChild("Left Arm")
        if leftArm then
            ball.CanCollide = true
            local startPosition = ball.Position
            local endPosition = leftArm.Position
            local direction = (endPosition - startPosition).Unit
            local distance = (endPosition - startPosition).Magnitude
            local speed = distance / 3000
            local startTime = tick()

            rs:BindToRenderStep("MoveBall", Enum.RenderPriority.Camera.Value + 20, function()
                local elapsedTime = tick() - startTime
                local t = math.min(elapsedTime / speed, 1)
                local newPosition = startPosition + direction * distance * t
                ball.CFrame = CFrame.new(newPosition)
                if t >= 15 then
                    rs:UnbindFromRenderStep("MoveBall")
                    ball.CanCollide = true
                end
            end)
        end
    end
end

-- Function to check if the football is within range based on slider values
function isWithinRange(football)
    local mag = (player.Character.Torso.Position - football.Position).Magnitude
    if (mag <= 15 and mag <= legitRange) or (mag <= 5 and mag <= leagueRange) then
        return true
    end
    return false
end

-- Listen to slider changes and update the range variables
local SliderLegit = Section:AddSlider({
    title = "Legit Range (Don't Turn On Magnets)",
    values = {min = 0, max = 15, default = 0},
    callback = function(set)
        legitRange = set
    end,
})

local SliderLeague = Section:AddSlider({
    title = "League Range (Don't Turn On Magnets)",
    values = {min = 0, max = 5, default = 0},
    callback = function(set)
        leagueRange = set
    end,
})

rs.Stepped:Connect(function()
    local closestBall = nil
    local closestDist = math.huge

    for _, v in ipairs(workspace:GetChildren()) do
        if v.Name == "Football" and v:IsA("BasePart") and isWithinRange(v) then
            local mag = (player.Character.Torso.Position - v.Position).Magnitude
            if mag < closestDist then
                closestBall = v
                closestDist = mag
            end
        end
    end

    if closestBall then
        moveBall(closestBall)
    end
end)



function regular()
    if blatoggle == true then
        task.wait()
        local UserInputService = game:GetService("UserInputService")
        local player = game.Players.LocalPlayer

        local catchRight
        repeat
            catchRight = player.Character and player.Character:FindFirstChild("CatchRight")
            wait()
        until catchRight

        local maxDistance = 50^2

        local closestDist = maxDistance
        local closestFootball = nil
        local playerPos = catchRight.Position

        for i, v in pairs(game.workspace:GetChildren()) do
            if v.Name == "Football" and v:IsA("BasePart") then
                local dist = (v.Position - playerPos).Magnitude
                if dist < closestDist and dist <= blatant then
                    closestDist = dist
                    closestFootball = v
                end
            end
        end

        if closestFootball then
            local steps = 30
            for i = 1, steps do
                closestFootball.CFrame = CFrame.new(catchRight.Position + Vector3.new(1, 1, 1))
                wait()
            end
        end
    else
        if blatoggle == false then
            blatant = 0
        end
    end        
end

local Toggle = Section:AddToggle({
    title = "Magnet",
    desc = "Enable regular function",
    callback = function(state)
        blatoggle = state
        if blatoggle == true then
            task.wait()
            local UserInputService = game:GetService("UserInputService")
            UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    regular()
                end
            end)
        end
    end
})

local formulas = {
    ["Legit"] = function(power)
        return 2 + (power / 2.5)
    end,
    ["Regular"] = function()
        return 12
    end,
    ["Blatant"] = function()
        return 25
    end,
    ["League"] = function(power)
        return 1.45 + (power / 3.25)
    end,
}

local magnetType = "Legit"
local MagnetRangeSlider = 0

local blatantOptions = {"Legit", "Blatant", "League", "Regular"}

local dropdown = Section:AddDropdown({
    title = "Magnet Type",
    options = blatantOptions,
    callback = function(selected, actual)
        magnetType = blatantOptions[selected]
        if magnetType == "Regular" or magnetType == "League" or magnetType == "Blatant" then
        
        end
    end,
})

    if mode == "Regular" then
        MaxDistance = 25 -- Set the range for Regular mode
    elseif mode == "League" then
        MaxDistance = 5 -- Set the range for League mode
    elseif mode == "Blatant" then
        MaxDistance = 15 -- Set the range for Blatant mode
    elseif mode == "Legit" then
        MaxDistance = 15 -- Set the range for Legit mode
    end




local Slider = Section:AddSlider({
    title = "Magnet Range",
    values = {min = 0, max = 60, default = 0},
    callback = function(set)
        if blatoggle == true then
            blatant = set
        else
            if blatoggle == false then
                blatant = 0
            end
        end
    end,
})





local MagnetRangeSlider = Section:AddSlider({
    title = "Magnet Power",
    values = {min = 0, max = 20, default = 0},
    callback = function(set)
        Range = set  
    end,
})


local CatchPercentageSlider = Section:AddSlider({
    title = "Catch %",
    values = {min = 0, max = 100, default = 0},
    callback = function(set)
        catchPercentage = v
    end,
})





local MagnetDelaySlider = Section:AddSlider({
    title = "Magnet Delay",
    values = {min = 0, max = 3, default = 0},
    callback = function(set)
        Delay = v
    end,
})



local player = game.Players.LocalPlayer
local runService = game:GetService("RunService")
local PullVectorEnabled = false
local PullVectorDistance = 10

local function moveBall(ball)
   if ball and player.Character then
       local direction = (ball.Position - player.Character.HumanoidRootPart.Position).Unit
       player.Character.HumanoidRootPart.Velocity = direction * 50  -- Adjust the velocity as desired
   end
end

local function onRunServiceStepped()
   if PullVectorEnabled then
       for _, ball in ipairs(workspace:GetChildren()) do
           if ball.Name == "Football" and ball:IsA("BasePart") then
               local distance = (player.Character.HumanoidRootPart.Position - ball.Position).Magnitude
               if distance < PullVectorDistance then
                   moveBall(ball)
               end
           end
       end
   end
end

local SteppedConnection = nil

local PullVectorToggle = Section:AddToggle({
    title = "Pull Vector",
    desc = "Pull the ball towards you when enabled",
    callback = function(state)
        PullVectorEnabled = state
        if state then
            SteppedConnection = runService.Stepped:Connect(onRunServiceStepped)
        else
            if SteppedConnection then
                SteppedConnection:Disconnect()
            end
        end
    end,
})

local PullVectorDistanceSlider = Section:AddSlider({
    title = "Pull Vector Distance",
    values = {min = 0, max = 50, default = 0},
    callback = function(value)
        PullVectorDistance = value
    end,
})



local maxCatchRange = 15

local hitboxActive = false  -- To track whether hitbox is active

local function createHitbox(football)
    local hitbox = Instance.new("Part")
    hitbox.Size = Vector3.new(30, 20, 30)
    hitbox.Anchored = true
    hitbox.CanCollide = false
    hitbox.Transparency = 0.5
    hitbox.BrickColor = BrickColor.new("Cool grey")
    hitbox.Parent = game.Workspace
    
    local function updateHitboxPosition()
        hitbox.CFrame = CFrame.new(football.Position)
    end
    
    local function playerInRange(player)
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            return (player.Character.HumanoidRootPart.Position - football.Position).Magnitude <= maxCatchRange
        end
        return false
    end
    
    local hitboxDestroyTimer = 5
    local startTime = tick()
    
    local connection
    connection = game:GetService("RunService").RenderStepped:Connect(function()
        if hitboxActive then
            updateHitboxPosition()
            
            if tick() - startTime >= hitboxDestroyTimer then
                hitbox:Destroy()
                connection:Disconnect()
            else
                for _, player in pairs(game.Players:GetPlayers()) do
                    if football:FindFirstChild("IsCaught") then
                        break
                    end

                    if playerInRange(player) then
                        print(player.Name .. " is in range to catch the football!")
                    end
                end
            end
        end
    end)
end

local function onFootballAdded(newFootball)
    if hitboxActive and newFootball.Name == "Football" then
        createHitbox(newFootball)
    end
end

game.Workspace.ChildAdded:Connect(onFootballAdded)

local masterToggle = Section:AddToggle({
    title = "Football Hitbox",
    desc = "BigBlackhitbox",
    callback = function(state)
        hitboxActive = state
    end,
})



local Section = MagnetsTwo:AddSeperator("V Catching/Magnets") do



local EraMagnets = true
local MaxDistance = 50 -- Biggest Range Firetouch can go
local MinFootballSize = 5 
local player = game:GetService("Players").LocalPlayer

local function CatchFootball()
    while EraMagnets do
        wait()
        local football = game.Workspace:WaitForChild("Football")
        local humanoid = game.Players.LocalPlayer.Character.HumanoidRootPart

        for index, football in ipairs(workspace:GetChildren()) do
            if football.Name == "Football" and football:IsA("BasePart") and not football.Anchored then
                local mag = (football.Position - humanoid.Position).magnitude
                local footballSize = football.Size.Magnitude

                if mag <= MaxDistance and footballSize <= MinFootballSize then
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 1)
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 0)
                    wait()
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 1)
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 0)
                end
            end
        end
    end
end

local masterToggle = Section:AddToggle({
    title = "Football Reach",
    desc = "Infinite Distance Magnets",
    callback = function(state)
           EraMagnets = state
        if EraMagnets then
            CatchFootball()
        end
    end,
})


local KiwiMagnets = true
local MaxDistance = 500
local MinFootballSize = 500000000

local player = game:GetService("Players").LocalPlayer

local function TapFootball(football)
    local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    local catchRight = game.Players.LocalPlayer.Character:WaitForChild("CatchRight")

    if humanoid and catchRight and football then
        local startPosition = football.Position
        local endPosition = catchRight.Position
        local direction = (endPosition - startPosition).unit
        local distance = (endPosition - startPosition).magnitude
        local speed = distance / 500 -- Adjust the speed as needed

        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = direction * speed
        bodyVelocity.MaxForce = Vector3.new(400000, 400000, 400000) -- Adjust the force as needed
        bodyVelocity.Parent = football

        wait(0.1) -- Adjust the duration as needed to control the "tap" effect

        bodyVelocity:Destroy()
    end
end

local function CatchFootball()
    while KiwiMagnets do
        wait()
        local football = game.Workspace:FindFirstChild("Football")

        if football and football:IsA("BasePart") and not football.Anchored then
            local mag = (football.Position - player.Character.HumanoidRootPart.Position).magnitude
            local footballSize = football.Size.Magnitude

            if mag <= MaxDistance and footballSize <= MinFootballSize then
                TapFootball(football)
            end
        end
    end
end

-- Define the master toggle
local masterToggle = Section:AddToggle({
    title = "Football Reach v2",
    desc = "",
    callback = function(state)
        KiwiMagnets = state
        if KiwiMagnets then
            CatchFootball()
        end
    end,
})

local ballTpToggle = Section:AddToggle({
    title = "Auto Teleport To Football",
    desc = "Toggle Auto Teleport To Football",
    callback = function(state)
        coroutine.resume(
            coroutine.create(
                function()
                    repeat
                        wait(.25)
                    until ERA_READY and era and era.ballTP_enabled
                    local function getball()
                        return workspace:FindFirstChild("Football")
                    end
                    while step:wait() do
                        if era.ballTP_enabled then
                            pcall(
                                function()
                                    char["Catch Left"].Size = char["Catch Left"].Size.Unit * 10
                                    char["Catch Right"].Size = char["Catch Right"].Size.Unit * 10
                                end
                            )
                            local balltppart =
                                create(
                                "Part",
                                ws,
                                {
                                    Anchored = true,
                                    CanCollide = false,
                                    Transparency = 1,
                                    Size = v3.new(1, 1, 1)
                                }
                            )
                            local fb = getball()
                            local function check1()
                                return getball() and status.Value == "InPlay" and qb.Value ~= plr
                            end
                            if check1() and (fb.Position - hrp.Position).Magnitude <= era.ballTP_maxDist then
                                balltppart.Position = fb.Position
                                fb.Size = fb.Size.Unit * 10
                                local p1 = fb.Position
                                wait(.1)
                                local p2 = fb.Position
                                local dir = (p2 - p1).Unit
                                local ping = getPing() * 2 + getServerPing()
                                local att0 = create("Attachment", hrp)
                                local att1 =
                                    create(
                                    "Attachment",
                                    balltppart,
                                    {
                                        Position = pos
                                    }
                                )
                                local rope =
                                    create(
                                    "RopeConstraint",
                                    balltppart,
                                    {
                                        Length = 0,
                                        Restitution = 0,
                                        Attachment0 = att0,
                                        Attachment1 = att1,
                                        Enabled = true
                                    }
                                )
                                repeat
                                    if playtype.Value == "normal" then
                                        local p1 = fb.Position
                                        wait(.1)
                                        local p2 = fb.Position
                                        local dir = (p2 - p1).Unit
                                        local pos = getPosInXSeconds(fb.Position, dir, fb.Velocity.Magnitude, ping / 1000)
                                        balltppart.Position = pos
                                    else
                                        balltppart.Position = fb.Position
                                    end
                                    step:wait()
                                until status.Value == "DeadPlay" or not getball()
                                att0:Destroy()
                                att1:Destroy()
                                rope:Destroy()
                                balltppart:Destroy()
                            end
                        end
                    end
                end
            )
        )
    end
})


local MagnetPowerSlider = Section:AddSlider({
    title = "blatant Catching",
    values = {min = 0, max = 50, default = 0},
    callback = function(set)
        blatantcatching = set
    end,
})


local MagnetPowerSlider = Section:AddSlider({
    title = "Legit Catching",
    values = {min = 0, max = 50, default = 0},
    callback = function(set)
        Legitcatching = set
    end,
})

local EraMagnets = true
local MaxDistance = 25

local player = game:GetService("Players").LocalPlayer

local function CatchFootball()
    while EraMagnets do
        wait()
        local football = game.Workspace:WaitForChild("Football")
        local humanoid = game.Players.LocalPlayer.Character.HumanoidRootPart

        for index, football in ipairs(workspace:GetChildren()) do
            if football.Name == "Football" and football:IsA("BasePart") and not football.Anchored then
                local mag = (football.Position - humanoid.Position).magnitude
                if mag <= MaxDistance then
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 0)
                    wait()
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 0)
                end
            end
        end
    end
end

-- Define the master toggle
local masterToggle = Section:AddToggle({
    title = "increase Hands",
    desc = "",
    callback = function(state)
        KiwiMagnets = state
        if KiwiMagnets then
            CatchFootball()
        end
    end,
})

-- Define the slider
local Magnetsslider = Section:AddSlider({
    title = "Hand size",
    values = {min = 1, max = 10, default = 1},
    callback = function(set)
      Magnet = v
    end,
})
local KiwiMagnets = true
local MaxDistance = 23
local MinFootballSize = 5 -- Adjust this value as needed

local player = game:GetService("Players").LocalPlayer

local function CatchFootball()
    while KiwiMagnets do
        wait()
        local football = game.Workspace:WaitForChild("Football")
        local humanoid = game.Players.LocalPlayer.Character.HumanoidRootPart

        for index, football in ipairs(workspace:GetChildren()) do
            if football.Name == "Football" and football:IsA("BasePart") and not football.Anchored then
                local mag = (football.Position - humanoid.Position).magnitude
                local footballSize = football.Size.Magnitude

                if mag <= MaxDistance and footballSize <= MinFootballSize then
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 1)
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 0)
                    wait()
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 1)
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 0)
                end
            end
        end
    end
end


local KiwiMagnets = true
local MaxDistance = 23
local MinFootballSize = 5 -- Adjust this value as needed

local player = game:GetService("Players").LocalPlayer

local function CatchFootball()
    while KiwiMagnets do
        wait()
        local football = game.Workspace:WaitForChild("Football")
        local humanoid = game.Players.LocalPlayer.Character.HumanoidRootPart

        for index, football in ipairs(workspace:GetChildren()) do
            if football.Name == "Football" and football:IsA("BasePart") and not football.Anchored then
                local mag = (football.Position - humanoid.Position).magnitude
                local footballSize = football.Size.Magnitude

                if mag <= MaxDistance and footballSize <= MinFootballSize then
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 1)
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 0)
                    wait()
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 1)
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("CatchRight"), football, 0)
                end
            end
        end
    end
end

-- Define the master toggle
local masterToggle = Section:AddToggle({
    title = "increase Football",
    desc = "",
    callback = function(state)
        KiwiMagnets = state
        if KiwiMagnets then
            CatchFootball()
        end
    end,
})

-- Define the slider
local Magnetsslider = Section:AddSlider({
    title = "Football Size",
    values = {min = 1, max = 10, default = 1},
    callback = function(set)
        -- You can use the slider value for catch power if needed
    end,
})



end
end
end


local enabled = false
local autoAngle = false -- Auto Angle
local autoChooseThrowType = false -- Auto Choose Throw Type
local showBeam = false -- Determines if to show the beam projectile
local showCards = false -- Determines if to show cards or not
local throwHeightOffset = 0
local straightenThrowDirection = false -- Determines if to straighten the move direction
local leadDistance = 0 -- Lead Distance (self-explanatory)
local throwData = {
    power = 0,
    direction = Vector3.new(0, 0, 0),
    angle = 40
}

local QbOne, QbTwo = UI:AddTab("Qb", "Passing") do
local Section = QbOne:AddSeperator(" Passing") do
local masterToggle = Section:AddToggle({
title = "Enable QB Aimbot",
desc = "This is a small tip which will appear when the user hovers over this toggle. It works on all elements",
callback = function(state)
local enabled = true
local leadDistance = 5
task.spawn(function()
    --// qb gui initalization
    local gui; do

        local AimCard = Instance.new("ScreenGui")
        local Angle = Instance.new("Frame")
        local AngleCorner = Instance.new("UICorner")
        local AngleNum = Instance.new("TextLabel")
        local NumCorn = Instance.new("UICorner")
        local AngleLabel = Instance.new("TextLabel")
        local LabelCorner = Instance.new("UICorner")
        local Player = Instance.new("Frame")
        local PlayerCorn = Instance.new("UICorner")
        local PlayerText = Instance.new("TextLabel")
        local NumCorn2 = Instance.new("UICorner")
        local PlayerLabel = Instance.new("TextLabel")
        local LabelCorner2 = Instance.new("UICorner")
        local Mode = Instance.new("Frame")
        local Modecorn = Instance.new("UICorner")
        local ModeText = Instance.new("TextLabel")
        local NumCorn3 = Instance.new("UICorner")
        local ModeLabel = Instance.new("TextLabel")
        local LabelCorner3 = Instance.new("UICorner")
        
        -- Properties
        
        AimCard.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        AimCard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        
        Angle.Name = "Angle"
        Angle.Parent = AimCard
        Angle.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
        Angle.BorderColor3 = Color3.new(0, 0, 0)
        Angle.BorderSizePixel = 0
        Angle.Position = UDim2.new(0.110701106, 0, 0.447368413, 0)
        Angle.Size = UDim2.new(0, 100, 0, 100)
        Angle.ZIndex = 7
        
        AngleCorner.Name = "AngleCorner"
        AngleCorner.Parent = Angle
        
        AngleNum.Name = "AngleNum"
        AngleNum.Parent = Angle
        AngleNum.BackgroundColor3 = Color3.new(1, 1, 1)
        AngleNum.BackgroundTransparency = 1
        AngleNum.BorderColor3 = Color3.new(0, 0, 0)
        AngleNum.BorderSizePixel = 0
        AngleNum.Size = UDim2.new(0, 100, 0, 72)
        AngleNum.Font = Enum.Font.Gotham
        AngleNum.Text = "40"
        AngleNum.TextColor3 = Color3.new(1, 1, 1)
        AngleNum.TextScaled = true
        AngleNum.TextSize = 1
        AngleNum.TextWrapped = true
        
        NumCorn.Name = "NumCorn"
        NumCorn.Parent = AngleNum
        
        AngleLabel.Name = "AngleLabel"
        AngleLabel.Parent = Angle
        AngleLabel.BackgroundColor3 = Color3.new(1, 1, 1)
        AngleLabel.BackgroundTransparency = 1
        AngleLabel.BorderColor3 = Color3.new(0, 0, 0)
        AngleLabel.BorderSizePixel = 0
        AngleLabel.Position = UDim2.new(0, 0, 0.660000026, 0)
        AngleLabel.Size = UDim2.new(0, 100, 0, 34)
        AngleLabel.Font = Enum.Font.Gotham
        AngleLabel.Text = "Angle"
        AngleLabel.TextColor3 = Color3.new(0.396078, 1, 0.588235)
        AngleLabel.TextSize = 22
        
        LabelCorner.Name = "LabelCorner"
        LabelCorner.Parent = AngleLabel
        
        Player.Name = "Player"
        Player.Parent = AimCard
        Player.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
        Player.BorderColor3 = Color3.new(0, 0, 0)
        Player.BorderSizePixel = 0
        Player.Position = UDim2.new(0.110701106, 0, 0.563157916, 0)
        Player.Size = UDim2.new(0, 100, 0, 100)
        Player.ZIndex = 7
        
        PlayerCorn.Name = "PlayerCorn"
        PlayerCorn.Parent = Player
        
        PlayerText.Name = "PlayerText"
        PlayerText.Parent = Player
        PlayerText.BackgroundColor3 = Color3.new(1, 1, 1)
        PlayerText.BackgroundTransparency = 1
        PlayerText.BorderColor3 = Color3.new(0, 0, 0)
        PlayerText.BorderSizePixel = 0
        PlayerText.Size = UDim2.new(0, 100, 0, 72)
        PlayerText.Font = Enum.Font.Gotham
        PlayerText.Text = "Kiwi"
        PlayerText.TextColor3 = Color3.new(1, 1, 1)
        PlayerText.TextScaled = true
        PlayerText.TextSize = 1
        PlayerText.TextWrapped = true
        
        NumCorn2.Name = "NumCorn2"
        NumCorn2.Parent = PlayerText
        
        PlayerLabel.Name = "PlayerLabel"
        PlayerLabel.Parent = Player
        PlayerLabel.BackgroundColor3 = Color3.new(1, 1, 1)
        PlayerLabel.BackgroundTransparency = 1
        PlayerLabel.BorderColor3 = Color3.new(0, 0, 0)
        PlayerLabel.BorderSizePixel = 0
        PlayerLabel.Position = UDim2.new(0, 0, 0.660000026, 0)
        PlayerLabel.Size = UDim2.new(0, 100, 0, 34)
        PlayerLabel.Font = Enum.Font.Gotham
        PlayerLabel.Text = "Player"
        PlayerLabel.TextColor3 = Color3.new(0.396078, 1, 0.588235)
        PlayerLabel.TextSize = 22
        
        LabelCorner2.Name = "LabelCorner2"
        LabelCorner2.Parent = PlayerLabel
        
        Mode.Name = "Mode"
        Mode.Parent = AimCard
        Mode.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
        Mode.BorderColor3 = Color3.new(0, 0, 0)
        Mode.BorderSizePixel = 0
        Mode.Position = UDim2.new(0.110701106, 0, 0.33157894, 0)
        Mode.Size = UDim2.new(0, 100, 0, 100)
        Mode.ZIndex = 7
        
        Modecorn.Name = "Modecorn"
        Modecorn.Parent = Mode
        
        ModeText.Name = "ModeText"
        ModeText.Parent = Mode
        ModeText.BackgroundColor3 = Color3.new(1, 1, 1)
        ModeText.BackgroundTransparency = 1
        ModeText.BorderColor3 = Color3.new(0, 0, 0)
        ModeText.BorderSizePixel = 0
        ModeText.Size = UDim2.new(0, 100, 0, 72)
        ModeText.Font = Enum.Font.Gotham
        ModeText.Text = "Dime"
        ModeText.TextColor3 = Color3.new(1, 1, 1)
        ModeText.TextScaled = true
        ModeText.TextSize = 1
        ModeText.TextWrapped = true
        
        NumCorn3.Name = "NumCorn3"
        NumCorn3.Parent = ModeText
        
        ModeLabel.Name = "ModeLabel"
        ModeLabel.Parent = Mode
        ModeLabel.BackgroundColor3 = Color3.new(1, 1, 1)
        ModeLabel.BackgroundTransparency = 1
        ModeLabel.BorderColor3 = Color3.new(0, 0, 0)
        ModeLabel.BorderSizePixel = 0
        ModeLabel.Position = UDim2.new(0, 0, 0.660000026, 0)
        ModeLabel.Size = UDim2.new(0, 100, 0, 34)
        ModeLabel.Font = Enum.Font.Gotham
        ModeLabel.Text = "Mode"
        ModeLabel.TextColor3 = Color3.new(0.396078, 1, 0.588235)
        ModeLabel.TextSize = 22
        
        LabelCorner3.Name = "LabelCorner3"
        LabelCorner3.Parent = ModeLabel
        
        gui = AimCard
    end
    --// main
    local modes = {
        ["Dime"] = "Bullet",
        ["Bullet"] = "Dime"
    }
    local players = game:GetService("Players")
    local runService = game:GetService("RunService")
    local userInputService = game:GetService("UserInputService")
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local player = players.LocalPlayer
    local angle = 40
    local target = nil
    local locked = false
    local realpower = 0
    local camera = workspace.CurrentCamera
    local highlight = Instance.new("Highlight")
    local sphere = Instance.new("Part")
    local upower, udirection = 0, Vector3.new(0, 0, 0)
    local mouse = loadstring(game:HttpGet("https://raw.githubusercontent.com/vFishyTurtle/UI-Libraries/main/Apple%20Library/a"))()
    local mouseRaycastParams = RaycastParams.new()	
    local usePart = Instance.new("Part")
    usePart.Anchored = true
    usePart.CanCollide = false
    usePart.Size = Vector3.new(2048, 1, 2048)
    usePart.Transparency = 1
    usePart.Parent = workspace
    usePart.Position = player.Character.HumanoidRootPart.Position - Vector3.new(0, 2, 0)
    mouseRaycastParams.FilterType = Enum.RaycastFilterType.Include
    mouseRaycastParams.FilterDescendantsInstances = {usePart}
    mouse:SetRaycastParams(mouseRaycastParams)

    local function getMoveDirection(target)
        if players:GetPlayerFromCharacter(target) then
            return target.Humanoid.MoveDirection
        else
            return (target.Humanoid.WalkToPoint - target.Head.Position).Unit
        end
    end

    local function findPower(pos)
        local powerTable = {
            [10] = 55,
            [20] = 60,
            [30] = 65,
            [35] = 70,
            [40] = 75,
            [50] = 80,
            [60] = 85,
            [70] = 90,
            [80] = 95,
        }
        local distance = (player.Character.Head.Position - pos).Magnitude
        local lDiff = math.huge
        local power = 0
        local pdistance = nil
        local reachedDis = 0
        local nextDis = 0
        local naturalPower = 0
        for dis, pwr in pairs(powerTable) do
            dis *= 3
            if distance > dis and dis > reachedDis then
                power = pwr
                naturalPower = pwr
                pdistance = dis
                reachedDis = dis
                if dis == 90 then nextDis = dis + 15 else nextDis = dis + 30 end
            end
        end
        local diff = math.clamp(nextDis - distance, 0, math.huge)
        local required = (nextDis - reachedDis)
        local nextPower = powerTable[nextDis / 3] or 75
        local percentage = diff / required
        --print(diff, required, nextPower, power, percentage, (nextPower - power) - ((nextPower - power) * percentage))
        power += math.clamp((nextPower - power) - ((nextPower - power) * percentage), 0, 100)
        if power ~= power then
            power = 50
        end
        return power - 5, naturalPower - 5
    end

    local function calculateVelocity(x0, d0, t)
        local g = Vector3.new(0, -28, 0)
        local v0 = (d0 - x0 - 0.5*g*t*t)/t;
        local dir = ((x0 + v0) - x0).Unit
        local power = v0.Y / dir.Y
        return v0, dir, power
    end

    local function findtarget()
        local np = nil
        local nm = math.huge
        local s = {workspace}
        if workspace:FindFirstChild("npcwr") then
            table.insert(s, workspace.npcwr.a)
            table.insert(s, workspace.npcwr.b)
        end
        for i, p in pairs(s) do
            for i, c in pairs(p:GetChildren()) do
                if c:FindFirstChildWhichIsA("Humanoid") and c:FindFirstChild("HumanoidRootPart") then
                    local plr = players:GetPlayerFromCharacter(c)
                    if plr == player then continue end
                    if not plr and game.PlaceId ~= 8206123457 then continue end
                    if not player.Neutral then
                        if plr.Team ~= player.Team then
                            continue
                        end
                    end
                    local d = (c.HumanoidRootPart.Position - mouse.Hit.Position).Magnitude
                    if d < nm then
                        nm = d
                        np = c
                    end	
                end
            end
        end
        return np
    end

    local function methodIsA(self, method)
        return string.lower(self) == string.lower(method)
    end

    local remotes = {Fake = {}}

    local function spoofRemote(remote, funcOnFire)
        local fakeSelf = remote:Clone()
        fakeSelf.Parent = remote.Parent
        remote.Name = ""
        remotes[remote] = funcOnFire
        remotes.Fake[fakeSelf] = remote
    end

    local __namecall; __namecall = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        if methodIsA(method, "FireServer") and not checkcaller() and remotes.Fake[self]  then
            remotes.Fake[self]:FireServer(remotes[remotes.Fake[self]](...))
        end
        return __namecall(self, ...)
    end)

    local function hookFootball(fb)
        local ls = fb.Handle:WaitForChild("LocalScript", 1)
        if ls then
            ls.Enabled = false
            local remoteEvent = fb.Handle:FindFirstChild("RemoteEvent")
            if remoteEvent then
                spoofRemote(remoteEvent, function(old)
                    local args = {old}
                    if args[1] == "Clicked" then
                        if enabled then
                            return unpack({"Clicked", player.Character.Head.Position, player.Character.Head.Position + (udirection * 10000), (game.PlaceId == 8206123457 and upower) or 61, (game.PlaceId ~= 8206123457 and upower) or nil})
                        else
                            local direction = (player:GetMouse().Hit.Position - camera.CFrame.Position).Unit
                            return unpack({"Clicked", player.Character.Head.Position, player.Character.Head.Position + (direction * 10000), (game.PlaceId == 8206123457 and realpower) or 61, realpower})
                        end
                    else
                        return old
                    end
                end)
                fb:WaitForChild("Handle"):WaitForChild("LocalScript").Enabled = true
            end
            ls.Enabled = true
        end
    end

    player.Character.ChildAdded:Connect(function(fb)
        if fb:IsA("Tool") then
            fb:WaitForChild("Handle")
            hookFootball(fb)
        end
    end)

    userInputService.InputBegan:Connect(function(input, gp)
        if not gp then
            if input.KeyCode == Enum.KeyCode.R then
                while userInputService:IsKeyDown(Enum.KeyCode.R) and gui.Mode.ModeText.Text ~= "Bullet"  do
                    angle = angle + 5
                    angle = math.clamp(angle, 5, 90)
                    gui.Angle.AngleNum.Text = angle
                    task.wait(1 / 6)
                end
            elseif input.KeyCode == Enum.KeyCode.F then
                while userInputService:IsKeyDown(Enum.KeyCode.F) and gui.Mode.ModeText.Text ~= "Bullet" do
                    angle = angle - 5
                    angle = math.clamp(angle, 5, 90)
                    gui.Angle.AngleNum.Text = angle
                    task.wait(1 / 6)
                end
            elseif input.KeyCode == Enum.KeyCode.Q then
                locked = not locked
            elseif input.KeyCode == Enum.KeyCode.Z then
                if angle == 15 then
                    angle = 40
                    angle = math.clamp(angle, 5, 90)
                    gui.Angle.AngleNum.Text = angle
                    gui.Mode.ModeText.Text = "Dime"
                    leadDistance = 6
                else
                    angle = 15
                    angle = math.clamp(angle, 15, 15)
                    gui.Angle.AngleNum.Text = angle
                    gui.Mode.ModeText.Text = "Bullet"
                    leadDistance = 10
                end
            end
        end
    end)        

    local function calculateLanding(power, direction)
        local vel = power * direction
        local origin = player.Character.Head.Position + direction * 5
        local peakTime = vel.Y / 28
        return origin + Vector3.new(vel.X * peakTime * 2, 0, vel.Z * peakTime * 2)	
    end

    local line = Drawing.new("Line")
    line.Visible = false
    line.Color = Color3.fromRGB(255, 255, 255)
    line.Thickness = 1

    sphere.Size = Vector3.new(2, 2, 2)
    sphere.Material = Enum.Material.ForceField
    sphere.Anchored = true
    sphere.CanCollide = false
    sphere.Color = Color3.fromRGB(101, 255, 150)
    sphere.Parent = workspace
    highlight.FillColor = Color3.fromRGB(101, 255, 150)

    player.PlayerGui.ChildAdded:Connect(function(child)
        if child.Name == "BallGui" then
            local disp = child:WaitForChild("Frame"):WaitForChild("Disp")
            disp.Changed:Connect(function()
                realpower = tonumber(disp.Text)
            end)
        end
    end)
 
    while true do
        runService.RenderStepped:Wait()
        pcall(function()
            if not locked then
                target = findtarget()
            end
            gui.Enabled = player.PlayerGui:FindFirstChild("BallGui") and enabled
            if target and enabled and player.PlayerGui:FindFirstChild("BallGui") then
                local position, onScreen = workspace.CurrentCamera:WorldToViewportPoint(target.HumanoidRootPart.Position)
                local power = findPower(target.Head.Position)
                local moveDirection = getMoveDirection(target)
                local assumedDirection = (target.Head.Position - player.Character.Head.Position).Unit
                local speed = (assumedDirection * power).Magnitude
                local t = ((target.Head.Position - player.Character.Head.Position).Magnitude / speed) * (angle / 22)
                local velocity, dir, pwr = calculateVelocity(player.Character.Head.Position + assumedDirection * 5, target.Head.Position + (moveDirection * 20 * t) + moveDirection * leadDistance, t)
                highlight.Parent = target
                upower = math.clamp(pwr, 0, 95)
                udirection = dir
                sphere.Transparency = 0
                gui.Player.PlayerText.Text = target.Name
                sphere.Position = calculateLanding(upower, udirection)
                if onScreen then
                    line.Visible = false
                    line.From = workspace.CurrentCamera:WorldToViewportPoint(player.Character.Football.Handle.Position)
                    line.To = Vector2.new(position.X, position.Y)
                else
                    line.Visible = false
                end
            else
                line.Visible = true
                highlight.Parent = nil
                sphere.Transparency = 1
            end
        end)
    end
end)
end
})


local function beamProjectile(g, v0, x0, t)
    local c = 0.5 * 0.5 * 0.5
    local p3 = 0.5 * g * t * t + v0 * t + x0
    local p2 = p3 - (g * t * t + v0 * t) / 3
    local p1 = (c * g * t * t + 0.5 * v0 * t + x0 - c * (x0 + p3)) / (3 * c) - p2

    local curve0 = (p1 - x0).magnitude
    local curve1 = (p2 - p3).magnitude

    local b = (x0 - p3).unit
    local r1 = (p1 - x0).unit
    local u1 = r1:Cross(b).unit
    local r2 = (p2 - p3).unit
    local u2 = r2:Cross(b).unit
    b = u1:Cross(r1).unit

    local cf1 = CFrame.new(
        x0.x, x0.y, x0.z,
        r1.x, u1.x, b.x,
        r1.y, u1.y, b.y,
        r1.z, u1.z, b.z
    )

    local cf2 = CFrame.new(
        p3.x, p3.y, p3.z,
        r2.x, u2.x, b.x,
        r2.y, u2.y, b.y,
        r2.z, u2.z, b.z
    )

    return curve0, -curve1, cf1, cf2
end

local isEnabled = false

local function enableFunctionality()
    isEnabled = true

    local func = workspace.ChildAdded:Connect(function(f)
        if isEnabled and f.Name == "Football" and f:IsA("BasePart") then
            task.wait()
            local g = Vector3.new(0, -28.1, 0)
            local t = 8
            local v0 = f.Velocity
            local x0 = f.Position
            local curve0, curve1, cf1, cf2 = beamProjectile(g, v0, x0, t)
            local line = Instance.new("Beam")
            local att0 = Instance.new("Attachment")
            local att1 = Instance.new("Attachment")
line.Color = ColorSequence.new(Color3.fromRGB(192, 192, 192)) -- Light grey color
            line.Transparency = NumberSequence.new(0, 0)
            line.CurveSize0 = curve0
            line.CurveSize1 = curve1
            line.Name = "Catch"
            line.Parent = workspace.Terrain

            line.Segments = 10000
            att0.Parent = workspace.Terrain
            att1.Parent = workspace.Terrain
            att0.CFrame = att0.Parent.CFrame:Inverse() * cf1
            att1.CFrame = att1.Parent.CFrame:Inverse() * cf2
            line.Attachment0 = att0
            line.Attachment1 = att1
            line.Width0 = 1
            line.Width1 = 1

            wait(7)
            att0:Destroy()
            att1:Destroy()
            line:Destroy()
        end
    end)
end

local Toggle = Section:AddToggle({
    title = "qb Beam",
    desc = "Enable regular function",
    callback = function(state)
        if state then
            enableFunctionality()
        else
            isEnabled = false
        end
    end
})

local AutoQBToggle = Section:AddToggle({
    title = "Auto QB",
    callback = function(data)
        local blacklisted = {"KICKOFF", "PUNT", "PAT"}
        while true do
            task.wait(1/30)
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and replicatedStorage.Values:FindFirstChild("Status") and replicatedStorage.Values.Status.Value == "PrePlay" and workspace:FindFirstChild("Football") and data.Enabled and not table.find(blacklisted, replicatedStorage.Values.StatusTag.Value) and replicatedStorage.Values.PossessionTag.Value == player.Team.Name then
                player.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("Football").CFrame
                repeat task.wait() until not workspace:FindFirstChild("Football")
            end
        end
    end
})


local masterToggle = Section:AddToggle({
title = "auto angle",
desc = "This is a small tip which will appear when the user hovers over this toggle. It works on all elements",
callback = function(state)
autoAngle = v
end
})



local masterToggle = Section:AddToggle({
title = "anti OOB",
desc = "This is a small tip which will appear when the user hovers over this toggle. It works on all elements",
callback = function(state)
straightenThrowDirection = v
end
})






local Qbslider = Section:AddSlider({
title = " Lead Distance",
values = {min=0,max=50,default=0},
callback = function(set)
leadDistance = v
end,
})






local Qbslider = Section:AddSlider({
title = "Pass Height",
values = {min=0,max=5.3,default=0},
callback = function(set)
PassHeight = v
end,
})


local Qbslider = Section:AddSlider({
title = "Catching Chance",
values = {min=0,max=5.3,default=0},
callback = function(set)
CatchingChance = v
end,
})


local slider = Section:AddSlider({
title = "Perfect dime chance",
values = {min=0,max=3,default=0},
callback = function(set)
PerfectDimeChance = v
end,
})

local Section = QbTwo:AddSeperator("Kicking") do
local autokick = false

task.spawn(function()
    getgenv().Variables = {}

    Variables.Players = game:GetService("Players")
    Variables.ReplicatedStorage = game:GetService("ReplicatedStorage")
    Variables.UserInputService = game:GetService("UserInputService")
    Variables.Client = Variables.Players.LocalPlayer
    Variables.Character = Variables.Client.Character or Variables.Client.CharacterAdded:Wait()

    Variables.Client.CharacterAdded:Connect(function(Character)
        Variables.Character = Character
    end)

    local Aimbot = {}

    function Aimbot:GetAccuracyArrow(Arrows)
        local Y = 0
        local Arrow1 = nil

        for _, Arrow in pairs(Arrows) do
            if Arrow.Position.Y.Scale > Y then
                Y = Arrow.Position.Y.Scale
                Arrow1 = Arrow
            end
        end

        return Arrow1
    end

    Variables.Client.PlayerGui.ChildAdded:Connect(function(child)
        if child.Name == "KickerGui" and autokick == true then
            local KickerGui = child
            local Meter = KickerGui:FindFirstChild("Meter")
            local Cursor = Meter:FindFirstChild("Cursor")
            local Arrows = {}

            for i, v in pairs(Meter:GetChildren()) do
                if string.find(v.Name:lower(), "arrow") then
                    table.insert(Arrows, v)
                end
            end

            repeat
                task.wait()
            until Cursor.Position.Y.Scale < 0.02
            mouse1click()
            repeat
                task.wait()
            until Cursor.Position.Y.Scale >= Aimbot:GetAccuracyArrow(Arrows).Position.Y.Scale + (.03 / (100 / 100))
            mouse1click()
        end
    end)
end)

local masterToggle = Section:AddToggle({
    title = "Kicker aimbot",
    desc = "Catching football for GAY KIDS",
    callback = function(state)
        autokick = state
    end
})


-- Kicker Aimbot
local kickerAimbotToggle = Section:AddToggle({
    title = "Kicker Aimbot v2 ",
    desc = "Enable/Disable Kicker Aimbot",
    callback = function(state)
        ezstats.kickerAimbotEnabled = state
    end
})

coroutine.resume(
    coroutine.create(
        function()
            repeat
                wait(.25)
            until Era_READY and Era and Era.kickerAimbotEnabled
            local function playclick()
                values.Ball.Value.RemoteEvent:fireServer("PlayClick")
            end
            local click_func = mouse1click or leftpress or (Input and Input.LeftClick()) or playclick
            local mousemove = mousemoveabs or function()
            end
            local function kick()
                if Era.kickerAimbotEnabled then
                    repeat
                        step:wait()
                    until plr.PlayerGui:FindFirstChild("KickerGui")
                    local kickerGui = plr.PlayerGui:FindFirstChild("KickerGui")
                    local meter = kickerGui:FindFirstChild("Meter")
                    local cursor = meter:FindFirstChild("Cursor")
                    local mid = workspace.CurrentCamera.ViewportSize * Vector2.new(0.5, 0.5)
                    mousemove(mid.X, mid.Y)
                    click_func()
                    repeat
                        step:wait()
                    until cursor.Position.Y.Scale < 0.01
                    cursor.Position = UDim2.new(0, 0, 0.01, 0)
                    click_func()
                    repeat
                        step:wait()
                    until cursor.Position.Y.Scale > .85
                    cursor.Position = UDim2.new(0, 0, 0.9, 0)
                    click_func()
                end
            end
            if plr.PlayerGui:FindFirstChild("KickerGui") then
                wait(2)
                kick()
            end
            plr.PlayerGui.ChildAdded:Connect(
                function(c)
                    if c.Name == "KickerGui" then
                        wait(2)
                        kick()
                    end
                end
            )
        end
    )
)






local slider = Section:AddSlider({
    title = "Kicking Accuracy",
    values = { min = 0, max = 3, default = 0 },
    callback = function(value)
        PerfectKick = v
    end
})






end
end
end


local PhyOne, PhyTwo = UI:AddTab("Physics", "Misc") do
local Section = PhyOne:AddSeperator("Misc") do





local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local collisionEnabled = true

local function setCharacterCollision(enabled)
    for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            for _, part in ipairs(otherPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = enabled
                end
            end
        end
    end
end

local function checkProximity()
    while collisionEnabled do
        wait(0.1)
        local characters = workspace:GetChildren()
        for _, otherCharacter in ipairs(characters) do
            if otherCharacter:IsA("Model") and otherCharacter:FindFirstChild("HumanoidRootPart") then
                local distance = (humanoidRootPart.Position - otherCharacter.HumanoidRootPart.Position).magnitude
                if distance <= 5 then
                    setCharacterCollision(false)
                    wait(2)
                    setCharacterCollision(true)
                end
            end
        end
    end
end

local toggleValue = false


local antiLagToggle = Section:AddToggle({
    title = "Anti Lag",
    desc = "Toggle Anti Lag",
    callback = function(state)
        coroutine.resume(
            coroutine.create(
                function()
                    repeat
                        wait(.25)
                    until ERA_READY and era and era.antiLagEnabled
                    local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
                    local lighting = game:GetService("Lighting")
                    local t = workspace.Terrain
                    t.WaterWaveSize = 0
                    t.WaterWaveSpeed = 0
                    t.WaterReflectance = 0
                    t.WaterTransparency = 0
                    lighting.GlobalShadows = false
                    lighting.FogEnd = 9e9
                    lighting.Brightness = 0
                    sethiddenproperty(lighting, "Technology", Enum.Technology.Compatibility)
                    settings().Rendering.QualityLevel = "Level03"
                    for i, v in pairs(game:GetDescendants()) do
                        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                            v.Material = "Plastic"
                            v.Reflectance = 0
                        elseif (v:IsA("Decal") or v:IsA("Texture") and decalsyeeted) and v.Parent.Name ~= "Football" then
                            v.Transparency = 1
                        elseif (v:IsA("ParticleEmitter") or v:IsA("Trail")) and v.Parent.Name ~= "Football" then
                            v.Lifetime = NumberRange.new(0)
                        elseif v:IsA("Explosion") then
                            v.BlastPressure = 1
                            v.BlastRadius = 1
                        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                            v.Enabled = false
                        elseif v:IsA("MeshPart") then
                            v.Material = "Plastic"
                            v.Reflectance = 0
                            v.TextureID = 10385902758728957
                        end
                    end
                    for i, e in pairs(lighting:GetChildren()) do
                        if
                            e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or
                                e:IsA("BloomEffect") or
                                e:IsA("DepthOfFieldEffect")
                         then
                            e.Enabled = false
                        end
                    end
                    workspace:WaitForChild("Models"):WaitForChild("Stadium"):Destroy()
                    workspace:WaitForChild("SkyWeather"):Destroy()
                end
            )
        )
    end
})




local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local collisionEnabled = true

local function setCharacterCollision(enabled)
    for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character then
            for _, part in ipairs(otherPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = enabled
                end
            end
        end
    end
end

local function checkProximity()
    while collisionEnabled do
        wait(0.1)
        local characters = workspace:GetChildren()
        for _, otherCharacter in ipairs(characters) do
            if otherCharacter:IsA("Model") and otherCharacter:FindFirstChild("HumanoidRootPart") then
                local distance = (humanoidRootPart.Position - otherCharacter.HumanoidRootPart.Position).magnitude
                if distance <= 5 then
                    setCharacterCollision(false)
                    wait(2)
                    setCharacterCollision(true)
                end
            end
        end
    end
end

local toggleValue = false

local masterToggle = Section:AddToggle({
    title = "Anti Jam",
    desc = "Makes you not get Jammed",
    callback = function(state)
        toggleValue = state
        collisionEnabled = state
        if state then
            checkProximity()
        end
    end,
})


    
    
-- Define the functions for Auto Swat
local autoswatv = 0
local enabledd = false
local connection

local function autoswatfunction()
    if enabledd then
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local RunService = game:GetService("RunService")

        local function checkDistance(part)
            local distance = (part.Position - humanoidRootPart.Position).Magnitude
            if distance <= autoswatv then
                keypress(0x52) -- Press 'R' key
                keyrelease(0x52) -- Release 'R' key
                task.wait()
            end
        end
        
        local function updateDistances()
            for _, v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "Football" and v:IsA("BasePart") then
                    checkDistance(v)
                end
            end
        end
        
        connection = RunService.Heartbeat:Connect(updateDistances)
    else
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end
end

local player = game.Players.LocalPlayer
local eventConnection -- To keep track of the connection

local function handleBall(ball)
    if ball.Name == "Football" and ball:IsA("BasePart") then
        local v0 = ball.Velocity
        local x0 = ball.Position
        local dt = 1/30
        local grav = Vector3.new(0, -28, 0)
        local points = {
            [1] = x0
        }
        local function check(p, v0)
            local raycastParams = RaycastParams.new()
            raycastParams.RespectCanCollide = true
            local ray = workspace:Raycast(p, Vector3.new(0, -1000, 0), raycastParams)
            local ray2 = workspace:Raycast(p, Vector3.new(0, -7.2 * 2, 0), raycastParams)
            return ray and not ray2
        end
        while true do
            if not check(points[#points], v0) then
                if v0.Y < 0 then
                    break
                end
            end
            local currentPoint = points[#points]
            v0 = v0 + grav * dt
            points[#points + 1] = currentPoint + (v0 * dt)
        end
        local optimal = points[#points]
        local part = Instance.new("Part")
        part.Anchored = true
        part.CanCollide = false
        part.Position = Vector3.new(optimal.X, player.Character.HumanoidRootPart.Position.Y + 1.5, optimal.Z)
        part.Parent = workspace
        part.Material = Enum.Material.Neon
        part.Size = Vector3.new(1.5, 1.5, 1.5)
        repeat task.wait() until ball.Parent ~= workspace
        part:Destroy()
    end
end

local function handleChildAdded(ball)
    task.wait()
    handleBall(ball)
end

local function toggleCallback(state)
    if state then
        eventConnection = workspace.ChildAdded:Connect(handleChildAdded)
    else
        if eventConnection then
            eventConnection:Disconnect()
            eventConnection = nil
        end
    end
end

local localToggle = Section:AddToggle({
    title = "Optimal Jump locations",
    desc = "Teleports you to the nearest player when you click Mouse Button 1",
    callback = toggleCallback,
})



-- Create the "Auto Swat" toggle
local ToggleAutoSwat = Section:AddToggle({
    title = "Auto Swat",
    desc = "Automatically swat the ball when within range",
    callback = function(value)
        enabledd = value
        autoswatfunction()
    end
})

-- Create the "Auto Swat Range" slider
local SliderAutoSwatRange = Section:AddSlider({
    title = "Auto Swat Range",
    min = 0.1,
    max = 45,
    value = 0,
    callback = function(value)
        autoswatv = value
    end
})


local autoJumpToggle = Section:AddToggle({
    title = "Auto Jump",
    desc = "Toggle Auto Jump",
    callback = function(state)
        coroutine.resume(
            coroutine.create(
                function()
                    repeat
                        wait(.25)
                    until ERA_READY and era and era.autoJumpEnabled
                    while rstep:wait() do
                        if era.autoJumpEnabled then
                            local fb = ws:FindFirstChild("Football")
                            if status.Value == "InPlay" and fb then
                                local fbpos = fb.Position
                                if fbpos.Y >= 7 and fbpos.Y <= hrp.Position.Y + getJumpHeightFromJumpPower() + 10 then
                                    local distXZ =
                                        (removeVectorComponent(fb.Position, "Y") -
                                        removeVectorComponent(hrp.Position, "Y")).Magnitude
                                    local distX = (fb.Position * v3.new(1, 0, 0) - hrp.Position * v3.new(1, 0, 0)).Magnitude
                                    local distZ = (fb.Position * v3.new(0, 0, 1) - hrp.Position * v3.new(0, 0, 1)).Magnitude
                                    if distX <= 10 and distZ <= fb.Position.Y then
                                        jump()
                                    end
                                end
                            end
                        end
                    end
                end
            )
        )
    end
})

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local shiftLockEnabled = false
local shiftKeyPressed = false
local autoShiftEnabled = false

local function isNearFootball()
    local character = Players.LocalPlayer.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart then
        return false
    end

    for _, football in ipairs(workspace:GetChildren()) do
        if football.Name == "Football" and football:IsA("Model") then
            local footballHandle = football:FindFirstChild("Handle")
            if footballHandle then
                local distance = (footballHandle.Position - humanoidRootPart.Position).Magnitude

                if distance < 10 then -- Adjust the distance as needed
                    return true
                end
            end
        end
    end

    return false
end

local function updateShiftLock()
    while true do
        wait(0.1) -- Adjust the wait time as needed

        local nearFootball = isNearFootball()
        local shiftPressed = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)

        if nearFootball or (shiftPressed and autoShiftEnabled) then
            if not shiftLockEnabled then
                UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
                shiftLockEnabled = true
            end
        else
            if shiftLockEnabled then
                UserInputService.MouseBehavior = Enum.MouseBehavior.Default
                shiftLockEnabled = false
            end
        end

        shiftKeyPressed = shiftPressed
    end
end

spawn(updateShiftLock) -- Start the Shift Lock update function in a separate thread

local masterToggle = Section:AddToggle({
    title = "Auto Shift",
    desc = "Enables or disables Auto Shift",
    callback = function(state)
        autoShiftEnabled = state
    end
})


-- Autoblock
local autoblockToggle = Section:AddToggle({
    title = "Auto Block",
    desc = "Enable/Disable Auto Block",
    callback = function(state)
        ezstats.autoblock_enabled = state
    end
})

coroutine.resume(
    coroutine.create(
        function()
            repeat
                wait(.25)
            until  Era_READY and Era and ERA.autoblock_enabled
            char:WaitForChild("BlockPart")

            local function modifyBlockRange(range)
                if char and hum and hrp then
                    local blockPart = char:WaitForChild("BlockPart")
                    if blockPart then
                        blockPart.Size = Vector3.new(0.5, 0.5, 1) * range
                    end
                end
            end

            --modifyBlockRange(20)

            local held = false
            local locked = false

            uis.InputBegan:Connect(
                function(k, gpe)
                    if not gpe and k.KeyCode == Enum.KeyCode.X then
                        held = true
                    end
                end
            )

            uis.InputEnded:Connect(
                function(k)
                    if k.KeyCode == Enum.KeyCode.X then
                        held = false
                    end
                end
            )

            local function blockPlr(plrname)
                modifyBlockRange(30)
                local plr2 = players:FindFirstChild(plrname)
                if plr2 then
                    if
                        --[[ values.Carrier.Value and ]] values.Status.Value == "InPlay" and char and hrp and
                        (not char:FindFirstChild("Football")) and
                        plr2.Character and
                        plr2.Character:FindFirstChild("HumanoidRootPart")
                    then
                        local hrp2 = plr2.Character:FindFirstChild("HumanoidRootPart")

                        local distFromPlayer = (hrp2.Position - hrp.Position).Magnitude
                        if distFromPlayer <= 15 then
                            local lv = hrp2.CFrame.lookVector * 10
                            local pos1 = hrp.Position
                            --[[ if ((distFromPlayer <= 5 and held) == true) or ((locked and held and distFromPlayer <= 15) == true) then
                        if not locked then
                            locked = true
                        end
                        if not held then locked = false end
                        local pos2 = hrp2.Position+(lv.Unit*7)
                        pos2_dist = (hrp.Position - pos2).Magnitude
                        pos1 = ((pos2_dist <= 7 and pos2) or hrp2.Position)
                    end ]]
                            --hrp.CFrame = CFrame.new(pos1,hrp.Position+Vector3.new(-lv.X,0,-lv.Z))
                            local lastpos = hrp.Position
                            --[[ for i=1,10 do ]]
                            local cf1 =
                                CFrame.new(
                                pos1,
                                v3.new(lastpos.X, hrp.Position.Y, lastpos.Z) + v3.new(-lv.X, 0, -lv.Z)
                            )
                            hrp.CFrame = cf1
                            --hrp.CFrame:Lerp(cf1,i)
                            --[[ rstep:wait()
                    end ]]
                            mainRemote:fireServer("PlayerActions", "execBlock", plrname, "Torso", nil)
                            mainRemote:fireServer("PlayerActions", "block", nil)
                            step:wait()
                            mainRemote:fireServer("PlayerActions", "blockTouchEnded", nil)
                        end
                    end
                end
                wait()
                modifyBlockRange(0)
            end

            local debounce = false

            while rstep:wait() do
                if not debounce then
                    debounce = true
                    if ezstats.autoblock_enabled then
                        for i, v in pairs(players:GetPlayers()) do
                            if v.Team ~= plr.Team then
                                blockPlr(v.Name)
                                rstep:wait()
                            end
                        end
                    end
                    wait()
                    debounce = false
                end
            end
        end
    )
)

-- Block Range
local blockRangeToggle = Section:AddToggle({
    title = "Block Range",
    desc = "Enable/Disable Block Range",
    callback = function(state)
        ezstats.blockRangeEnabled = state
    end
})

coroutine.resume(
    coroutine.create(
        function()
            repeat
                wait(.25)
            until Era_READY and ERA and ERA.blockRangeEnabled
            char:WaitForChild("BlockPart")
            local function modifyBlockRange(range)
                if char and hum and hrp then
                    local blockPart = char:WaitForChild("BlockPart")
                    if blockPart then
                        blockPart.Size = Vector3.new(0.5, 0.5, 1) * range
                    end
                end
            end
            while wait() do
                if ezstats.blockRangeEnabled then
                    if char:WaitForChild("BlockPart").Size ~= Vector3.new(0.5, 0.5, 1) * ezstats.blockRange then
                        modifyBlockRange(ezstats.blockRange)
                    end
                else
                    modifyBlockRange(10)
                    wait()
                end
            end
        end
    )
)


-- Auto Hands
local autoHandsToggle = Section:AddToggle({
    title = "Auto Hands",
    desc = "Enable/Disable Auto Hands",
    callback = function(state)
        ezstats.AutoHands = state
    end
})

coroutine.resume(
    coroutine.create(
        function()
            repeat
                wait(.25)
            until Era_READY and ERA and Era.AutoHands
            while rstep:wait() do
                pcall(function()
                    local fb = ws:FindFirstChild("Football")
                    if fb then
                        if values.Status.Value == "InPlay" and values.QB.Value ~= plr and
                            values.PlayType.Value == "normal" and
                            (hrp.Position - fb.Position).Magnitude <= 35 and
                            ezstats.AutoHands then
                            local controlsModule = require(plr.PlayerScripts.ClientMain.GameControls)
                            controlsModule.Catch(nil, false)
                        end
                    elseif Era.AutoHands and values.Carrier.Value and values.QB.Value and
                            values.QB.Value == values.Carrier.Value and
                            values.Carrier.Value.Team ~= plr.Team and
                            (values.QB.Value.Character.HumanoidRootPart.Position - hrp.Position).Magnitude <= 30
                    then
                        repeat
                            step:wait()
                        until thrown.Value
                    end
                end)
            end
        end
    )
)


local UserInputService = game:GetService("UserInputService")
local TeleportToNearestPlayerEnabled = false

local function GetNearestPlayer()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart then
        return nil
    end

    local nearestPlayer = nil
    local nearestDistance = math.huge

    for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player then
            local otherCharacter = otherPlayer.Character
            local otherHumanoidRootPart = otherCharacter and otherCharacter:FindFirstChild("HumanoidRootPart")

            if otherHumanoidRootPart then
                local distance = (otherHumanoidRootPart.Position - humanoidRootPart.Position).Magnitude

                if distance < nearestDistance then
                    nearestDistance = distance
                    nearestPlayer = otherPlayer
                end
            end
        end
    end

    return nearestPlayer
end

local TeleportToNearestPlayerToggle = Section:AddToggle({
    title = "Auto Click Aimbot",
    desc = "Teleports you to the nearest player when you click Mouse Button 1",
    callback = function(state)
        TeleportToNearestPlayerEnabled = state
    end,
})

UserInputService.InputBegan:Connect(function(input, _)
    if TeleportToNearestPlayerEnabled and input.UserInputType == Enum.UserInputType.MouseButton1 then
        local nearestPlayer = GetNearestPlayer()

        if nearestPlayer then
            local character = nearestPlayer.Character
            local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart then
                local playerCharacter = game.Players.LocalPlayer.Character
                local playerHumanoidRootPart = playerCharacter and playerCharacter:FindFirstChild("HumanoidRootPart")

                if playerHumanoidRootPart then
                    playerHumanoidRootPart.CFrame = humanoidRootPart.CFrame
                end
            end
        end
    end
end)

        local slider = Section:AddSlider({
title = "Auto click Size",
values = {min=0,max=30 ,default=0},
callback = function(set)

end,
})




local AutoFollowQb = false
local followCarrierTask

local function FollowCarrier()
    while AutoFollowQb do
        local carrier = game:GetService("ReplicatedStorage").Values.Carrier.Value
        if carrier and carrier:IsDescendantOf(game.Players) and carrier.Team ~= game.Players.LocalPlayer.Team then
            local humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid:MoveTo(carrier.Character.Torso.Position)
            end
        end
        wait()
    end
end

local function ToggleFollowCarrier(value)
    AutoFollowQb = value
    if value then
        followCarrierTask = task.spawn(FollowCarrier)
    else
        if followCarrierTask then
            followCarrierTask:cancel()
        end
    end
end

local masterToggle = Section:AddToggle({
    title = "Auto follow",
    desc = "Tackle",
    callback = ToggleFollowCarrier,
})



      local slider = Section:AddSlider({
title = "Auto Follow Distance",
values = {min=0,max=30 ,default=0},
callback = function(set)

end,
})




local Section = PhyTwo:AddSeperator("Player") do






  local function toggleState(v)
        local state = v
        local transparency = state and 0.5 or 0
        local model = game:GetService("Workspace").Models.Field.Grass
        
        for _, part in pairs(model:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = not state
                part.Transparency = transparency
            end
        end
        
        if state then
            local part = Instance.new("Part")
            part.Size = Vector3.new(500, 0.001, 500)
            part.CFrame = CFrame.new(Vector3.new(10.3562937, -1.51527438, 30.4708614))
            part.Anchored = true
            part.Parent = game.Workspace
        
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://"
            local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
            track:Play(.1, 1, 1)
        else
            if track ~= nil then
                track:Stop()
            end
        end
    end
    
    local undergroundToggle = Section:AddToggle({
        title = "Underground Enabled",
        desc = "This is a small tip which will appear when the user hovers over this toggle. It works on all elements",
        callback = function(v)
            toggleState(v)
        end
    })




local masterToggle = Section:AddToggle({
    title = "Anti-OOB",
    desc = "Lets You Go Out Of Bounds With Ball",
    callback = function(state)
        getgenv().Shit = state
    end,
})



local autoCapToggle = Section:AddToggle({
    title = " Auto Captain",
    desc = "Toggle Free Auto Captain",
    callback = function(state)
        coroutine.resume(
            coroutine.create(
                function()
                    repeat
                        wait(.25)
                    until ERA_READY and era and era.autocap
                    local function toFinish()
                        local pos = finishLine.Position
                        local lookAt = finishLine.Position + finishLine.CFrame.lookVector * -100
                        lookAt = v3.new(lookAt.X, hrp.Position.Y, lookAt.Z)
                        hrp.CFrame = CFrame.new(pos + v3.new(0, 10, 0), lookAt)
                        hum:MoveTo(finishLine.Position, finishLine)
                    end
                    while wait() do
                        if era.autocap then
                            repeat
                                step:wait()
                            until finishLine.Position.Y ~= 0
                            wait(0.5)
                            toFinish()
                            repeat
                                wait()
                            until finishLine.Position.Y == 0
                        else
                            wait(.25)
                        end
                    end
                end
            )
        )
    end
})





local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local function teleportInFront()
    local forwardDirection = rootPart.CFrame.lookVector
    local teleportOffset = forwardDirection * 5 -- You can change the distance (5 studs) as needed

    local newPosition = rootPart.Position + teleportOffset
    rootPart.CFrame = CFrame.new(newPosition)
end

local UserInputService = game:GetService("UserInputService")

local quickTPToggle = false

local masterToggle = Section:AddToggle({
    title = "Quick TP (F)",
    desc = "",
    callback = function(state)
        quickTPToggle = state
    end
})

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.F and quickTPToggle then
        teleportInFront()
    end
end)



local walkspeedToggle = Section:AddToggle({
    title = "Walkspeed Enable",
    desc = "Enables Walkspeed",
    callback = function(state)
        getgenv().Walkspeed = state
        while getgenv().Walkspeed == true do
            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = _G.SPEED
            wait()
        end
        if getgenv().Walkspeed == false then
            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 20
        end
    end,
})

local jpToggle = Section:AddToggle({
    title = "JP Enable",
    desc = "Enables Jump Power",
    callback = function(state)
        getgenv().JP = state
        while getgenv().JP == true do
            game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = _G.Jump
            wait()
        end
        if getgenv().JP == false then
            game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end,
})



local walkspeedSlider = Section:AddSlider({
    title = "Walkspeed",
    values = {min = 25, max = 45, default = 45},
    callback = function(value)
        _G.SPEED = value
    end,
})

local jpSlider = Section:AddSlider({
    title = "JP",
    values = {min = 60, max = 82, default = 82},
    callback = function(value)
        _G.Jump = value
    end,
})

local RunService = game:GetService("RunService")
local KickoffMovementToggle
local originalWalkSpeed = 16  -- Adjust this to your desired walk speed

local function AdjustWalkSpeed()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        local humanoid = character.Humanoid
        if KickoffMovementToggle and KickoffMovementToggle.getToggled() then
            humanoid.WalkSpeed = originalWalkSpeed
        else
            humanoid.WalkSpeed = 0  -- Set to 0 to prevent movement
        end
    end
end

-- Define UI Sections and Toggles
local flyToggle = Section:AddToggle({
    title = "Fly",
    desc = "Toggle Fly",
    callback = function(state)
        coroutine.resume(
            coroutine.create(
                function()
                    repeat
                        wait(.25)
                    until ERA_READY and era and era.fly_enabled
                    local debris = game:GetService("Debris")
                    local adminRE = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AdminRE")
                    local flying = false
                    -- Connections --
                    local getconn = getconnections or get_signal_connections
                    if getconn then
                        local disconnect_all = disconnect_all or function(signal)
                            for i, v in next, getconn(signal) do
                                v:Disable()
                            end
                        end
                        disconnect_all(char.ChildAdded)
                        disconnect_all(char.DescendantAdded)
                        disconnect_all(hum.ChildAdded)
                        disconnect_all(hum.DescendantAdded)
                        disconnect_all(hrp.ChildAdded)
                        disconnect_all(hrp.DescendantAdded)
                        wait()
                    end
                    local noclip_conn = nil
                    local fly_conn = nil
                    local flying = false
                    local bv = nil
                    local bg = nil
                    local emptyVector3 = Vector3.new()
                    local v3_Y1 = Vector3.new(0, 1, 0)
                    local noclip_conn = nil
                    local function disable_fly()
                        flying = false
                        debris:AddItem(bv, 0)
                        debris:AddItem(bg, 0)
                        if fly_conn then
                            fly_conn:Disconnect()
                        end
                        if char and char:FindFirstChild("Animate") then
                            char.Animate.Disabled = false
                        end
                    end
                    local function fly()
                        if fly_conn then
                            fly_conn:Disconnect()
                        end
                        flying = true
                        for _, v in ipairs(hum:GetPlayingAnimationTracks()) do
                            v:Stop()
                        end
                        if char and char:FindFirstChild("Animate") then
                            char.Animate.Disabled = true
                        end
                        bv = Instance.new("BodyVelocity", hrp)
                        bv.MaxForce = Vector3.new(1, 1, 1) * 1000000
                        bv.P = 1000000
                        bv.Velocity = Vector3.new()
                        bv.Name = "FFmover"
                        bg = Instance.new("BodyGyro", hrp)
                        bg.MaxTorque = Vector3.new(1, 1, 1) * 1000000
                        bg.P = 1000000
                        bg.D = 1000
                        bg.CFrame = hrp.CFrame
                        bg.Name = "FFmover"
                        fly_conn = step:Connect(
                            function()
                                local camCF = cc.CFrame
                                local md = hum.MoveDirection
                                if md ~= emptyVector3 then
                                    local lv = camCF.lookVector
                                    local speedUnit =
                                        (CFrame.new(emptyVector3, md) *
                                        CFrame.Angles(math.pi / 2 * lv.Y * (md:Dot(camCF.upVector) * math.sign(-lv.Y)), 0, 0)).lookVector
                                    if hum.Jump then
                                        speedUnit = speedUnit + v3_Y1
                                    end
                                    bv.Velocity = speedUnit * hum.WalkSpeed * 2 * era.flyspeed
                                elseif hum.Jump then
                                    bv.Velocity = v3_Y1 * hum.WalkSpeed * 2 * era.flyspeed
                                else
                                    bv.Velocity = bv.Velocity * 0.9
                                end
                                bg.CFrame = camCF
                            end
                        )
                    end
                    coroutine.resume(
                        coroutine.create(
                            function()
                                while wait() do
                                    plr.CameraMode = flying and Enum.CameraMode.LockFirstPerson or Enum.CameraMode.Classic
                                    if not era.fly_enabled and fly_conn then
                                        disable_fly()
                                    end
                                end
                            end
                        )
                    )
                    plr.CharacterAdded:Connect(
                        function()
                            wait(.1)
                            if era.fly_enabled then
                                if flying then
                                    fly()
                                else
                                    disable_fly()
                                end
                            end
                        end
                    )
                    local function toggleFly()
                        if era.fly_enabled then
                            if not flying then
                                fly()
                            else
                                disable_fly()
                            end
                        end
                    end
                    uis.InputBegan:Connect(
                        function(k, gpe)
                            if not gpe and k.KeyCode == Enum.KeyCode[era.fly_keybind] and era.fly_enabled then
                                toggleFly()
                            end
                        end
                    )
                end
            )
        )
    end
})


local instaScoreToggle = Section:AddToggle({
    title = "Insta Score",
    desc = "Toggle Insta Score",
    callback = function(state)
        coroutine.resume(
            coroutine.create(
                function()
                    repeat
                        wait(.25)
                    until ERA_READY and era and era.instaScoreEnabled
                    local instaScoreOffset = Vector3.new(0, -10, 0)
                    local goalline1 = ws.LineGoal1
                    local goalline2 = ws.LineGoal2
                    while wait() do
                        if era.instaScoreEnabled then
                            if char:FindFirstChild("Football") and status.Value == "InPlay" then
                                hrp.CFrame =
                                    CFrame.new(
                                    (goalline1.Position + goalline1.Size / 2) + instaScoreOffset +
                                        v3.new(math.random(-1, 1), 0, math.random(-5, 5))
                                )
                                wait(1)
                                hrp.CFrame =
                                    CFrame.new(
                                    (goalline2.Position + goalline2.Size / 2) + instaScoreOffset +
                                        v3.new(math.random(-1, 1), 0, math.random(-5, 5))
                                )
                                wait(1)
                            end
                        end
                    end
                end
            )
        )
    end
})


-- Stuck on bench fix --
for _, v in pairs(ws.Models.Field.Sidelines:GetDescendants()) do
    if v:IsA("Seat") then
        v.Parent.Parent = nil
    --v:Destroy()
    end
end

--------------------
-- Tackle Reach --
local tackleReachToggle = Section:AddToggle({
    title = "Tackle Reach",
    desc = "Enable/Disable Tackle Reach",
    callback = function(state)
        ezstats.tacklereach_enabled = state
    end
})

local tackleReachSlider = Section:AddSlider({
    title = "Tackle Reach Distance",
    values = { min = 0, max = 20, default = 20 }, -- Adjust min, max, and default values as needed
    callback = function(value)
        ezstats.tacklereach = value
    end
})

coroutine.resume(
    coroutine.create(
        function()
            repeat
                wait(.25)
            until Era_READY and ERA and ERA.tacklereach_enabled
            while rstep:wait() do
                local lastpos = hrp.CFrame
                local bc = values.Carrier.Value
                if
                    ezstats.tacklereach_enabled and values.Carrier.Value and values.Status.Value == "InPlay" and bc and
                    bc.Team ~= plr.Team and bc.Character and bc.Character:FindFirstChild("Humanoid") and
                    bc.Character:FindFirstChild("HumanoidRootPart")
                then
                    local char2 = bc.Character
                    local hrp2 = char2:FindFirstChild("HumanoidRootPart")
                    local hum2 = char2:FindFirstChild("Humanoid")
                    local lastpos = hrp.CFrame
                    local dist = (hrp.Position - hrp2.Position).Magnitude
                    if dist <= ezstats.tacklereach then
                        local pos = hrp2.Position + (hum2.MoveDirection * 2)
                        hrp.CFrame = CFrame.new(pos)
                        wait(1 / ezstats.tacklereach_rate)
                        local diff = (hrp.Position - lastpos.p)
                        hrp.CFrame = hrp.CFrame - diff
                    end
                    wait(ezstats.tacklereach_wait)
                end
            end
        end
    )
)

-- Spam Dab (normal) --
local spamDabToggle = Section:AddToggle({
    title = "Spam Dab",
    desc = "Enable/Disable Spam Dab",
    callback = function(state)
        ezstats.spamdab = state
    end
})

coroutine.resume(
    coroutine.create(
        function()
            repeat
                wait(.25)
            until Era_READY and ERA and ERA.spamdab
            local anims = rs.Animations
            local dab = anims.Dab
            local track = hum:LoadAnimation(dab)
            local madeplay = false
            local mainGui = plr.PlayerGui.MainGui
            local debounce = false
            while true do
                if ezstats.spamdab then
                    track = track or hum:LoadAnimation(dab)
                    track:Play()
                    track:AdjustSpeed(1)
                    wait(0.15)
                    track:Stop()
                else
                    wait(.1)
                end
            end
        end
    )
)

-- Auto tackle presuit --
local autoTacklePresuitToggle = Section:AddToggle({
    title = "Auto Tackle Presuit",
    desc = "Enable/Disable Auto Tackle Presuit",
    callback = function(state)
        ezstats.autoTacklePersuitEnabled = state
    end
})

coroutine.resume(
    coroutine.create(
        function()
            repeat
                wait(.25)
            until Era_READY and ERA and ERA.autoTacklePersuitEnabled
            while step:wait() do
                if ezstats.autoTacklePersuitEnabled then
                    local bc = carrier.Value
                    if bc and bc.Team ~= plr.Team and status.Value == "InPlay" then
                        local char2 = bc.Character
                        if char2 then
                            local hum2 = char2:FindFirstChild("Humanoid")
                            local hrp2 = char2:FindFirstChild("HumanoidRootPart")
                            if hum2 and hrp2 then
                                cc.CFrame = CFrame.new(cc.CFrame.p + v3.new(0, 1, 0), hrp2.Position)
                            end
                        else
                            wait(.25)
                        end
                    else
                        wait(.25)
                    end
                else
                    wait(.25)
                end
            end
        end
    )
)

-- Auto get up --
--[[ spawn(function()
    local function getup()
        if char then
            local hum = char:FindFirstChild('Humanoid')
            if hum then
                for _=1,10 do
                    hum:ChangeState(Enum.HumanoidStateType.GettingUp)
                    hum:ChangeState(Enum.HumanoidStateType.Jumping)
                    hum:ChangeState(Enum.HumanoidStateType.Running)
                end
            end
        end
    end
    while wait(0.5) do
        if ERA.autogetup_enabled then
            getup()
        end
    end
end) ]]
-- No bounds --
local noBoundsToggle = Section:AddToggle({
    title = "No Bounds",
    desc = "Enable/Disable No Bounds",
    callback = function(state)
        ezstats.nobounds_enabled = state
    end
})

coroutine.resume(
    coroutine.create(
        function()
            repeat
                wait(.25)
            until Era_READY and ERA and ERA.nobounds_enabled
            while wait() do
                local s, e =
                    pcall(
                    function()
                        if ezstats.nobounds_enabled then
                            local bounds = workspace.Models:FindFirstChild("Boundaries")
                            bounds:ClearAllChildren()
                        end
                    end
                )
                if not s then
                    warn(e)
                end
            end
        end
    )
)

-- FF forward pass script (throw the ball after you pass the line of scrimmage) --
local illegalForwardPassToggle = Section:AddToggle({
    title = "Illegal Forward Pass",
    desc = "Enable/Disable Illegal Forward Pass",
    callback = function(state)
        ezstats.illegalForwardPass_enabled = state
    end
})

coroutine.resume(
    coroutine.create(
        function()
            repeat
                wait(.25)
            until Era_READY and ERA and ERA.illegalForwardPass_enabled
            local wall = workspace:WaitForChild("LineDownWall")
            local _wall = wall:Clone()
            _wall.Parent = workspace
            while wait() do
                _wall.Position = workspace:WaitForChild("LineDown").Position
                _wall.CanCollide = values.Status.Value == "PrePlay"
                local hasball = (values.QB.Value == plr and values.Carrier.Value == plr)
                if ezstats.illegalForwardPass_enabled and wall and hasball and values.Status.Value == "InPlay" then
                    wall.Parent = nil
                else
                    wall.Parent = workspace
                end
            end
        end
    )
)




end
end
end

