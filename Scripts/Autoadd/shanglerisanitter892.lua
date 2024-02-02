local ReplicatedStorage = game:GetService("ReplicatedStorage")


local Hooks = {}
local HandshakeArgs = nil
local Remote = ReplicatedStorage:WaitForChild("Remotes").CharacterSoundEvent
local FakeTable = {}


local RandomNumber = math.random(1e3, 1e5)

Hooks.Clock = hookfunction(os.clock, function(...)
    return Hooks.Clock(...) + RandomNumber
end)


Hooks.Namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    local Args = {...}

    if not checkcaller() and self == Remote and (Method == "FireServer" or Method == "fireServer") and Args[1] == "AC\226\154\156\239\184\143" then
        if not HandshakeArgs then
            if type(Args[2]) == "table" and #Args[2] == 19 then
                HandshakeArgs = Args[2]
            end
        else
            return coroutine.yield()
        end
    end

    return Hooks.Namecall(self, ...)
end)

while not HandshakeArgs do
    task.wait()
end

print("Found handshake arguments.")

task.wait(3)

for i, v in getconnections(Remote.OnClientEvent) do
    if getinfo(v.Function).source:find("PlayerModule.LocalScript") then
        v:Disable()
    end
end

print("Disabled connections.")

task.spawn(function()
    while task.wait(0.5) do
        Remote:FireServer("AC\226\154\156\239\184\143", HandshakeArgs, nil)
    end
end)

print("Replicated handshake.")

local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/cueshut/saves/main/compact"))()
UI = UI.init("Era", "v1.2.0", "Era")

local MagnetsOne, MagnetsTwo = UI:AddTab("Magnets", "Catching") do
local Section = MagnetsOne:AddSeperator("Catching") do
local player = game.Players.LocalPlayer
local rs = game:GetService("RunService")
local magnetEnabled = false  -- Initial state of the magnet toggle

function moveBall(ball)
    if ball and player.Character then
        local leftArm = player.Character:FindFirstChild("Left Arm")
        if leftArm then
            ball.CanCollide = false
            local startPosition = ball.Position
            local endPosition = leftArm.Position
            local direction = (endPosition - startPosition).Unit
            local distance = (endPosition - startPosition).Magnitude
            local speed = distance / 1000
            local startTime = tick()

            local function updatePosition()
                local elapsedTime = tick() - startTime
                local t = math.min(elapsedTime / speed, 1)
                local newPosition = startPosition + direction * distance * t
                ball.CFrame = CFrame.new(newPosition)
                if t >= 15 then
                    rs:UnbindFromRenderStep("MoveBall")
                    ball.CanCollide = true
                end
            end

            rs:BindToRenderStep("MoveBall", Enum.RenderPriority.Camera.Value + 1, updatePosition)
        end
    end
end

rs.Stepped:Connect(function()
    if magnetEnabled then
        local closestBall = nil
        local closestDist = math.huge

        for _, v in ipairs(workspace:GetChildren()) do
            if v.Name == "Football" and v:IsA("BasePart") then
                local mag = (player.Character.Torso.Position - v.Position).Magnitude
                if mag <= 30 and mag < closestDist then
                    closestBall = v
                    closestDist = mag
                end
            end
        end

        if closestBall then
            moveBall(closestBall)
        end
    end
end)

local MagnetToggle = Section:AddToggle({
    title = "Magnet",
    desc = "CATCHING GAY KIDS",
    callback = function(state)
        magnetEnabled = state  
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

local Blatant = {"Legit", "Blatant", "League", "Normal"}

local dropdown = Section:AddDropdown({
    title = "Magnet Type",
    options = Blatant,
    callback = function(selected, actual)
        local selectedOption = Blatant[selected]
        local power = 50  -- Replace with the actual power value
end,
})






local Magnetsslider = Section:AddSlider({
    title = "Magnet Distance",
    values = {min = 0, max = 10, default = 0},
    callback = function(set)
        MagnetDistance = set
    end,
})


local Magnetsslider = Section:AddSlider({
    title = "Magnet Power",
    values = {min = 0, max = 10, default = 0},
    callback = function(set)
        Power = v
    end,
})


local Magnetsslider = Section:AddSlider({
    title = "Magnet Chance",
    values = {min = 0, max = 10, default = 0},
    callback = function(set)
        Chance = set
    end,
})



local Magnetsslider = Section:AddSlider({
    title = "Magnet Delay",
    values = {min = 0, max = 2, default = 0},
    callback = function(set)
        Delay = set
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
        return (player.Character and (player.Character.HumanoidRootPart.Position - football.Position).Magnitude <= maxCatchRange)
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
                    if football.IsCaught then
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




local player = game.Players.LocalPlayer
local rs = game:GetService("RunService")
local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 50)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Parent = gui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.5, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundColor3 = Color3.new(1, 1, 1)
textLabel.Text = "Football Position: N/A"
textLabel.Parent = frame

local distanceLabel = textLabel:Clone()
distanceLabel.Position = UDim2.new(0, 0, 0.5, 0)
distanceLabel.Text = "Distance: N/A"
distanceLabel.Parent = frame

local displayEnabled = false
local displayToggle = Section:AddToggle({
    title = "Display Football Info",
    desc = "Displays the football's position and distance",
    callback = function(state)
        displayEnabled = state
        gui.Enabled = state
    end,
})

gui.Parent = player.PlayerGui

rs.RenderStepped:Connect(function()
    if displayEnabled then
        local closestBall = nil
        local closestDist = math.huge

        for _, v in ipairs(workspace:GetChildren()) do
            if v.Name == "Football" and v:IsA("BasePart") then
                local mag = (player.Character.HumanoidRootPart.Position - v.Position).Magnitude
                if mag < closestDist then
                    closestBall = v
                    closestDist = mag
                end
            end
        end

        if closestBall then
            local ballPosition = closestBall.Position
            textLabel.Text = "Football Position: (" .. tostring(ballPosition.x) .. ", " .. tostring(ballPosition.y) .. ", " .. tostring(ballPosition.z) .. ")"
            distanceLabel.Text = "Distance: " .. tostring(math.floor(closestDist))
        else
            textLabel.Text = "Football Position: N/A"
            distanceLabel.Text = "Distance: N/A"
        end
    end
end)




local Section = MagnetsTwo:AddSeperator("other catching") do






local LFGCatchingToggle = Section:AddToggle({
    title = "Smooth Catching",
    desc = "Catching very Legit",
    callback = function(state)
        if state then
            local player = game.Players.LocalPlayer
            local rs = game:GetService("RunService")

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
                            if t >= 30 then
                                rs:UnbindFromRenderStep("MoveBall")
                                ball.CanCollide = true
                            end
                        end)
                    end
                end
            end

            rs.Stepped:Connect(function()
                local closestBall = nil
                local closestDist = math.huge

                for _, v in ipairs(workspace:GetChildren()) do
                    if v.Name == "Football" and v:IsA("BasePart") then
                        local mag = (player.Character.Torso.Position - v.Position).Magnitude
                        if mag <= 15 and mag < closestDist then
                            closestBall = v
                            closestDist = mag
                        end
                    end
                end

                if closestBall then
                    moveBall(closestBall)
                end
            end)
        else
            -- You might want to add logic here to stop the movement if necessary
        end
    end,
})

local LFGDistanceSlider = Section:AddSlider({
    title = "Smooth  Distance",
    values = {min = 0, max = 5, default = 0},
    callback = function(set)
       
    end,
})

local RunService = game:GetService("RunService")
local HitboxExpanderEnabled = false
local HitboxExpanderSize = 10

local function ExpandHitboxes()
    while true do
        wait()
        if HitboxExpanderEnabled then
            for _, v in ipairs(workspace:GetChildren()) do
                if v.Name == "Football" and v:IsA("BasePart") then
                    for _, vp in ipairs(getconnections(v:GetPropertyChangedSignal("Size"))) do
                        vp:Disable()
                    end
                    v.CanCollide = false
                    v.Size = Vector3.new(HitboxExpanderSize, HitboxExpanderSize, HitboxExpanderSize)
                end
            end
        end
    end
end

-- Start the hitbox expanding process in a new thread
spawn(ExpandHitboxes)

local HitboxToggle = Section:AddToggle({
    title = "Hitbox Extender",
    desc = "",
    callback = function(state)
        HitboxExpanderEnabled = state
    end,
})

local HitboxSlider = Section:AddSlider({
    title = "Extender Size Distance",
    values = {min = 0, max = 20, default = 0},
    callback = function(set)
        HitboxExpanderSize = set
    end,
})


local player = game.Players.LocalPlayer
local userMouse = player:GetMouse()

local teleportEnabled = false

local function teleportToFootball(football)
    local playerCharacter = player.Character
    if playerCharacter and playerCharacter:FindFirstChild("HumanoidRootPart") then
        local characterRoot = playerCharacter.HumanoidRootPart
        characterRoot.CFrame = CFrame.new(football.Position + Vector3.new(0, 5, 0))  -- Teleport slightly above the football
    end
end

userMouse.Button1Down:Connect(function()
    if teleportEnabled then
        local closestFootball = nil
        local closestDistance = math.huge

        for _, football in ipairs(game.Workspace:GetChildren()) do
            if football.Name == "Football" and football:IsA("BasePart") then
                local distance = (football.Position - userMouse.Hit.p).Magnitude
                if distance < closestDistance then
                    closestFootball = football
                    closestDistance = distance
                end
            end
        end

        if closestFootball then
            teleportToFootball(closestFootball)
        end
    end
end)

local teleportToggle = Section:AddToggle({
    title = "Football TP (You May Get Banned if using from Far Away)",
    desc = "Toggle to enable teleporting to nearest football in the air",
    callback = function(state)
        teleportEnabled = state
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
    values = {min = 1, max = 50, default = 10},
    callback = function(value)
        PullVectorDistance = value
    end,
})






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
title = "Enable QB Aimbot   not out yet",
desc = "This is a small tip which will appear when the user hovers over this toggle. It works on all elements",
callback = function(state)
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

local player = game.Players.LocalPlayer
local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")

local jumpCooldown = 0.5  -- Adjust this value based on your game's mechanics
local lastJumpTime = 0
local antiAceEnabled = false  -- Initial state of the anti ace toggle

local function PerformJump()
    -- Perform the jump action
    -- You might want to adjust the code here to simulate jumping
end

local function PerformDive()
    -- Perform the dive action
    -- You might want to adjust the code here to simulate diving
end

userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
        if antiAceEnabled then
            local currentTime = tick()
            if currentTime - lastJumpTime > jumpCooldown then
                PerformJump()
                lastJumpTime = currentTime
            else
                PerformDive()
            end
        else
            -- Perform the default jump or dive action
        end
    end
end)

runService.RenderStepped:Connect(function()
    if antiAceEnabled then
        -- Check for the appropriate condition to trigger the automatic dive
        -- For example, if you detect that the character is in mid-air and has jumped
        -- Implement the automatic dive action here
    end
end)

local AntiAceToggle = Section:AddToggle({
    title = "Anti Ace",
    desc = "Automatically prevents diving too early after jumping",
    callback = function(state)
        antiAceEnabled = state
    end,
})


local masterToggle = Section:AddToggle({
title = "Anti Lag",
desc = "",
callback = function(state)
if game:GetService("Workspace"):FindFirstChild("Parts") then
   game:GetService("Workspace"):FindFirstChild("Parts"):Destroy()
   end
end
})
    
    



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




local block = false
local blockslider = 1.5
local defaultSize = Vector3.new(0.75, 5, 1.5)

local function setBlockSize()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("BlockPart") then
        game.Players.LocalPlayer.Character.BlockPart.Size = Vector3.new(blockslider, 5, blockslider)
    end
end

local blockToggle = Section:AddToggle({
    title = "Block Reach",
    desc = "Tackle",
    callback = function(state)
        block = state
        if block then
            setBlockSize()
        else
            game.Players.LocalPlayer.Character.BlockPart.Size = defaultSize
            blockslider = 1.5
        end
    end,
})

local blockSlider = Section:AddSlider({
    title = "Block Reach Distance",
    values = {min = 1.5, max = 20, default = 1.5},
    callback = function(set)
        blockslider = set
        if block then
            setBlockSize()
        end
    end,
})



local Section = PhyTwo:AddSeperator("Player Configuration") do



local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local moveDistance = 5
local isEnabled = false


local function moveCharacter()
    local newPosition = character.PrimaryPart.Position + character.PrimaryPart.CFrame.lookVector * moveDistance
    character:SetPrimaryPartCFrame(CFrame.new(newPosition))
end


local function toggleCallback(value)
    isEnabled = value
end


local function onKeyPress(input)
    if isEnabled and input.KeyCode == Enum.KeyCode.F then
        moveCharacter()
    end
end

local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(onKeyPress)


local Toggle = Section:AddToggle({
    title = "Quick TP (F is the keybind)",
    desc = "Move your character forward when the F key is pressed.",
    callback = toggleCallback
})






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

local player = game.Players.LocalPlayer
local runService = game:GetService("RunService")

local lagEffectEnabled = false  -- Initial state of the lag effect toggle
local lagMultiplier = 0.5  -- Adjust this value to control the lag effect strength

local function ApplyLagEffect()
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local currentVelocity = rootPart.Velocity
                rootPart.Velocity = currentVelocity * lagMultiplier
            end
        end
    end
end

runService.RenderStepped:Connect(function()
    if lagEffectEnabled then
        ApplyLagEffect()
    end
end)

local LagEffectToggle = Section:AddToggle({
    title = "Lag Effect",
    desc = "Simulates lag by reducing movement speed",
    callback = function(state)
        lagEffectEnabled = state
    end,
})

local LagMultiplierSlider = Section:AddSlider({
    title = "Lag Multiplier",
    values = {min = 0.1, max = 1, default = 0.5},
    callback = function(value)
        lagMultiplier = value
    end,
})




local masterToggle = Section:AddToggle({
    title = "Anti-OOB",
    desc = "Lets You Go Out Of Bounds With Ball",
    callback = function(state)
        getgenv().Shit = state
    end,
})

local autoCaptainToggle = Section:AddToggle({
    title = "Auto-Captain",
    desc = "Free Auto-Captain",
    callback = function(state)
        getgenv().Captain = state
    end,
})


local UserInputService = game:GetService("UserInputService")
local JumpPowerMultiplier = 1.5  -- Default jump height multiplier
local OriginalJumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower
local JumpToggleEnabled = false

local function OnJumpRequest(actionName, inputState, inputObject)
    if inputState == Enum.UserInputState.Begin then
        local character = game.Players.LocalPlayer.Character
        local humanoid = character and character:FindFirstChild("Humanoid")
        
        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            humanoid:Move(Vector3.new(0, humanoid.JumpPower, 0))  -- Perform a standard jump
        end
    end
end

local JumpToggle = Section:AddToggle({
    title = "Boost",
    desc = "Enables higher jumps",
    callback = function(state)
        JumpToggleEnabled = state
        local character = game.Players.LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.JumpPower = state and OriginalJumpPower * JumpPowerMultiplier or OriginalJumpPower
            end
        end
    end,
})

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and JumpToggleEnabled and input.KeyCode == Enum.KeyCode.Space then
        OnJumpRequest()
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

KickoffMovementToggle = Section:AddToggle({
    title = "Prevent Movement on Kickoffs",
    desc = "Prevents character movement during certain events",
    callback = function(state)
        if state then
            RunService.RenderStepped:Connect(AdjustWalkSpeed)
        else
            RunService.RenderStepped:Disconnect(AdjustWalkSpeed)
        end
    end,
})

local fovToggle, fovColor
fovToggle, fovColor = Section:AddToggle({
    title = "Display field of view",
    checked = true,
    callback = function(state)
        print("FOV display toggled", state)
        print("FOV color", fovToggle.colorpicker.getColor(), fovColor.getColor())
        print("silent aim enabled", masterToggle.getToggled())
    
        fovColor.setColor(Color3.new(0, 1, 0))
    end,
    colorpicker = {
        default = Color3.new(0, 0.5, 1),
        callback = function(color)
            print("New FOV color selected: ", color)
        end
    }
})

local jerseyToggle, jerseyColor
jerseyToggle, jerseyColor = Section:AddToggle({
    title = "Customize your jersey",
    checked = false, -- Change the default state as needed
    callback = function(state)
        if state then
            -- Enable jersey customization logic
            jerseyColor.setColor(Color3.new(1, 0, 0)) -- Set the default jersey color
        else
            -- Disable jersey customization logic
            jerseyColor.setColor(Color3.new(0, 0, 0)) -- Reset jersey color
        end
    end,
    colorpicker = {
        default = Color3.new(1, 0, 0), -- Set the default jersey color
        callback = function(color)
            -- Update jersey color based on color picker
            print("New jersey color selected: ", color)
        end
    }
})




local LagEffectToggle = Section:AddToggle({
    title = "FPS Boost",
    desc = "Simulates lag by reducing movement speed",
    callback = function(state)
        
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
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
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end

    end,
})

end
end
end