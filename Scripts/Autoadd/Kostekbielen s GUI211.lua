-- Tworzenie GUI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TeleportButton = Instance.new("TextButton")
local AntiJumpscareButton = Instance.new("TextButton")
local NoclipButton = Instance.new("TextButton")
local SkipRoomButton = Instance.new("TextButton")
local KillMonstersButton = Instance.new("TextButton")
local FlyButton = Instance.new("TextButton")
local InputTextBox = Instance.new("TextBox")
local KillPlayersButton = Instance.new("TextButton")
local GiveGunButton = Instance.new("TextButton")
local InvisibilityButton = Instance.new("TextButton")
local FloodButton = Instance.new("TextButton")
local ParticleButton = Instance.new("TextButton")
local WalkspeedButton = Instance.new("TextButton")
local WalkspeedTextBox = Instance.new("TextBox")
local CloseButton = Instance.new("TextButton")

-- Ustawienia GUI
ScreenGui.Name = "Kostekbielen's GUI"
ScreenGui.Parent = game.CoreGui -- CoreGui dziaÅa poprawnie w JJSploit

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(128, 0, 128)  -- Fioletowe tÅo
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
MainFrame.Size = UDim2.new(0, 300, 0, 500)
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

-- Dodawanie tytuÅu Kostekbielen's GUI
Title.Parent = MainFrame
Title.Text = "Kostekbielen's GUI"
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 24

-- Przycisk do zamykania "X"
CloseButton.Parent = MainFrame
CloseButton.Text = "X"
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 18
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()  -- ZamkniÄcie GUI po klikniÄciu "X"
end)

-- Tworzenie ScrollFrame do przewijania przyciskÃ³w
local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Parent = MainFrame
ScrollFrame.Size = UDim2.new(1, 0, 1, -50)
ScrollFrame.Position = UDim2.new(0, 0, 0, 50)
ScrollFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
ScrollFrame.ScrollBarThickness = 10

-- Ustawienia przyciskÃ³w w ScrollFrame
local function createButton(button, text, position)
    button.Parent = ScrollFrame
    button.Text = text
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(128, 0, 128)  -- Fioletowe przyciski domyÅlnie
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 20
end

-- Tworzenie przyciskÃ³w
createButton(TeleportButton, "TPA (NarzÄdzie Teleportacji)", UDim2.new(0.5, -100, 0.1, 0))
createButton(NoclipButton, "Noclip (Przenikanie)", UDim2.new(0.5, -100, 0.2, 0))
createButton(AntiJumpscareButton, "Anti-Jumpscare", UDim2.new(0.5, -100, 0.3, 0))
createButton(SkipRoomButton, "PomiÅ PokÃ³j", UDim2.new(0.5, -100, 0.4, 0))
createButton(KillMonstersButton, "Zabij Potwory", UDim2.new(0.5, -100, 0.5, 0))
createButton(FlyButton, "Lataj", UDim2.new(0.5, -100, 0.6, 0))

-- Tworzenie pola tekstowego na dole
InputTextBox.Parent = MainFrame
InputTextBox.Size = UDim2.new(0, 200, 0, 50)
InputTextBox.Position = UDim2.new(0.5, -100, 0.85, 0)
InputTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputTextBox.Text = ""
InputTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
InputTextBox.Font = Enum.Font.SourceSansBold
InputTextBox.TextSize = 18

-- Tworzenie dodatkowych przyciskÃ³w (niewidoczne na poczÄtku)
local function createNewButton(button, text, position)
    button.Parent = ScrollFrame
    button.Text = text
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(128, 0, 128)  -- Fioletowy kolor dla nowych przyciskÃ³w
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 20
    button.Visible = false
end

-- Nowe przyciski (widoczne po wpisaniu "kos")
createNewButton(KillPlayersButton, "Zabij Wszystkich Graczy", UDim2.new(0.5, -100, 0.7, 0))
createNewButton(GiveGunButton, "Daj Mi Pistolet", UDim2.new(0.5, -100, 0.8, 0))
createNewButton(InvisibilityButton, "NiewidzialnoÅÄ", UDim2.new(0.5, -100, 0.9, 0))
createNewButton(FloodButton, "Flood", UDim2.new(0.5, -100, 1.0, 0))
createNewButton(ParticleButton, "Particle", UDim2.new(0.5, -100, 1.1, 0))
createNewButton(WalkspeedButton, "Walkspeed", UDim2.new(0.5, -100, 1.2, 0))
createNewButton(WalkspeedTextBox, "", UDim2.new(0.5, 110, 1.2, 0)) -- Pole na prÄdkoÅÄ obok przycisku Walkspeed

-- Funkcja aktywujÄca dodatkowe przyciski po wpisaniu "kos"
local function activateNewButtons()
    KillPlayersButton.Visible = true
    GiveGunButton.Visible = true
    InvisibilityButton.Visible = true
    FloodButton.Visible = true
    ParticleButton.Visible = true
    WalkspeedButton.Visible = true
    WalkspeedTextBox.Visible = true
end

-- Funkcja zmieniajÄca GUI na tÄczowe
local function rainbowColorShift()
    local hue = tick() % 5 / 5
    return Color3.fromHSV(hue, 1, 1)
end

local function activateRainbowMode()
    spawn(function()
        while true do
            MainFrame.BackgroundColor3 = rainbowColorShift()
            TeleportButton.BackgroundColor3 = rainbowColorShift()
            NoclipButton.BackgroundColor3 = rainbowColorShift()
            AntiJumpscareButton.BackgroundColor3 = rainbowColorShift()
            SkipRoomButton.BackgroundColor3 = rainbowColorShift()
            KillMonstersButton.BackgroundColor3 = rainbowColorShift()
            FlyButton.BackgroundColor3 = rainbowColorShift()
            KillPlayersButton.BackgroundColor3 = rainbowColorShift()
            GiveGunButton.BackgroundColor3 = rainbowColorShift()
            InvisibilityButton.BackgroundColor3 = rainbowColorShift()
            FloodButton.BackgroundColor3 = rainbowColorShift()
            ParticleButton.BackgroundColor3 = rainbowColorShift()
            WalkspeedButton.BackgroundColor3 = rainbowColorShift()
            wait(0.1)
        end
    end)
end

-- Sprawdzenie, czy wpisano "kos" w polu tekstowym
InputTextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed and InputTextBox.Text:lower() == "kos" then
        activateNewButtons()
        activateRainbowMode()
    end
end)

-- Funkcja zmieniajÄca kolor przyciskÃ³w i wÅÄczajÄca/wyÅÄczajÄca funkcje
local function toggleButton(button, onFunc, offFunc)
    local enabled = false
    button.MouseButton1Click:Connect(function()
        enabled = not enabled
        if enabled then
            button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)  -- Zielony, gdy wÅÄczone
            onFunc()
        else
            button.BackgroundColor3 = Color3.fromRGB(128, 0, 128)  -- Fioletowy, gdy wyÅÄczone
            offFunc()
        end
    end)
end

-- Funkcja Flood (zalewa mapÄ wodÄ)
FloodButton.MouseButton1Click:Connect(function()
    local water = Instance.new("Part")
    water.Size = Vector3.new(1000, 50, 1000)
    water.Position = Vector3.new(0, -50, 0)
    water.Anchored = true
    water.Parent = game.Workspace
    water.BrickColor = BrickColor.new("Bright blue")
    water.Material = Enum.Material.Water
    print("Zalanie aktywowane!")
end)

-- Funkcja Particle (partikle wokÃ³Å graczy)
ParticleButton.MouseButton1Click:Connect(function()
    for _, player in pairs(game.Players:GetPlayers()) do
        local particleEmitter = Instance.new("ParticleEmitter")
        particleEmitter.Texture = "rbxassetid://2697431" -- ID tekstury particle
        particleEmitter.Lifetime = NumberRange.new(1)
        particleEmitter.Rate = 50
        particleEmitter.Parent = player.Character:FindFirstChild("HumanoidRootPart")
    end
    print("Particle aktywowane!")
end)

-- Funkcja Walkspeed
WalkspeedButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
    local speed = tonumber(WalkspeedTextBox.Text) -- Sprawdzanie prÄdkoÅci
    if humanoid then
        if WalkspeedTextBox.Text == "kkk" then
            humanoid.WalkSpeed = 10000 -- Nielimitowana prÄdkoÅÄ
            print("Nielimitowana prÄdkoÅÄ aktywowana!")
        elseif speed and speed <= 1000 then
            humanoid.WalkSpeed = speed -- Ustawianie prÄdkoÅci
            print("PrÄdkoÅÄ ustawiona na: " .. speed)
        else
            print("NieprawidÅowa wartoÅÄ. UÅ¼yj prÄdkoÅci do 1000 lub wpisz 'kkk' dla nielimitowanej prÄdkoÅci.")
        end
    end
end)

-- Funkcja niewidzialnoÅci
local invisibilityEnabled = false
local function toggleInvisibility()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character then return end

    invisibilityEnabled = not invisibilityEnabled

    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") or part:IsA("Decal") then
            part.Transparency = invisibilityEnabled and 1 or 0  -- Ukrywa lub pokazuje gracza
        end
    end

    print(invisibilityEnabled and "NiewidzialnoÅÄ wÅÄczona!" or "NiewidzialnoÅÄ wyÅÄczona!")
end

-- Funkcja noclip (przenikanie przez Åciany)
local noclipEnabled = false
local function toggleNoclip()
    noclipEnabled = not noclipEnabled
    local player = game.Players.LocalPlayer
    if player and player.Character then
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                part.CanCollide = not noclipEnabled
            end
        end
        if noclipEnabled then
            print("Noclip wÅÄczony! MoÅ¼esz przenikaÄ przez Åciany.")
        else
            print("Noclip wyÅÄczony!")
        end
    end
end

-- ObsÅuga klawiszy sterujÄcych lataniem
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.W then
        flyControl.w = 1
    elseif input.KeyCode == Enum.KeyCode.S then
        flyControl.s = 1
    elseif input.KeyCode == Enum.KeyCode.A then
        flyControl.a = 1
    elseif input.KeyCode == Enum.KeyCode.D then
        flyControl.d = 1
    elseif input.KeyCode == Enum.KeyCode.Space then
        verticalSpeed.up = 1
    elseif input.KeyCode == Enum.KeyCode.LeftShift then
        verticalSpeed.down = 1
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.W then
        flyControl.w = 0
    elseif input.KeyCode == Enum.KeyCode.S then
        flyControl.s = 0
    elseif input.KeyCode == Enum.KeyCode.A then
        flyControl.a = 0
    elseif input.KeyCode == Enum.KeyCode.D then
        flyControl.d = 0
    elseif input.KeyCode == Enum.KeyCode.Space then
        verticalSpeed.up = 0
    elseif input.KeyCode == Enum.KeyCode.LeftShift then
        verticalSpeed.down = 0
    end
end)
