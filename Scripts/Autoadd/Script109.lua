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


local Win = loadstring(Something)():Window("Project Meow", "Arsenal")
local Ragebot = Win:Tab("Ragebot")
local ESP = Win:Tab("ESP")
local Credits = Win:Tab("Credits")

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

loadstring(GetHttp("https://raw.githubusercontent.com/Storm99999/AR-UtilsV2/main/src/utils.lua"))()

Ragebot:Toggle("Aimbot", false, function(t)
    Aimbot2 = t
end)

Ragebot:Toggle("Silent Aim", false, function(t)
    SilentAim = t
end)

Ragebot:Toggle("All Automatic", false, function(t)
    All_Automatic = t
    for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
        if v.Name == "Auto" then
            if All_Automatic then
                v.Value = true -- always auto
            else
                v.Value = false
            end
        end
    end
end)

Ragebot:Toggle("No Spread", false, function(t)
    NoSpread = t
    for i, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
        if v.Name == "MaxSpread" or v.Name == "Spread" or v.Name == "RecoilControl" then
            if NoSpread then
                v.Value = 0 -- no spread or recoil
            else
                v.Value = 1
            end
        end
    end
end)

Ragebot:Toggle("Maximum Fire Rate", false, function(t)
    Maximum_Firerate = t
    for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
        if v.Name == "FireRate" then
            if Maximum_Firerate then
                v.Value = 0.02 -- Fast Firerate
            else
                v.Value = 0.8
            end
        end
    end
end)

local Circle = Drawing.new("Circle")
Circle.Color = Color3.fromRGB(22, 13, 56)
Circle.Thickness = 1
Circle.Radius = 250
Circle.Visible = true
Circle.NumSides = 1000
Circle.Filled = false
Circle.Transparency = 1

game:GetService("RunService").RenderStepped:Connect(
    function()
        local Mouse = game:GetService("UserInputService"):GetMouseLocation()
        Circle.Position = Vector2.new(Mouse.X, Mouse.Y)
    end
)

Ragebot:Slider("Fov", 0, 1000, 0, function(t)
    PlayerTarget_FOV = t
    Circle.Radius = PlayerTarget_FOV
end)


ESP:Toggle("Aimbot FOV", false, function(t)
    AimbotFOV = t
    Circle.Visible = AimbotFOV
end)

ESP:line()

ESP:Toggle("Box", false, function(t)
    Box = t
end)

ESP:Slider("Box Fill", 0, 100, 0, function(t)
    Box_Fill = t/100
end)

ESP:Toggle("Outline", false, function(t)
    Outline = t
end)

ESP:Slider("Box OutlineTransparency", 0, 100, 0, function(t)
    Outline_Transparency = t/100
end)

ESP:Toggle("Name ESP", false, function(t)
    NameESP = t
end)

ESP:Toggle("Health ESP", false, function(t)
    HealthESP = t
end)

function getLocalTeam()
    for i, v in pairs(game.Teams:GetChildren()) do
        if game.Players.LocalPlayer.Status.Team.Value == v.Name then
            return v.Name
        end
    end
    return ''
end

local originalCameraCFrame

function LockIn(Target, Silent_Aim)
    local targetCharacter = Target
    if targetCharacter then
        local targetHead = targetCharacter:FindFirstChild("Head")
        if targetHead then
            local cameraCFrame = camera.CFrame.Position
            local targetPosition = targetHead.Position

            local direction = (targetPosition - cameraCFrame).unit
            local lookAtCFrame = CFrame.new(cameraCFrame, targetPosition)
            
            local downAngle = 0
            local downRotation = CFrame.Angles(math.rad(downAngle), 0, 0)
            -- if isVisible(targetCharacter) then
                ClosestPlayer = GetClosestToCuror()
                if ClosestPlayer then
                    camera.CFrame = lookAtCFrame * downRotation
                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, ClosestPlayer.Character.Head.CFrame.p)
                end
            -- end
        end
    end
end

function isVisible(targetCharacter)
    local targetHead = targetCharacter:FindFirstChild("Head")
    if targetHead then
        local origin = camera.CFrame.Position
        local direction = (targetHead.Position - origin).unit
        local ray = Ray.new(origin, direction * 1000)
        local part = Workspace:FindPartOnRay(ray, player.Character)
        if part then
            if part:IsDescendantOf(targetCharacter) then
                return true
            end
        end
    end
    return false
end

function GetMouse()
    local Mouse = game:GetService("UserInputService"):GetMouseLocation()
    return Vector2.new(Mouse.X, Mouse.Y)
end

function FreeForAll(v)
        if game.Players.LocalPlayer.Team == v.Team then
            return false
        else
            return true
        end
end

function NotObstructing(i, v)
    c = workspace.CurrentCamera.CFrame.p
    a = Ray.new(c, i - c)
    f = workspace:FindPartOnRayWithIgnoreList(a, v)
    return f == nil
end

function GetClosestToCuror()
    MousePos = GetMouse()
    Closest = math.huge
    Target = nil
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if FreeForAll(v) then
            if v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer then
                Point, OnScreen = workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                if
                    OnScreen and
                        NotObstructing(
                            v.Character.UpperTorso.Position,
                            {game.Players.LocalPlayer.Character, v.Character}
                        )
                 then
                    Distance = (Vector2.new(Point.X, Point.Y) - MousePos).magnitude
                    if Distance <= PlayerTarget_FOV then
                        Closest = Distance
                        Target = v
                    end
                end
            end
        end
    end
    return Target
end

local UserInputService = game:GetService("UserInputService")
local workspace = game:GetService("Workspace")

local LastLocation = workspace.CurrentCamera.CFrame
local isMouseButton1Down = false

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isMouseButton1Down = true
        LastLocation = workspace.CurrentCamera.CFrame
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        isMouseButton1Down = false
    end
end)

local function SilentAim_Func()
        if isMouseButton1Down then
            local ClosestPlayer = GetClosestToCuror()
            if ClosestPlayer and ClosestPlayer.Character and ClosestPlayer.Character:FindFirstChild("Head") then
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, ClosestPlayer.Character.Head.Position)
                workspace.CurrentCamera.CFrame = LastLocation
            end
        end
        task.wait()
end

spawn(function()
    while task.wait() do
        if Aimbot2 then
            pcall(function()
                ClosestPlayer = GetClosestToCuror()
                if ClosestPlayer then
                    if SilentAim then
                        SilentAim_Func()
                    else
                        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, ClosestPlayer.Character.Head.CFrame.p)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v.Status.Team.Value ~= game.Players.LocalPlayer.Status.Team.Value then
                        if v ~= game.Players.LocalPlayer then
                            if game.CoreGui:FindFirstChild(v.Name.."JHDSADASDSADASd") then
                                local Billy = game.CoreGui[v.Name.."JHDSADASDSADASd"]
                                Billy.frame.Visible = Box
                                Billy.frame.BackgroundTransparency = Box_Fill
                                Billy.frame.UIStroke.Transparency = Outline_Transparency
                                Billy.frame.UIStroke.Enabled = Outline
                                Billy.frame.PlayerName.Visible = NameESP
                                Billy.Health.Visible = HealthESP
                                
                                if v:FindFirstChild("NRPBS") then
                                    local MaxHealth = v.NRPBS.MaxHealth.Value
                                    local Health = v.NRPBS.Health.Value
                                    print(Health/MaxHealth, v.Name)
                                    
                                    if Health/MaxHealth > 70 then
                                        Billy.Health.HealthIndicator.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                                    elseif Health/MaxHealth > 40 then
                                        Billy.Health.HealthIndicator.BackgroundColor3 = Color3.fromRGB(150, 255, 0)
                                    elseif Health/MaxHealth > 10 then
                                        Billy.Health.HealthIndicator.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                                    end
                                    
                                    Billy.Health.HealthIndicator.Size = UDim2.new(1, 0, Health/MaxHealth, 0)
                                end
                            else
                                local billboardGui = Instance.new("BillboardGui")
                                billboardGui.Adornee = v.Character.HumanoidRootPart
                                billboardGui.Size = UDim2.new(5, 0, 8, 0) -- Adjust size as needed
                                billboardGui.StudsOffset = Vector3.new(0, 0, 0) -- Offset above the HumanoidRootPart
                                billboardGui.AlwaysOnTop = true
                                billboardGui.Parent = game.CoreGui
                                billboardGui.Name = v.Name.."JHDSADASDSADASd"

                                local frame = Instance.new("Frame")
                                frame.Size = UDim2.new(1, 0, 1, 0)
                                frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                                frame.BackgroundTransparency = 0.5
                                frame.BorderSizePixel = 0
                                frame.Parent = billboardGui
                                frame.Position = UDim2.new(0, 0, 0, 0)
                                frame.Visible = Box
                                frame.Name = "frame"
                                
                                local uiStroke = Instance.new("UIStroke")
                                uiStroke.Thickness = 1 -- Thickness of the stroke
                                uiStroke.Color = Color3.fromRGB(255, 0, 0) -- Red color of the stroke
                                uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border -- Stroke mode, can be "Border" or "All"
                                uiStroke.Transparency = 0.5 -- Transparency of the stroke (0 is fully opaque, 1 is fully transparent)
                                uiStroke.Enabled = true -- Whether the stroke is enabled or not
                                uiStroke.Parent = frame
                            
                                local uiCorner = Instance.new("UICorner")
                                uiCorner.CornerRadius = UDim.new(0.1, 0) -- Radius of the corners (20 pixels here)
                                uiCorner.Parent = frame

                                local textLabel = Instance.new("TextLabel")
                                textLabel.Size = UDim2.new(1, 0, 0.3, 0)
                                textLabel.BackgroundTransparency = 1
                                textLabel.Text = v.Name
                                textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                                textLabel.TextSize = 6
                                textLabel.Parent = frame
                                textLabel.Name = "PlayerName"
                                
                                local uiStroke = Instance.new("UIStroke")
                                uiStroke.Thickness = 1 -- Thickness of the stroke
                                uiStroke.Color = Color3.fromRGB(0, 0, 0) -- Red color of the stroke
                                -- uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.All -- Stroke mode, can be "Border" or "All"
                                uiStroke.Transparency = 0 -- Transparency of the stroke (0 is fully opaque, 1 is fully transparent)
                                uiStroke.Enabled = true -- Whether the stroke is enabled or not
                                uiStroke.Parent = textLabel

                                local Health = Instance.new("Frame")
                                Health.Size = UDim2.new(0.02, 0, 1, 0)
                                Health.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                                Health.BackgroundTransparency = 0.5
                                Health.BorderSizePixel = 0
                                Health.Parent = billboardGui
                                Health.Position = UDim2.new(0, 0, 0, 0)
                                Health.Name = "Health"
                            
                                local HealthIndicator = Instance.new("Frame")
                                HealthIndicator.Size = UDim2.new(1, 0, 1, 0)
                                HealthIndicator.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                                HealthIndicator.BackgroundTransparency = 0.5
                                HealthIndicator.BorderSizePixel = 0
                                HealthIndicator.Parent = Health
                                HealthIndicator.Position = UDim2.new(0, 0, 0, 0)
                                HealthIndicator.Name = "HealthIndicator"
                            
                            
                                local uiStroke = Instance.new("UIStroke")
                                uiStroke.Thickness = 1 -- Thickness of the stroke
                                uiStroke.Color = Color3.fromRGB(0, 0, 0) -- Red color of the stroke
                                uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border -- Stroke mode, can be "Border" or "All"
                                uiStroke.Transparency = 0 -- Transparency of the stroke (0 is fully opaque, 1 is fully transparent)
                                uiStroke.Enabled = true -- Whether the stroke is enabled or not
                                uiStroke.Parent = Health

                            end
                        end
                    end
                end
    end
end)


Credits:Button("Developer: mana_dw", function()
    setclipboard("https://discord.gg/97anmxFpkU")
end)

Credits:Button("UI Designer: mana_dw", function()
    setclipboard("https://discord.gg/97anmxFpkU")
end)

Credits:Button("Project Meow Discord Server", function()
    setclipboard("https://discord.gg/97anmxFpkU")
        local req = (syn and syn.request) or (http and http.request) or http_request
        if req then
            req({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com'
                },
                Body = game:GetService('HttpService'):JSONEncode({
                    cmd = 'INVITE_BROWSER',
                    nonce = game:GetService('HttpService'):GenerateGUID(false),
                    args = {code = '97anmxFpkU'}
                })
            })
        end
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
