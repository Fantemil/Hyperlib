
print("Hello world!")

local req = (syn and syn.request) or (http and http.request) or http_request

function GetHttp(URL)
	local Data = nil
	local Test = req({
        Url = URL,
        Method = 'GET',
	})
	for i,v in pairs(Test) do
		Data = v
	end
	return Data
end

local Something = GetHttp("https://raw.githubusercontent.com/Mana42138/woof-gui/main/Source.lua")


local Win = loadstring(Something)():Window("Project Meow", "Blade Ball")
local Ragebot = Win:Tab("Ragebot")
local Credits = Win:Tab("Credits")

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local RandRNG = math.random()
local RandAutoaParry = {[tostring(RandRNG)] = false}

Ragebot:Toggle("Auto Parry", false, function(t)
    RandAutoaParry[tostring(RandRNG)] = t
end)

Ragebot:Slider("Parry Base Distance", 0, 100, 0, function(t)
    BaseDistance = t
end)

Ragebot:line()

Ragebot:Toggle("Auto Walk", false, function(t)
    AutoWalk = t
end)

Ragebot:Toggle("Player Saftey", false, function(t)
    PlayerSaftey = t
end)

Ragebot:Slider("Player Saftey Distance", 0, 50, 10, function(v)
    PlayerSaftey_Distance = v
end)

local can_Execute = false
if not getgenv().WalkSpeed_Mana then
    getgenv().WalkSpeed_Mana = 0
    can_Execute = true
else
    can_Execute = false
end

Ragebot:Slider("Walk Speed", 0, 250, 35, function(v)
    getgenv().WalkSpeed_Mana = v
end)

if can_Execute then
    print("executed!")
    spawn(function()
        while task.wait() do
            pcall(function()
                player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeed_Mana
            end)
        end
    end)
end

Ragebot:Slider("Auto Walk Distance X", -40, 40, 12, function(t)
    AutoWalkDistanceX = t
end)

Ragebot:Slider("Auto Walk Distance Z", -40, 40, 13, function(t)
    AutoWalkDistanceZ = t
end)

Ragebot:Toggle("Auto Jump", false, function(t)
    AutoDoubleJump = t
end)

Ragebot:line()

Ragebot:Toggle("Aim At Closest Player", false, function(t)
    ClosestPlayer_var = t
end)

Ragebot:Toggle("Random Teleports", false, function(t)
    RandomTeleports = t
end)

Ragebot:Slider("Teleport Distance X", -40, 40, 0, function(t)
    TeleportDistanceX = t
end)

Ragebot:Slider("Teleport Distance Z", -40, 40, 0, function(t)
    TeleportDistanceZ = t
end)

function GetMouse()
    local UserInputService = game:GetService("UserInputService")
    return UserInputService:GetMouseLocation()  -- Ensure this is the correct method for your setup
end

function GetClosestPlayer()
    local closestDistance = math.huge
    local closestTarget = nil
    for _, v in pairs(game:GetService("Workspace").Alive:GetChildren()) do
        if v and v:FindFirstChild("HumanoidRootPart") and v ~= player.Character then
            local humanoidRootPart = v.HumanoidRootPart
                local distance = (player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude --(Vector2.new(viewportPoint.X, viewportPoint.Y) - mousePos).magnitude
                if distance < closestDistance then
                    closestDistance = distance
                    closestTarget = v
                end
        end
    end
    return closestTarget
end

spawn(function()
    while task.wait() do
        if PlayerSaftey then
            if player.Character.Parent.Name == "Dead" then return end
            pcall(function()
                if (GetClosestPlayer().HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= PlayerSaftey_Distance then
                    player.Character.HumanoidRootPart.CFrame = GetClosestPlayer().HumanoidRootPart.CFrame * CFrame.new(-0, 0, -PlayerSaftey_Distance)
                end
            end)
        end
    end
end)

function GetBall()
    for i,v in pairs(game:GetService("Workspace").Balls:GetChildren()) do
        if v:IsA("Part") then
            return v
        end
    end
    return nil
end

function GetBallfromplayerPos(Ball)
    return (Ball.Position - player.Character.HumanoidRootPart.Position).Magnitude
end

local function getSpeed(part)
    if part:IsA("BasePart") then
        local speed = part.Velocity.Magnitude
        if speed > 1 then
            return part, speed
        end
        return nil, nil
    else
        return nil, nil
    end
end

local function measureVerticalDistance(humanoidRootPart, targetPart)
    local humanoidRootPartY = humanoidRootPart.Position.Y
    local targetPartY = targetPart.Position.Y
    local verticalDistance = math.abs(humanoidRootPartY - targetPartY)
    return verticalDistance
end

function GetHotKey()
	for i,v in pairs(player.PlayerGui.Hotbar.Block.HotkeyFrame:GetChildren()) do
		if v:IsA("TextLabel") then
			return v.Text
		end
	end
	return ""
end

local text = player.PlayerGui.Hotbar.Block.HotkeyFrame.F
local KeyCodeBlock = text.Text
text:GetPropertyChangedSignal("Text"):Connect(function()
    KeyCodeBlock = text.Text
end)

local CanSlash = false
local BallSpeed = 0

spawn(function()
    while task.wait() do
        if RandAutoaParry[tostring(RandRNG)] then
            local success, err = pcall(function()
				for i, v in pairs(game:GetService("Workspace").Balls:GetChildren()) do
                    if v:IsA("Part") then
                        if not player.Character:FindFirstChild("Highlight") then return end
						local part, speed = getSpeed(v)
                        if part and speed then
                            local minDistance = 2.5 * (speed * 0.1) + 2
                            if minDistance == 0 or minDistance <= 20 then
                                BallSpeed = 23
                            elseif minDistance == 20 or minDistance <= 88 then
                                BallSpeed = 2.5 * (speed * 0.1) + 5
                            elseif minDistance == 88 or minDistance <= 110 then
                                BallSpeed = 90
                            -- elseif minDistance >= 110 then
                            --     BallSpeed = 2 * (speed * 0.1)
                            end
							if (player.Character.HumanoidRootPart.Position - part.Position).Magnitude <= (BallSpeed) then -- (player.Character.HumanoidRootPart.Position - part.Position).Magnitude <= minDistance and 
                                CanSlash = true
                            else
                                CanSlash = false
                            end
						end
                    end
                end
                
                if CanSlash then
                    local OldCameraFrame2 = workspace.CurrentCamera.CFrame
                    local camera = workspace.CurrentCamera
                    local cameraPosition = camera.CFrame.Position
                    local targetPosition = GetClosestPlayer().Head.Position

                    local direction = (targetPosition - cameraPosition).unit

                    local angleUp = math.rad(70)
                    local rotatedDirection = direction * CFrame.Angles(-angleUp, 0, 0).lookVector

                    camera.CFrame = CFrame.new(cameraPosition, cameraPosition + rotatedDirection)

                    if math.random(1, 5) == 5 then
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
                    else
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode[KeyCodeBlock], false, game)
                    end
                    CanSlash = false
                    task.wait()
                    workspace.CurrentCamera.CFrame = OldCameraFrame2
                end
            end)
            print(success, err)
        end
    end
end)

spawn(function()
    while task.wait() do
        if AutoWalk then
            pcall(function()
                if player.Character.Parent.Name == "Dead" then return end
				for i, v in pairs(game:GetService("Workspace").Balls:GetChildren()) do
                    if v:IsA("Part") then
						local part, speed = getSpeed(v)
                        if part and speed then
							if speed > 5 then
                                if not player.Character:FindFirstChild("Highlight") then
                                    player.Character.Humanoid:MoveTo(part.Position + Vector3.new(AutoWalkDistanceX, 0, AutoWalkDistanceZ))
                                else
                                    for i,v in pairs(game:GetService("Workspace").Alive:GetChildren()) do
                                        if player.Character.Parent.Name == "Alive" then
                                            if  v ~= player.Character then
                                                player.Character.Humanoid:MoveTo(v.HumanoidRootPart.Position + Vector3.new(AutoWalkDistanceX, 0, AutoWalkDistanceZ))
                                            end
                                        end
                                    end
                                end
							end
						end
                    end
                end
            end)
        end
        if AutoDoubleJump then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Space, false, game)
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if ClosestPlayer_var then
            pcall(function()
                if player.Character.Parent.Name == "Dead" then return end
                local OldCameraFrame = workspace.CurrentCamera.CFrame
                local ClosestPlayer = GetClosestPlayer()
                if ClosestPlayer then
                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, ClosestPlayer.Head.Position)
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(math.random(1,2)) do
        if RandomTeleports then
            pcall(function()
                if player.Character.Parent.Name == "Dead" then return end
                for i, v in pairs(game:GetService("Workspace").Balls:GetChildren()) do
                    if v:IsA("Part") then
						local part, speed = getSpeed(v)
                        player.Character.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(TeleportDistanceX, 0, TeleportDistancez)
                    end
                end
            end)
        end
    end
end)

Credits:Button("Developer: mana_dw", function()
    setclipboard("https://discord.gg/8RRfM9q2XP")
end)

Credits:Button("UI Designer: mana_dw", function()
    setclipboard("https://discord.gg/8RRfM9q2XP")
end)

Credits:line()

Credits:Button("Destroy Gui", function()
    if game.CoreGui:FindFirstChild("woof") then
           game.CoreGui.woof:Destroy()
    end
end)

Credits:Button("Rejoin", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)

Credits:line()
