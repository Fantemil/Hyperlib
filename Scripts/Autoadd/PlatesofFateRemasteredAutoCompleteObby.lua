for i,v in next, workspace.Lobby.Obbies.Map.Hard:GetChildren() do
    if v.Name == "Lava" then
        v.CanTouch = false
    end
end

local TweenService = game.TweenService
local Player = game.Players.LocalPlayer
local Streak = 0
local cont = false
local done = false

local function CheckChar(PlrInstance)
    if PlrInstance and PlrInstance.Character and PlrInstance.Character.Parent and PlrInstance.Character:FindFirstChild("HumanoidRootPart") then
        return true
    end
    return false
end

local function Teleport(Position, stopStreak)
    if not CheckChar(Player) then return end
    local HumanoidRP = Player.Character.HumanoidRootPart
    local Speed = 20
    local RealSpeed = Player:DistanceFromCharacter(Position.p) / Speed
    local Tween = TweenService:Create(HumanoidRP, TweenInfo.new(RealSpeed), {CFrame = Position})
    
    for i,v in next, game.Players:GetPlayers() do
        if v ~= Player and CheckChar(v) and Player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) <= 700 then
            Tween = false
        end
    end
    if stopStreak then
        Player.Character:SetPrimaryPartCFrame(CFrame.new(-10027.3251953125, 2.990870952606201, -16.797283172607422))
        return
    end
    if not Tween then 
        if not done then
            Player.Character:SetPrimaryPartCFrame(CFrame.new(-10027.3251953125, 2.990870952606201, -16.797283172607422))
        end
        done = true
        return
    end
    
    Player.Character.Humanoid.Jump = true
    for i,v in next, workspace.Lobby.Obbies.Map.Hard:GetChildren() do
        if not v.CanCollide then
            v.CanCollide = true
        end
    end

    done = false
    Tween:Play()
    Tween.Completed:Wait()
    task.wait(.45)
end

while true do
    for i,v in next, game.Players:GetPlayers() do
        if v ~= Player and CheckChar(v) and Player:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) <= 700 then
            cont = true
        end
    end
    
    if cont then
        cont = false
        task.wait()
        continue
    end
    
    for i,v in next, workspace.Lobby.Obbies.Map.Hard:GetChildren() do
        if not v.CanCollide then
            v.CanCollide = true
        end
    end
    
    Teleport(CFrame.new(-10015.689453125, 7.999995231628418, -4.4880523681640625))
    
    Teleport(CFrame.new(-10027.26171875, 12.318075180053711, -5.639031887054443))

    Teleport(CFrame.new(-10036.81640625, 13.99051570892334, -4.101502418518066))

    Teleport(CFrame.new(-10046.576171875, 16.890138626098633, -3.8153603076934814))

    Teleport(CFrame.new(-10058.986328125, 13.996150016784668, -6.499391555786133))

    Teleport(CFrame.new(-10070.486328125, 10.983436584472656, -1.636106252670288))

    Teleport(CFrame.new(-10084.162109375, 10.540236473083496, -5.25571346282959))

    Teleport(CFrame.new(-10092.2080078125, 14.539032936096191, -11.843955039978027))

    Teleport(CFrame.new(-10095.8896484375, 10.540236473083496, -3.0094919204711914))

    Teleport(CFrame.new(-10105.72265625, 14.53902816772461, 2.9932143688201904))

    Teleport(CFrame.new(-10108.55859375, 10.540236473083496, -5.445741653442383))

    Teleport(CFrame.new(-10118.40625, 14.539077758789062, -12.188730239868164))
    
    Teleport(CFrame.new(-10121.8359375, 10.540236473083496, -4.518214225769043))

    Teleport(CFrame.new(-10137.1611328125, 14.541645050048828, -3.6775033473968506))

    Teleport(CFrame.new(-10146.12109375, 16.47861099243164, -6.620037078857422))

    Teleport(CFrame.new(-10157.46875, 15.029881477355957, -11.023331642150879))

    Teleport(CFrame.new(-10170.4609375, 17.081806182861328, -10.38608169555664))
    
    if Streak >= 8 then 
        Streak = 0
        Teleport(CFrame.new(-10027.3251953125, 2.990870952606201, -16.797283172607422), true)
        task.wait(10)
        continue
    end

    Teleport(CFrame.new(-10178.19921875, 16.792306900024414, -3.640791416168213))

    Teleport(CFrame.new(-10190.1142578125, 8.541457176208496, -9.9331636428833))
    task.wait(1)
    Teleport(CFrame.new(-10194.552734375, 15.435270309448242, -3.8339412212371826))
    
    Streak += 1
    task.wait(10)
end