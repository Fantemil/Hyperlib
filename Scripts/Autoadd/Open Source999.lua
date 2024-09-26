setfpscap(120)

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Open Source", "LightTheme")

-- Main Tab
local Tab = Window:NewTab("Main")
local Main = Tab:NewSection("Combat")

Main:NewToggle("Auto Parry", "Auto Parry the ball if it's close & is targeting you.", function(state)
    local runService = game:GetService("RunService")
    local players = game:GetService("Players")
    local workspace = game:GetService("Workspace")
    local vim = game:GetService("VirtualInputManager")
    local ballFolder = workspace.Balls

    local indicatorPart = Instance.new("Part")
    indicatorPart.Size = Vector3.new(5, 5, 5)
    indicatorPart.Anchored = true
    indicatorPart.CanCollide = false
    indicatorPart.Transparency = 1
    indicatorPart.BrickColor = BrickColor.new("Bright red")
    indicatorPart.Parent = workspace

    local lastBallPressed, isKeyPressed = nil, false

    local function calculatePredictionTime(ball, player)
        local rootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            local relativePosition = ball.Position - rootPart.Position
            local velocity = ball.Velocity + rootPart.Velocity 
            local a = ball.Size.magnitude / 2
            local b = relativePosition.magnitude
            local c = math.sqrt(a * a + b * b)
            return (c - a) / velocity.magnitude
        end
        return math.huge
    end

    local function checkProximityToPlayer(ball, player)
        local predictionTime = calculatePredictionTime(ball, player)
        local realBallAttribute = ball:GetAttribute("realBall")
        local target = ball:GetAttribute("target")

        local ballSpeedThreshold = math.max(0.4, 0.6 - ball.Velocity.magnitude * 0.01)
        if predictionTime <= ballSpeedThreshold and realBallAttribute and target == player.Name and not isKeyPressed then
            vim:SendKeyEvent(true, Enum.KeyCode.F, false, nil)
            wait(0.005)
            vim:SendKeyEvent(false, Enum.KeyCode.F, false, nil)
            lastBallPressed = ball
            isKeyPressed = true
        elseif lastBallPressed == ball and (predictionTime > ballSpeedThreshold or not realBallAttribute or target ~= player.Name) then
            isKeyPressed = false
        end
    end

    local function checkBallsProximity()
        local player = players.LocalPlayer
        if player then
            for _, ball in pairs(ballFolder:GetChildren()) do
                checkProximityToPlayer(ball, player)
            end
        end
    end

    if state then
        runService.Heartbeat:Connect(checkBallsProximity)
    else
        lastBallPressed = nil
        isKeyPressed = false
    end
end)

Main:NewButton("Manual Spam", "a manual spam UI that'll spam the Parry Button for as long as it's on.", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Atreus-Hub/Open-Source/main/manual%20spam"))()
end)

-- Misc Tab
local Misc = Tab:NewSection("Extra")

Misc:NewToggle("Follow Ball", "Fly towards the ball at a very situational speed", function(state)
    getgenv().FB = state
end)

spawn(function()
    local TweenService = game:GetService("TweenService")
    local plr = game.Players.LocalPlayer
    local Ball = workspace:WaitForChild("Balls")
    local currentTween = nil

    while true do
        wait(0.001)
        if getgenv().FB then
            local ball = Ball:FindFirstChildOfClass("Part")
            local char = plr.Character
            if ball and char then
                local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, false, 0)
                local distance = (char.PrimaryPart.Position - ball.Position).magnitude
                if distance <= 1000 then 
                    if currentTween then
                        currentTween:Pause()
                    end
                    currentTween = TweenService:Create(char.PrimaryPart, tweenInfo, {CFrame = ball.CFrame})
                    currentTween:Play()
                end
            end
        else
            if currentTween then
                currentTween:Pause()
                currentTween = nil
            end
        end
    end
end)

Misc:NewToggle("Night Mode", "Turns the atmosphere into night", function(state)
    getgenv().NM = state
end)

task.defer(function()
    while task.wait(1) do
        local tweenService = game:GetService("TweenService")
        local lighting = game:GetService("Lighting")
        if getgenv().NM then
            tweenService:Create(lighting, TweenInfo.new(3), {ClockTime = 3.9}):Play()
        else
            tweenService:Create(lighting, TweenInfo.new(3), {ClockTime = 13.5}):Play()
        end
    end
end)

-- Shop Tab
local Shop = Tab:NewSection("Crates")

Shop:NewButton("Buy Sword Crate", "Buys the sword crate for everytime you click this button.", function() 
    game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalSwordCrate)
end)

Shop:NewButton("Buy Explosion Crate", "Buys the explosion crate for everytime you click this button.", function() 
    game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalExplosionCrate)
end)

Shop:NewToggle("Auto Buy Sword Crate", "If on it'll automatically buy the sword crate as long as you have money.", function(state) 
    getgenv().ASC = state
end)

Shop:NewToggle("Auto Buy Explosion Crate", "If on it'll automatically buy explosion crate for as long as you have money", function(state) 
    getgenv().AEC = state
end)

spawn(function()
    while true do
        wait(0.01)
        if getgenv().ASC then
            game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalSwordCrate)
        end
    end
end)

spawn(function()
    while true do
        wait(0.01)
        if getgenv().AEC then
            game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer("PromptPurchaseCrate", workspace.Spawn.Crates.NormalExplosionCrate)
        end
    end
end)