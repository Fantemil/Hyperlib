-- Roblox Studio'da StarterGui iÃ§ine bir ScreenGui ekleyin ve bu LocalScript'i iÃ§ine yerleÅtirin

local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Mavi Kare GUI (B12)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 300)
frame.Position = UDim2.new(0.5, -150, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 255) -- Mavi renk
frame.Draggable = true -- GUI'yi sÃ¼rÃ¼klenebilir hale getir
frame.Active = true -- Fare ile etkileÅim iÃ§in aktif
frame.Parent = gui

-- 1. Buton: YazÄ± Butonu (XXXOMER1234567)
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0, 200, 0, 50)
button1.Position = UDim2.new(0.5, -100, 0, 20)
button1.Text = "XXXOMER1234567"
button1.TextColor3 = Color3.fromRGB(255, 0, 0) -- KÄ±rmÄ±zÄ± yazÄ± rengi
button1.Parent = frame

-- 2. Buton: Skybox DeÄiÅtirme
local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(0, 200, 0, 50)
button2.Position = UDim2.new(0.5, -100, 0, 80)
button2.Text = "Skybox"
button2.Parent = frame

-- Skybox deÄiÅtirme fonksiyonu
button2.MouseButton1Click:Connect(function()
    local skybox = Instance.new("Sky")
    skybox.Parent = game.Lighting
    skybox.SkyboxBk = "rbxassetid://14145625078"
    skybox.SkyboxDn = "rbxassetid://14145625078"
    skybox.SkyboxFt = "rbxassetid://14145625078"
    skybox.SkyboxLf = "rbxassetid://14145625078"
    skybox.SkyboxRt = "rbxassetid://14145625078"
    skybox.SkyboxUp = "rbxassetid://14145625078"
end)

-- 3. Buton: Decal Spam
local button3 = Instance.new("TextButton")
button3.Size = UDim2.new(0, 200, 0, 50)
button3.Position = UDim2.new(0.5, -100, 0, 140)
button3.Text = "Decal Spam"
button3.Parent = frame

-- Decal spam fonksiyonu
button3.MouseButton1Click:Connect(function()
    local decal = Instance.new("Decal")
    decal.Texture = "rbxassetid://14145625078"
    decal.Parent = game.Workspace
end)

-- 4. Buton: Jumpscare
local button4 = Instance.new("TextButton")
button4.Size = UDim2.new(0, 200, 0, 50)
button4.Position = UDim2.new(0.5, -100, 0, 200)
button4.Text = "Jumpscare"
button4.Parent = frame

-- Jumpscare fonksiyonu
button4.MouseButton1Click:Connect(function()
    local image = Instance.new("ImageLabel")
    image.Size = UDim2.new(1, 0, 1, 0)
    image.Position = UDim2.new(0, 0, 0, 0)
    image.Image = "rbxassetid://14145625078"
    image.Parent = gui

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://2838571776"
    sound.Pitch = 0.50
    sound.Volume = 1 -- Max Volume
    sound.Parent = gui
    sound:Play()

    wait(7)
    image:Destroy()
    sound:Destroy()
end)

-- 5. Buton: Dance Animasyon
local button5 = Instance.new("TextButton")
button5.Size = UDim2.new(0, 200, 0, 50)
button5.Position = UDim2.new(0.5, -100, 0, 260)
button5.Text = "Dance Animation"
button5.Parent = frame

-- Dans animasyonu fonksiyonu
button5.MouseButton1Click:Connect(function()
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://507771019" -- Dans animasyonu ID'si (Ã¶rnek)
    
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local danceTrack = humanoid:LoadAnimation(animation)
        danceTrack:Play()
    end
end)

-- 6. Buton: Player List
local button6 = Instance.new("TextButton")
button6.Size = UDim2.new(0, 200, 0, 50)
button6.Position = UDim2.new(0.5, -100, 0, 320)
button6.Text = "Player List"
button6.Parent = frame

-- Player list fonksiyonu
button6.MouseButton1Click:Connect(function()
    local playerList = Instance.new("Frame")
    playerList.Size = UDim2.new(0, 300, 0, 200)
    playerList.Position = UDim2.new(0.5, -150, 0, 400)
    playerList.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    playerList.Parent = gui

    for i, player in pairs(game.Players:GetPlayers()) do
        local playerLabel = Instance.new("TextLabel")
        playerLabel.Size = UDim2.new(1, 0, 0, 20)
        playerLabel.Position = UDim2.new(0, 0, 0, (i-1) * 20)
        playerLabel.Text = player.Name .. " - Joined: " .. tostring(player.AccountAge) .. " days ago"
        playerLabel.Parent = playerList
    end
end)