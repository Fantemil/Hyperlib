-- GUI elemanlarÄ±nÄ± oluÅturun
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomGui"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.6, 0)
frame.Position = UDim2.new(0.35, 0, 0.2, 0)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = screenGui

local buttons = {}
local buttonNames = {"YazÄ±", "Skybox", "Decal Spam", "Music", "Music 2", "Music Kapa", "Player Kill", "Nuker Kich and Ãmer"}

for i, name in ipairs(buttonNames) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0.1, 0)
    button.Position = UDim2.new(0, 0, (i - 1) * 0.1, 0)
    button.Text = name
    button.Parent = frame
    table.insert(buttons, button)
end

-- 1. Buton: YazÄ± Butonu
buttons[1].MouseButton1Click:Connect(function()
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(0.9, 0, 0.1, 0)
    textLabel.Position = UDim2.new(0.05, 0, 0.05, 0)
    textLabel.Text = "xxxomer12345678 and kich gui"
    textLabel.TextColor3 = Color3.fromHSV(math.random(), 1, 1) -- Renkli ve hareketli olacak Åekilde
    textLabel.Parent = frame

    -- Hareketli yazÄ± efekti
    while true do
        textLabel.TextColor3 = Color3.fromHSV(math.random(), 1, 1)
        wait(0.5)
    end
end)

-- 2. Buton: Skybox
buttons[2].MouseButton1Click:Connect(function()
    local skyboxIds = {115479097444345, 118506250378863}
    while true do
        local id = skyboxIds[math.random(#skyboxIds)]
        game.Lighting.Sky.SkyboxBk = "rbxassetid://" .. id
        wait(1)
    end
end)

-- 3. Buton: Decal Spam
buttons[3].MouseButton1Click:Connect(function()
    local decalId = 115479097444345
    local function spamDecals()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("BasePart") then
                local decal = Instance.new("Decal")
                decal.Texture = "rbxassetid://" .. decalId
                decal.Parent = obj
            end
        end
    end

    while true do
        spamDecals()
        wait(1)
    end
end)

-- 4. Buton: Music
buttons[4].MouseButton1Click:Connect(function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1839029458"
    sound.Looped = true
    sound.Parent = workspace
    sound:Play()
end)

-- 5. Buton: Music 2
buttons[5].MouseButton1Click:Connect(function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://247893371"
    sound.Volume = 7777777
    sound.Pitch = 0.5
    sound.Looped = true
    sound.Parent = workspace
    sound:Play()
end)

-- 6. Buton: Music Kapa
buttons[6].MouseButton1Click:Connect(function()
    for _, sound in pairs(workspace:GetChildren()) do
        if sound:IsA("Sound") then
            sound:Stop()
        end
    end
end)

-- 7. Buton: Player Kill
buttons[7].MouseButton1Click:Connect(function()
    local function killPlayer(playerName)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Name == playerName then
                player.Character:BreakJoints()
            end
        end
    end

    local playerName = "ÃrnekOyuncu" -- Buraya hedef oyuncunun adÄ±nÄ± yazÄ±n
    killPlayer(playerName)
end)

-- 8. Buton: Nuker Kich and Ãmer
buttons[8].MouseButton1Click:Connect(function()
    local function nuker()
        -- Skybox deÄiÅimi
        local skyboxIds = {115479097444345, 79279455927909}
        while true do
            local id = skyboxIds[math.random(#skyboxIds)]
            game.Lighting.Sky.SkyboxBk = "rbxassetid://" .. id
            wait(1)
        end
    end

    local function spamDecals()
        local decalId = 110327514313317
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("BasePart") then
                local decal = Instance.new("Decal")
                decal.Texture = "rbxassetid://" .. decalId
                decal.Parent = obj
            end
        end
    end

    local function clearEverything()
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj:IsA("BasePart") or obj:IsA("Model") then
                obj:Destroy()
            end
        end
    end

    -- Rozet ekleme
    local badge = Instance.new("Badge")
    badge.Name = "hacked_by_Omer_and_Kich"
    badge.Parent = game.Players.LocalPlayer

    -- Jumpscare
    local jumpscare = Instance.new("Sound")
    jumpscare.SoundId = "rbxassetid://115479097444345"
    jumpscare.Parent = workspace
    jumpscare:Play()

    wait(6) -- 6 saniye sonra jumpscare'Ä± kapat

    jumpscare:Stop()

    -- YazÄ±yÄ± kopyalama
    local text = "Hacked by Ãmer and Kich ð¾ð¾"
    for _ = 1, 7 do
        print(text)
    end

    -- Sonsuz dÃ¶ngÃ¼de ses ve hint
    local hint = Instance.new("Hint")
    hint.Text = "xxxomer12345678 join today"
    hint.Parent = screenGui

    while true do
        wait(1)
        hint.Text = hint.Text == "xxxomer12345678 join today" and "kich join today" or "xxxomer12345678 join today"
    end
end)
