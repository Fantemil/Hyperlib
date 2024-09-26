-- LocalScript iÃ§eriÄi

-- Frame oluÅturuluyor
local screenGui = script.Parent
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- Beyaz arka plan
frame.Parent = screenGui

-- Buton Ã¶zellikleri
local buttonWidth = 150
local buttonHeight = 50
local spacing = 10

local function createButton(name, action, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, buttonWidth, 0, buttonHeight)
    button.Position = UDim2.new(0, position.X, 0, position.Y)
    button.Text = name
    button.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 24
    button.TextStrokeTransparency = 0.5
    button.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    button.BorderSizePixel = 2
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.Parent = frame
    
    button.MouseButton1Click:Connect(action)
end

-- ZÄ±plama YÃ¼ksekliÄi iÅlevi
local function increaseJumpHeight()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        humanoid.JumpPower = 100  -- ZÄ±plama gÃ¼cÃ¼nÃ¼ artÄ±r
    end
end

-- KÃ¼Ã§Ã¼k Bir Kapsama AlanÄ± iÅlevi
local function createSmallArea()
    local player = game.Players.LocalPlayer
    if player and player.Character then
        local region = Instance.new("Part")
        region.Size = Vector3.new(10, 1, 10)
        region.Position = player.Character.HumanoidRootPart.Position
        region.Anchored = true
        region.CanCollide = false
        region.BrickColor = BrickColor.new("Bright blue")
        region.Parent = game.Workspace
    end
end

-- Zemin KaydÄ±rma iÅlevi
local function scrollGround()
    local player = game.Players.LocalPlayer
    if player and player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
        local ground = game.Workspace.Terrain
        ground:SetCell(player.Character.HumanoidRootPart.Position, 0, Enum.Material.SmoothPlastic)  -- Ãrnek zemin kaydÄ±rma
    end
end

-- KÃ¼Ã§Ã¼k Bir ÅimÅek iÅlevi
local function createLightning()
    local player = game.Players.LocalPlayer
    if player and player.Character then
        local lightning = Instance.new("Part")
        lightning.Size = Vector3.new(1, 20, 1)
        lightning.Position = player.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0)
        lightning.BrickColor = BrickColor.new("Bright yellow")
        lightning.Anchored = true
        lightning.CanCollide = false
        lightning.Parent = game.Workspace

        -- KÃ¼Ã§Ã¼k bir Ä±ÅÄ±k etkisi
        local light = Instance.new("PointLight")
        light.Color = Color3.fromRGB(255, 255, 0)
        light.Brightness = 2
        light.Range = 10
        light.Parent = lightning
    end
end

-- BÃ¶lgesel HÄ±z ArtÄ±ÅÄ± iÅlevi
local function increaseSpeedInRegion()
    local player = game.Players.LocalPlayer
    if player and player.Character then
        local region = Region3.new(
            player.Character.HumanoidRootPart.Position - Vector3.new(10, 10, 10),
            player.Character.HumanoidRootPart.Position + Vector3.new(10, 10, 10)
        )
        for _, otherPlayer in pairs(game.Players:GetPlayers()) do
            if otherPlayer.Character and region:Contains(otherPlayer.Character.HumanoidRootPart.Position) then
                local humanoid = otherPlayer.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid.WalkSpeed = 50  -- HÄ±z artÄ±rma
                end
            end
        end
    end
end

-- Arka Plan DeÄiÅtirici iÅlevi
local function changeBackgroundColor()
    local player = game.Players.LocalPlayer
    if player then
        local newColor = Color3.fromHSV(math.random(), 1, 1)  -- Rastgele bir renk
        game.Lighting.BackgroundColor3 = newColor
    end
end

-- Zaman Tersine Ãevirme iÅlevi
local function reverseTime()
    -- Bu iÅlev daha karmaÅÄ±k olabilir ve genellikle Ã¶zel zaman tersine Ã§evirme mekanizmalarÄ± gerektirir.
    print("Zaman tersine Ã§evrildi!")
end

-- Ekran KaydÄ± iÅlevi
local function toggleRecording()
    -- Roblox'ta ekran kaydÄ±nÄ± baÅlatmak ve durdurmak iÃ§in Ã¶zel bir API yoktur.
    print("Ekran kaydÄ± baÅlatÄ±ldÄ± veya durduruldu!")
end

-- ButonlarÄ± oluÅturma
createButton("ZÄ±plama YÃ¼ksekliÄi", increaseJumpHeight, Vector2.new(10, 10))
createButton("Kapsama AlanÄ±", createSmallArea, Vector2.new(10, 70))
createButton("Zemin KaydÄ±rma", scrollGround, Vector2.new(10, 130))
createButton("ÅimÅek Efekti", createLightning, Vector2.new(10, 190))
createButton("BÃ¶lgesel HÄ±z ArtÄ±ÅÄ±", increaseSpeedInRegion, Vector2.new(10, 250))
createButton("Arka Plan Rengi", changeBackgroundColor, Vector2.new(10, 310))
createButton("Zaman Tersine Ãevirme", reverseTime, Vector2.new(10, 370))
createButton("Ekran KaydÄ±", toggleRecording, Vector2.new(10, 430))
