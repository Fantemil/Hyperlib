local GetService = game.GetService
local FindFirstChild = game.FindFirstChild

local Floor = math.floor

local Connect = game["Loaded"].Connect
local FireServer = Instance.new("RemoteEvent").FireServer

local Player = GetService(game, "Players").LocalPlayer
local Courts = GetService(game, "Workspace").Courts
local RunService = GetService(game, "RunService")

local InRange = true
local HasBall = true
local DB = false

if Stepped ~= nil or Jumped ~= nil or CharacterAdded ~= nil then
    pcall(function()
        Stepped:Disconnect()
    end)
    pcall(function()
        Jumped:Disconnect()
    end)
    pcall(function()
        CharacterAdded:Disconnect()
    end)
    
    getgenv().Stepped = nil
    getgenv().Jumped = nil
    getgenv().CharacterAdded = nil
    
    print("Cmon Greg Heffley! - Magnet")
end

if Highlight == nil or Highlight.Adornee.Parent == nil then
    getgenv().Highlight = Instance.new("Highlight")
    Highlight.Enabled = false
    Highlight.Adornee = Player.Character
    Highlight.FillColor = Color3.fromRGB(25, 255, 25)
    Highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
    Highlight.Parent = game.CoreGui
end

local Goals = {}; for _, Obj in next, Courts:GetDescendants() do
    if Obj.Name == "C__Net" then
        table.insert(Goals, Obj)
    end
end

local GetPower = function()
    local Label = Player.PlayerGui.BallGui.PowerFrame.Label
    
    return tonumber(Label.Text)
end

local GetGoalInfo = function()
    local Distance, Goal = 9e9;
    
    for _, Obj in next, Goals do
        local Magnitude = (Player.Character.HumanoidRootPart.Position - Obj.Position).Magnitude
            
        if Distance > Magnitude then
            Distance = Magnitude
            Goal = Obj
        end
    end
    
    return Floor(Distance), Goal
end

local GetArc = function()
    local Distance, Goal = GetGoalInfo()
    local Power = GetPower()
    
    if Power == 75 then
        if Distance == 57 or Distance == 58 or Distance == 59 or Distance == 60 then
            return 45
        end
    elseif Power == 80 then
        if Distance == 57 or Distance == 58 or Distance == 59 or Distance == 60 then
            return 65
        elseif Distance == 61 or Distance == 62 or Distance == 63 then
            return 60
        elseif Distance == 64 or Distance == 65 then
            return 55
        elseif Distance == 66 then
            return 45
        end
    elseif Power == 85 then
        if Distance == 57 or Distance == 58 or Distance == 59 or Distance == 60 then
            return 85
        elseif Distance == 61 or Distance == 62 or Distance == 63 or Distance == 64 then
            return 80
        elseif Distance == 65 then
            return 75
        elseif Distance == 66 or Distance == 67 or Distance == 68 then
            return 70
        elseif Distance == 69 then
            return 65
        elseif Distance == 70 then
            return 55
        elseif Distance == 71 then
            return 45
        end
    end
end

local Shoot = function()
    local Distance, Goal = GetGoalInfo()
    local ShootVector = Goal.Position + Vector3.new(0, GetArc(), 0)
    
    Player.Character.Ball.CSC:FireServer("shoot", ShootVector)
end

local JumpedFunc = function()
    if not DB and HasBall then
        DB = true
        task.wait(0.245)
        if InRange and HasBall then
            Shoot()
        end
        task.wait(1)
        DB = false
    end
end

getgenv().Jumped = Connect(Player.Character.Humanoid.Jumping, function()
    JumpedFunc()
end)

getgenv().Stepped = Connect(RunService.Stepped, function()
    local Distance, Goal = GetGoalInfo()
    local Power = GetPower()
    
    if Player.Character and FindFirstChild(Player.Character, "Ball") then
        HasBall = true
    else
        HasBall = false
    end
    
    if Power == 75 and Distance >= 58 and Distance <= 60 then
        InRange = true
    elseif Power == 80 and Distance >= 58 and Distance <= 66 then
        InRange = true
    elseif Power == 85 and Distance >= 58 and Distance <= 71 then
        InRange = true
    else
        InRange = false
    end
    
    if InRange and HasBall then
        Highlight.Enabled = true
    else
        Highlight.Enabled = false
    end
    
    if Highlight.Adornee.Parent == nil and Player.Character then
        Highlight.Adornee = Player.Character
    end
end)
getgenv().CharacterAdded = Connect(Player.CharacterAdded, function(Char)
    if Jumped then
        Jumped:Disconnect()
        Jumped = nil
    end
    
    getgenv().Jumped = Connect(Char:WaitForChild("Humanoid").Jumping, function()
        JumpedFunc()
    end)
end)