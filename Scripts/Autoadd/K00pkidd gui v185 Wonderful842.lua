-- BoÅ bir GUI Åablonu ve animasyonlu bir baÅlangÄ±Ã§ ekranÄ±

local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local skyboxButton = Instance.new("TextButton")
local jumpscareButton = Instance.new("TextButton")
local nukersButton = Instance.new("TextButton")
local playerJumpButton = Instance.new("TextButton")
local animationButton = Instance.new("TextButton")
local hintLabel = Instance.new("TextLabel")

-- GUI Ãzellikleri
gui.Name = "CustomGui"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

frame.Parent = gui
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 5
frame.Position = UDim2.new(0.3, 0, 0.2, 0)
frame.Size = UDim2.new(0.4, 0, 0.6, 0)
frame.BackgroundTransparency = 0.5

-- Butonlar
skyboxButton.Parent = frame
skyboxButton.Text = "Skybox"
skyboxButton.Position = UDim2.new(0.1, 0, 0.1, 0)
skyboxButton.Size = UDim2.new(0.8, 0, 0.1, 0)

jumpscareButton.Parent = frame
jumpscareButton.Text = "Jumpscare"
jumpscareButton.Position = UDim2.new(0.1, 0, 0.25, 0)
jumpscareButton.Size = UDim2.new(0.8, 0, 0.1, 0)

nukersButton.Parent = frame
nukersButton.Text = "Nukers"
nukersButton.Position = UDim2.new(0.1, 0, 0.4, 0)
nukersButton.Size = UDim2.new(0.8, 0, 0.1, 0)

playerJumpButton.Parent = frame
playerJumpButton.Text = "Player Jump Speed"
playerJumpButton.Position = UDim2.new(0.1, 0, 0.55, 0)
playerJumpButton.Size = UDim2.new(0.8, 0, 0.1, 0)

animationButton.Parent = frame
animationButton.Text = "Animation Menu"
animationButton.Position = UDim2.new(0.1, 0, 0.7, 0)
animationButton.Size = UDim2.new(0.8, 0, 0.1, 0)

-- Animasyon Efekti
local function animateFrame()
    frame:TweenPosition(UDim2.new(0.3, 0, 0.2, 0), "Out", "Bounce", 9, true)
end

-- Dil DesteÄi
local languages = {
    ["en"] = "Welcome to the GUI",
    ["tr"] = "GUI'ye HoÅ Geldiniz",
}

local function showHint()
    hintLabel.Parent = frame
    hintLabel.Text = languages["tr"] -- EÄer dil tespit etmek istersen, otomatik dil tespiti ekleyebilirsin
    hintLabel.Position = UDim2.new(0.1, 0, 0.85, 0)
    hintLabel.Size = UDim2.new(0.8, 0, 0.1, 0)
end

-- Skybox deÄiÅtirme
skyboxButton.MouseButton1Click:Connect(function()
    local skyboxId = "rbxassetid://114438311449423"
    local sky = Instance.new("Sky", game.Lighting)
    sky.SkyboxBk = skyboxId
    sky.SkyboxDn = skyboxId
    sky.SkyboxFt = skyboxId
    sky.SkyboxLf = skyboxId
    sky.SkyboxRt = skyboxId
    sky.SkyboxUp = skyboxId
end)

-- Jumpscare Ä°Ålevi
jumpscareButton.MouseButton1Click:Connect(function()
    local jumpscareImage = Instance.new("ImageLabel")
    jumpscareImage.Parent = gui
    jumpscareImage.Size = UDim2.new(1, 0, 1, 0)
    jumpscareImage.Image = "rbxassetid://122609059319189"

    local sound = Instance.new("Sound", jumpscareImage)
    sound.SoundId = "rbxassetid://8484439709"
    sound.Volume = 8338838338
    sound.Pitch = 0.50
    sound:Play()

    wait(2)
    jumpscareImage:Destroy()
end)

-- Nukers butonu
nukersButton.MouseButton1Click:Connect(function()
    local hintMessage = Instance.new("TextLabel", gui)
    hintMessage.Text = "ALLAHU AKBAR!!!!!!"
    hintMessage.Size = UDim2.new(1, 0, 0.1, 0)
    hintMessage.TextColor3 = Color3.new(1, 0, 0)
    hintMessage.BackgroundTransparency = 1
    hintMessage.Position = UDim2.new(0, 0, 0.9, 0)

    wait(2)
    hintMessage.Text = "ðXXXOMER12345678ð"
    -- DiÄer gÃ¶rsel ve ses efektleri buraya eklenebilir
end)

-- GUI aÃ§Ä±lma animasyonu ve efektli baÅlama
animateFrame()
showHint()