-- Ekrana GUI ekleyelim
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GAME INFO BY OMER MOD LOL ð¹ð·"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Ana ÃerÃ§eve (Frame) OluÅturma
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.7, 0, 0.5, 0) -- YÃ¼ksekliÄi %50, geniÅliÄi %70
frame.Position = UDim2.new(0.15, 0, 0.25, 0) -- Ortada
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.Visible = false -- BaÅlangÄ±Ã§ta gÃ¶rÃ¼nmez
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
listLayout.Padding = UDim.new(0, 5) -- Butonlar arasÄ±ndaki boÅluk
listLayout.Parent = contentFrame

-- FonksiyonlarÄ± tanÄ±mlayÄ±n
local function createButton(name, color, action)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 30) -- Buton yÃ¼ksekliÄi 30 piksel
    button.Text = name
    button.BackgroundColor3 = color
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSansBold -- KalÄ±n yazÄ± tipi
    button.Parent = contentFrame

    button.MouseButton1Click:Connect(action)
end

-- GUI'yi aÃ§mak iÃ§in buton
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.5, 0, 0, 50) -- AÃ§ma/Kapama buton yÃ¼ksekliÄi
toggleButton.Position = UDim2.new(0.25, 0, 0.1, 0) -- Ortada konumlandÄ±r
toggleButton.Text = "GUI'yi AÃ§"
toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.Parent = screenGui

-- AÃ§ma/Kapama fonksiyonu
local function toggleGUI()
    frame.Visible = not frame.Visible
    toggleButton.Text = frame.Visible and "GUI'yi Kapat" or "GUI'yi AÃ§" -- Buton metnini deÄiÅtir
end

toggleButton.MouseButton1Click:Connect(toggleGUI)

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
    game.Players.LocalPlayer.Character.Humanoid.RigType = Enum.HumanoidRigType.R15
    wait(10)
    game.Players.LocalPlayer:Kick("XXXOMER12345678 EZ WÄ°N LOLL ð¹ð·")
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
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.MaxHealth = math.huge
    player.Character.Humanoid.Health = math.huge
end)

createButton("Fly GUI", Color3.fromRGB(0, 255, 150), function()
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, 50, 0)
    bodyVelocity.MaxForce = Vector3.new(0, 4000, 0)
    bodyVelocity.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
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

    local adminButton = Instance.new("TextButton")
    adminButton.Size = UDim2.new(1, 0, 0, 30)
    adminButton.Text = "Admin Butonu"
    adminButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    adminButton.Parent = adminMenu

    -- Admin butonuna tÄ±klandÄ±ÄÄ±nda
    adminButton.MouseButton1Click:Connect(function()
        print("Admin butonu tÄ±klandÄ±!")
    end)
end)

createButton("ZIPLA", Color3.fromRGB(255, 100, 100), function()
    local player = game.Players.LocalPlayer
    player.Character.HumanoidRootPart.Velocity = Vector3.new(0, 50, 0) -- YukarÄ± zÄ±plat
end)

createButton("YETKÄ°LÄ°LER", Color3.fromRGB(100, 150, 255), function()
    print("YETKÄ°LÄ°LER")
end)

createButton("OYUNCULARI AT", Color3.fromRGB(150, 100, 255), function()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            player:Kick("AtÄ±ldÄ±n!") -- OyuncularÄ± at
        end
    end
end)

createButton("YENÄ°DEN BAÅLAT", Color3.fromRGB(200, 255, 100), function()
    game.Players.LocalPlayer:Kick("Oyun yeniden baÅlatÄ±ldÄ±!")
end)

createButton("ÃIK", Color3.fromRGB(255, 100,