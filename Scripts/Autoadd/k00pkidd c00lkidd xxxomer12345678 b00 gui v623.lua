-- Ekrana GUI ekleyelim
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GAME INFO BY OMER MOD LOL ð¹ð·"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Ana ÃerÃ§eve (Frame) OluÅturma
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.5, 0) -- YÃ¼ksekliÄi %50, geniÅliÄi %40
frame.Position = UDim2.new(0.3, 0, 0.25, 0) -- Ortada
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.Visible = true
frame.Parent = screenGui

-- KaydÄ±rÄ±labilir ÃerÃ§eve (ScrollingFrame)
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, 0, 1, 0)
scrollingFrame.Position = UDim2.new(0, 0, 0, 0)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.ScrollBarThickness = 10
scrollingFrame.Parent = frame

-- Ä°Ã§erik ÃerÃ§evesi (UIListLayout iÃ§in)
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, 0, 1, 0)
contentFrame.BackgroundTransparency = 1
contentFrame.Parent = scrollingFrame

-- UIListLayout
local listLayout = Instance.new("UIListLayout")
listLayout.FillDirection = Enum.FillDirection.Vertical
listLayout.Padding = UDim.new(0, 3) -- Butonlar arasÄ±ndaki boÅluk
listLayout.Parent = contentFrame

-- FonksiyonlarÄ± tanÄ±mlayÄ±n
local function createButton(name, color, action)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 25) -- Buton yÃ¼ksekliÄi 25 piksel
    button.Text = name
    button.BackgroundColor3 = color
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSansBold -- KalÄ±n yazÄ± tipi
    button.Parent = contentFrame

    button.MouseButton1Click:Connect(action)
end

-- AÃ§ma/Kapama iÃ§in zÄ±plama kontrolÃ¼
local player = game.Players.LocalPlayer
local isGuiVisible = true

local function toggleGUI()
    frame.Visible = not frame.Visible
end

-- ZÄ±plama olayÄ±
player.Character.Humanoid.Jumping:Connect(function()
    toggleGUI()
end)

-- ButonlarÄ± OluÅturma
createButton("GAME GLÄ°CH", Color3.fromRGB(255, 100, 100), function()
    game.Lighting:SetMinutesAfterMidnight(0) -- GÃ¼ndÃ¼z
end)

createButton("GAME BOM", Color3.fromRGB(255, 100, 50), function()
    local explosion = Instance.new("Explosion")
    explosion.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    explosion.BlastRadius = 50
    explosion.BlastPressure = 5000
    explosion.Parent = game.Workspace
end)

createButton("LAMBO", Color3.fromRGB(100, 200, 100), function()
    local lambo = Instance.new("Tool")
    lambo.Name = "Lambo"
    lambo.Parent = game.Players.LocalPlayer.Backpack
end)

createButton("TURK", Color3.fromRGB(255, 150, 150), function()
    local player = game.Players.LocalPlayer
    local tool = Instance.new("Tool")
    tool.Name = "TÃ¼rk SilahÄ±"
    tool.Parent = player.Backpack
    player.Name = "TÃRK"
end)

createButton("Free Player List", Color3.fromRGB(150, 255, 150), function()
    local playerList = game.Players:GetPlayers()
    for _, player in ipairs(playerList) do
        print("Name: " .. player.Name)
    end
end)

createButton("PREMIUM", Color3.fromRGB(255, 200, 50), function()
    player.Character.Humanoid.RigType = Enum.HumanoidRigType.R15
    wait(10)
    player:Kick("XXXOMER12345678 EZ WÄ°N LOLL ð¹ð·")
end)

createButton("FREE JOKER FE", Color3.fromRGB(255, 0, 255), function()
    for _, player in ipairs(game.Players:GetPlayers()) do
        player.Character:Move(Vector3.new(0, 50, 0)) -- YukarÄ± doÄru fÄ±rlatma
    end
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "JOKER FE BY OMER MOD MENU";
        Color = Color3.fromRGB(255, 0, 0);
    })
end)

createButton("Expo", Color3.fromRGB(100, 150, 255), function()
    player.Character.Humanoid.MaxHealth = math.huge
    player.Character.Humanoid.Health = math.huge
end)

createButton("Fly GUI", Color3.fromRGB(0, 255, 150), function()
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, 50, 0)
    bodyVelocity.MaxForce = Vector3.new(0, 4000, 0)
    bodyVelocity.Parent = player.Character.HumanoidRootPart
    wait(5)
    bodyVelocity:Destroy()
end)

createButton("OMER MOD", Color3.fromRGB(200, 100, 255), function()
    for _, v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") then
            v:BreakJoints() -- DÃ¼ÅÃ¼rmek iÃ§in
            v:SetPrimaryPartCFrame(CFrame.new(v.Position + Vector3.new(0, -10, 0))) -- AÅaÄÄ± dÃ¼ÅÃ¼r
        end
    end

    -- MÃ¼zik Ã§alma
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://2838571776"
    sound.Volume = 1 -- Ses seviyesi
    sound.Looped = true -- DÃ¶ngÃ¼
    sound.Parent = game.Workspace
    sound:Play()
end)

createButton("FREE ADMIN", Color3.fromRGB(255, 100, 200), function()
    local adminMenu = Instance.new("Frame")
    adminMenu.Size = UDim2.new(0.4, 0, 0.4, 0)
    adminMenu.Position = UDim2.new(0.3, 0, 0.3, 0)
    adminMenu.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    adminMenu.Parent = screenGui

    -- Admin komutlarÄ±
    createButton("Kick", Color3.fromRGB(200, 200, 200), function()
        player:Kick("Admin tarafÄ±ndan atÄ±ldÄ±nÄ±z.")
    end).Parent = adminMenu

    createButton("Ban", Color3.fromRGB(200, 100, 100), function()
        print("Banlama kodu Ã§alÄ±ÅtÄ±rÄ±ldÄ±.")
    end).Parent = adminMenu
end)

createButton("FREE PLAYER SIT", Color3.fromRGB(100, 100, 255), function()
    for _, player in ipairs(game.Players:GetPlayers()) do
        local sitAnim = Instance.new("Animation")
        sitAnim.AnimationId = "rbxassetid://180426350" -- Oturma animasyonu
        player.Character.Humanoid:LoadAnimation(sitAnim):Play()
    end
end)

createButton("Åifreli Buton", Color3.fromRGB(255, 150, 50), function()
    local password = "10abone"
    if player.Name == password then
        print("Åifre doÄru!")
    else
        print("Åifre yanlÄ±Å!")
    end
end)

-- 18. Buton: OMER MOD
createButton("OMER MOD", Color3.fromRGB(200, 100, 255), function()
    for _, model in pairs(workspace:GetChildren()) do
        if model:IsA("Model") then
            model:BreakJoints() -- DÃ¼ÅÃ¼rmek iÃ§in
            model:SetPrimaryPartCFrame(model.PrimaryPart.CFrame * CFrame.new(0, -10, 0)) -- AÅaÄÄ± dÃ¼ÅÃ¼r
        end
    end

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://2838571776"
    sound.Volume = 1 -- Ses seviyesi
    sound.Looped = true -- DÃ¶ngÃ¼
    sound.Parent = game.Workspace
    sound:Play()
end)

-- 19. Buton: Yumruk Atma
createButton("Yumruk At", Color3.fromRGB(255, 100, 200), function()
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://507771019"