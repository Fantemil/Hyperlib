local teamCheck = false
local fov = 500
local smoothing = 1

-- ÐÐµÑÐµÐ¼ÐµÐ½Ð½ÑÐµ Ð´Ð»Ñ Ð¾Ð±ÑÑÐµÐ½Ð¸Ñ
local totalShots = 0
local totalHits = 0
local accuracy = 0.0

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 1.5
FOVring.Radius = fov
FOVring.Transparency = 1
FOVring.Color = Color3.fromRGB(255, 128, 128)
FOVring.Position = workspace.CurrentCamera.ViewportSize / 2

-- ÐÐ¾Ð»ÑÑÐµÐ½Ð¸Ðµ Ð±Ð»Ð¸Ð¶Ð°Ð¹ÑÐµÐ³Ð¾ Ð²ÑÐ°Ð³Ð°
local function getClosest(cframe)
    local ray = Ray.new(cframe.Position, cframe.LookVector).Unit
    
    local target = nil
    local mag = math.huge
    
    for i, v in pairs(game.Players:GetPlayers()) do
        if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or (not teamCheck)) then
            local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude
            
            if magBuf < mag then
                mag = magBuf
                target = v
            end
        end
    end
    
    return target
end

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ ÑÐ°Ð¼Ð¾Ð¾Ð±ÑÑÐµÐ½Ð¸Ñ
local function updateLearning(success)
    totalShots = totalShots + 1
    if success then
        totalHits = totalHits + 1
    end
    accuracy = totalHits / totalShots

    -- ÐÐ²ÑÐ¾Ð¼Ð°ÑÐ¸ÑÐµÑÐºÐ¾Ðµ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ðµ FOV Ð¸ smoothing Ð² Ð·Ð°Ð²Ð¸ÑÐ¸Ð¼Ð¾ÑÑÐ¸ Ð¾Ñ ÑÐ¾ÑÐ½Ð¾ÑÑÐ¸
    if accuracy < 0.3 then
        -- ÐÑÐ»Ð¸ ÑÐ¾ÑÐ½Ð¾ÑÑÑ Ð½Ð¸Ð·ÐºÐ°Ñ, ÑÐ²ÐµÐ»Ð¸ÑÐ¸Ð²Ð°ÐµÐ¼ FOV Ð¸ ÑÐ¼ÐµÐ½ÑÑÐ°ÐµÐ¼ Ð¿Ð»Ð°Ð²Ð½Ð¾ÑÑÑ
        fov = fov + 10
        smoothing = math.max(0.05, smoothing - 0.01)
    elseif accuracy > 0.7 then
        -- ÐÑÐ»Ð¸ ÑÐ¾ÑÐ½Ð¾ÑÑÑ Ð²ÑÑÐ¾ÐºÐ°Ñ, ÑÐ¼ÐµÐ½ÑÑÐ°ÐµÐ¼ FOV Ð¸ ÑÐ²ÐµÐ»Ð¸ÑÐ¸Ð²Ð°ÐµÐ¼ Ð¿Ð»Ð°Ð²Ð½Ð¾ÑÑÑ
        smoothing = math.min(1, smoothing + 0.01)
    end

    -- ÐÐ±Ð½Ð¾Ð²Ð»ÑÐµÐ¼ ÐºÑÑÐ³ FOV
    FOVring.Radius = fov
end

-- ÐÑÐ½Ð¾Ð²Ð½Ð°Ñ Ð»Ð¾Ð³Ð¸ÐºÐ° Ð°Ð¸Ð¼Ð±Ð¾ÑÐ°
loop = RunService.RenderStepped:Connect(function()
    -- ÐÑÑÐ»ÐµÐ¶Ð¸Ð²Ð°Ð½Ð¸Ðµ Ð½Ð°Ð¶Ð°ÑÐ¸Ñ ÑÑÐµÐ´Ð½ÐµÐ¹ ÐºÐ½Ð¾Ð¿ÐºÐ¸ Ð¼ÑÑÐ¸ Ð¸Ð»Ð¸ ÐºÐ»Ð°Ð²Ð¸ÑÐ¸ E
    local isMiddleMousePressed = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton3)
    local isEKeyPressed = UserInputService:IsKeyDown(Enum.KeyCode.E)
    
    if (isMiddleMousePressed or isEKeyPressed) then
        local localPlayer = game.Players.LocalPlayer
        local character = localPlayer.Character
        local cam = workspace.CurrentCamera
        local screenCenter = workspace.CurrentCamera.ViewportSize / 2

        if character then
            local closestTarget = getClosest(cam.CFrame)
            if closestTarget and closestTarget.Character and closestTarget.Character:FindFirstChild("Head") then
                local ssHeadPoint = cam:WorldToScreenPoint(closestTarget.Character.Head.Position)
                ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
                
                if (ssHeadPoint - screenCenter).Magnitude < fov then
                    -- ÐÐ¾Ð²Ð¾ÑÐ¾Ñ ÐºÐ°Ð¼ÐµÑÑ
                    local targetCFrame = CFrame.new(cam.CFrame.Position, closestTarget.Character.Head.Position)
                    cam.CFrame = cam.CFrame:Lerp(targetCFrame, smoothing)

                    -- ÐÑÐ¾Ð²ÐµÑÐºÐ° Ð½Ð° Ð¿Ð¾Ð¿Ð°Ð´Ð°Ð½Ð¸Ðµ (Ð¸Ð¼Ð¸ÑÐ°ÑÐ¸Ñ)
                    local hitChance = math.random() < 0.9 -- 90% ÑÐ°Ð½Ñ Ð¿Ð¾Ð¿Ð°Ð´Ð°Ð½Ð¸Ñ
                    updateLearning(hitChance)
                else
                    -- ÐÑÐ»Ð¸ ÑÐµÐ»Ñ Ð²ÑÑÐ»Ð° Ð¸Ð· FOV, ÑÐ±ÑÐ°ÑÑÐ²Ð°ÐµÐ¼
                    currentTarget = nil
                end
            end
        end
    end
end)

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¾ÑÐ¾Ð±ÑÐ°Ð¶ÐµÐ½Ð¸Ñ Ð¿ÑÐ¾Ð³ÑÐµÑÑÐ° Ð¾Ð±ÑÑÐµÐ½Ð¸Ñ (Ð½Ð°Ð¿ÑÐ¸Ð¼ÐµÑ, ÑÐ¾ÑÐ½Ð¾ÑÑÑ)
RunService.RenderStepped:Connect(function()
    -- ÐÑÐ²Ð¾Ð´Ð¸Ð¼ ÑÐµÐºÑÑÑÑ ÑÐ¾ÑÐ½Ð¾ÑÑÑ
    print(string.format("Accuracy: %.2f%% | Total Shots: %d | Total Hits: %d", accuracy * 100, totalShots, totalHits))
end)

-- Ð§ÐÐ¢ ESP

-- ÐÐ¾Ð»ÑÑÐµÐ½Ð¸Ðµ ÑÐµÑÐ²Ð¸ÑÐ¾Ð²
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

-- Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð´Ð»Ñ ÑÑÐ°Ð½ÐµÐ½Ð¸Ñ ESP-ÑÐ»ÐµÐ¼ÐµÐ½ÑÐ¾Ð²
local espElements = {}

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ñ ESP-ÑÐ¸Ð»ÑÑÑÐ° Ð¸ Ð¾ÑÐ¾Ð±ÑÐ°Ð¶ÐµÐ½Ð¸Ñ Ð½Ð¸ÐºÐ° Ð¸Ð³ÑÐ¾ÐºÐ°
local function createESP(player)
    if player == LocalPlayer then return end -- ÐÐ³Ð½Ð¾ÑÐ¸ÑÑÐµÐ¼ ÑÐµÐ±Ñ

    -- Ð¢Ð°Ð±Ð»Ð¸ÑÐ° Ð´Ð»Ñ ÑÑÐ°Ð½ÐµÐ½Ð¸Ñ Ð»Ð¸Ð½Ð¸Ð¹ ÑÐ¸Ð»ÑÑÑÐ° Ð¸ ÑÐµÐºÑÑÐ°
    local espTable = {}
    
    -- Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ ÑÐµÐºÑÑÐ° Ð´Ð»Ñ Ð½Ð¸ÐºÐ°
    local nameTag = Drawing.new("Text")
    nameTag.Visible = false
    nameTag.Center = true
    nameTag.Outline = true
    nameTag.Size = 18
    nameTag.Color = Color3.fromRGB(255, 255, 0) -- ÐÑÐ»ÑÑÐ¹ ÑÐ²ÐµÑ
    nameTag.Text = player.Name
    espTable.nameTag = nameTag
    
    -- Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð»Ð¸Ð½Ð¸Ð¹ Ð´Ð»Ñ Ð²ÑÐ´ÐµÐ»ÐµÐ½Ð¸Ñ ÑÐ¸Ð»ÑÑÑÐ°
    local lines = {}
    for i = 1, 8 do
        local line = Drawing.new("Line")
        line.Visible = false
        line.Thickness = 2
        line.Transparency = 1
        line.Color = Color3.fromRGB(255, 255, 0) -- ÐÑÐ»ÑÑÐ¹ ÑÐ²ÐµÑ
        table.insert(lines, line)
    end
    espTable.lines = lines
    
    espElements[player] = espTable
end

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ ESP Ð´Ð»Ñ Ð²ÑÐµÑ Ð¸Ð³ÑÐ¾ÐºÐ¾Ð²
local function updateESP()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local character = player.Character
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            local head = character:FindFirstChild("Head")
            local lines = espElements[player].lines
            local nameTag = espElements[player].nameTag
            
            if head and humanoidRootPart then
                local rootPos, onScreen = Camera:WorldToViewportPoint(humanoidRootPart.Position)
                local headPos = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
                local torsoPos = Camera:WorldToViewportPoint(humanoidRootPart.Position + Vector3.new(0, -1, 0))
                
                -- ÐÑÐ»Ð¸ Ð¸Ð³ÑÐ¾Ðº Ð½Ð°ÑÐ¾Ð´Ð¸ÑÑÑ Ð½Ð° ÑÐºÑÐ°Ð½Ðµ, Ð¾Ð±Ð½Ð¾Ð²Ð»ÑÐµÐ¼ Ð»Ð¸Ð½Ð¸Ð¸ Ð¸ ÑÐµÐºÑÑ
                if onScreen then
                    -- ÐÐ±Ð½Ð¾Ð²Ð»ÑÐµÐ¼ ÑÐµÐºÑÑ Ð½Ð¸ÐºÐ°
                    nameTag.Position = Vector2.new(headPos.X, headPos.Y - 30)
                    nameTag.Visible = true

                    -- ÐÐ¾Ð»ÑÑÐ°ÐµÐ¼ Ð¿Ð¾Ð·Ð¸ÑÐ¸Ð¸ Ð´Ð»Ñ ÑÐ³Ð»Ð¾Ð² ÑÐµÐ»Ð°
                    local points = {
                        Camera:WorldToViewportPoint(humanoidRootPart.Position + Vector3.new(-1, 2, 0)),   -- ÐÐµÐ²Ð¾-Ð²ÐµÑÑ
                        Camera:WorldToViewportPoint(humanoidRootPart.Position + Vector3.new(1, 2, 0)),    -- ÐÑÐ°Ð²Ð¾-Ð²ÐµÑÑ
                        Camera:WorldToViewportPoint(humanoidRootPart.Position + Vector3.new(-1, -2, 0)),  -- ÐÐµÐ²Ð¾-Ð½Ð¸Ð·
                        Camera:WorldToViewportPoint(humanoidRootPart.Position + Vector3.new(1, -2, 0)),   -- ÐÑÐ°Ð²Ð¾-Ð½Ð¸Ð·
                    }

                    -- Ð£ÑÑÐ°Ð½Ð°Ð²Ð»Ð¸Ð²Ð°ÐµÐ¼ Ð»Ð¸Ð½Ð¸Ð¸ Ð´Ð»Ñ Ð²ÑÐ´ÐµÐ»ÐµÐ½Ð¸Ñ ÑÐ¸Ð»ÑÑÑÐ°
                    lines[1].From = Vector2.new(points[1].X, points[1].Y)
                    lines[1].To = Vector2.new(points[2].X, points[2].Y)
                    lines[1].Visible = true

                    lines[2].From = Vector2.new(points[2].X, points[2].Y)
                    lines[2].To = Vector2.new(points[4].X, points[4].Y)
                    lines[2].Visible = true

                    lines[3].From = Vector2.new(points[4].X, points[4].Y)
                    lines[3].To = Vector2.new(points[3].X, points[3].Y)
                    lines[3].Visible = true

                    lines[4].From = Vector2.new(points[3].X, points[3].Y)
                    lines[4].To = Vector2.new(points[1].X, points[1].Y)
                    lines[4].Visible = true
                else
                    -- ÐÑÐ»Ð¸ Ð¸Ð³ÑÐ¾Ðº Ð²Ð½Ðµ ÑÐºÑÐ°Ð½Ð°, ÑÐºÑÑÐ²Ð°ÐµÐ¼ Ð»Ð¸Ð½Ð¸Ð¸ Ð¸ ÑÐµÐºÑÑ
                    for _, line in pairs(lines) do
                        line.Visible = false
                    end
                    nameTag.Visible = false
                end
            end
        end
    end
end

-- ÐÐ½Ð¸ÑÐ¸Ð°Ð»Ð¸Ð·Ð°ÑÐ¸Ñ ESP Ð´Ð»Ñ Ð²ÑÐµÑ Ð¸Ð³ÑÐ¾ÐºÐ¾Ð²
for _, player in pairs(Players:GetPlayers()) do
    createESP(player)
end

-- ÐÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ ESP Ð¿ÑÐ¸ Ð¿Ð¾Ð´ÐºÐ»ÑÑÐµÐ½Ð¸Ð¸ Ð½Ð¾Ð²ÑÑ Ð¸Ð³ÑÐ¾ÐºÐ¾Ð²
Players.PlayerAdded:Connect(function(player)
    createESP(player)
end)

-- Ð£Ð´Ð°Ð»ÐµÐ½Ð¸Ðµ ESP Ð¿ÑÐ¸ Ð²ÑÑÐ¾Ð´Ðµ Ð¸Ð³ÑÐ¾ÐºÐ°
Players.PlayerRemoving:Connect(function(player)
    if espElements[player] then
        for _, line in pairs(espElements[player].lines) do
            line:Remove()
        end
        espElements[player].nameTag:Remove()
        espElements[player] = nil
    end
end)

-- ÐÐ»Ð°Ð²Ð½ÑÐ¹ ÑÐ¸ÐºÐ» Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ ESP
RunService.RenderStepped:Connect(function()
    updateESP()
end)