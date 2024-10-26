local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "XXXOMER12345678 GUÄ° V11(Special)"
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Kare GUI oluÅturma
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.3, 0)
frame.Position = UDim2.new(0.35, 0, 0.35, 0)
frame.BackgroundColor3 = Color3.new(1, 1, 1) -- Beyaz arka plan
frame.Parent = screenGui

-- Renkli yazÄ± oluÅturma
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.2, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "XXXOMER12345678 GUÄ° V11(Special)"
titleLabel.TextColor3 = Color3.new(1, 0, 0) -- KÄ±rmÄ±zÄ± renk
titleLabel.BackgroundTransparency = 1
titleLabel.Parent = frame

-- AÅaÄÄ±da yazÄ± oluÅturma
local requireLabel = Instance.new("TextLabel")
requireLabel.Size = UDim2.new(1, 0, 0.1, 0)
requireLabel.Position = UDim2.new(0, 0, 0.9, 0)
requireLabel.Text = "require(18540239043).omerpro5('xxxomer12345678')"
requireLabel.TextColor3 = Color3.new(1, 1, 0) -- SarÄ± renk
requireLabel.BackgroundTransparency = 1
requireLabel.Parent = frame

-- SKYBOX butonu
local skyboxButton = Instance.new("TextButton")
skyboxButton.Size = UDim2.new(0.8, 0, 0.1, 0)
skyboxButton.Position = UDim2.new(0.1, 0, 0.2, 0)
skyboxButton.Text = "SKYBOX"
skyboxButton.Parent = frame

skyboxButton.MouseButton1Click:Connect(function()
    game.Lighting.Sky.TextureId = "rbxassetid://14145625078"
end)

-- DECAL SPAM butonu
local decalButton = Instance.new("TextButton")
decalButton.Size = UDim2.new(0.8, 0, 0.1, 0)
decalButton.Position = UDim2.new(0.1, 0, 0.35, 0)
decalButton.Text = "DECAL SPAM"
decalButton.Parent = frame

decalButton.MouseButton1Click:Connect(function()
    local part = Instance.new("Part")
    part.Size = Vector3.new(5, 5, 5)
    part.Position = player.Character.HumanoidRootPart.Position + Vector3.new(0, 5, 0)
    part.Parent = workspace
    
    local decal = Instance.new("Decal")
    decal.Texture = "rbxassetid://14145620056"
    decal.Parent = part
end)

-- MUSIC butonu
local musicButton = Instance.new("TextButton")
musicButton.Size = UDim2.new(0.8, 0, 0.1, 0)
musicButton.Position = UDim2.new(0.1, 0, 0.5, 0)
musicButton.Text = "MUSIC"
musicButton.Parent = frame

musicButton.MouseButton1Click:Connect(function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1839029458"
    sound.Volume = 8.383838
    sound.Pitch = 0.5
    sound.TimeLength = 50
    sound.Parent = workspace
    sound:Play()
end)

-- WORK MUTE MUSIC butonu
local muteButton = Instance.new("TextButton")
muteButton.Size = UDim2.new(0.8, 0, 0.1, 0)
muteButton.Position = UDim2.new(0.1, 0, 0.65, 0)
muteButton.Text = "WORK MUTE MUSIC"
muteButton.Parent = frame

muteButton.MouseButton1Click:Connect(function()
    for _, sound in pairs(workspace:GetChildren()) do
        if sound:IsA("Sound") then
            sound:Stop()
        end
    end
end)

-- JUMPSCARE butonu
local jumpscareButton = Instance.new("TextButton")
jumpscareButton.Size = UDim2.new(0.8, 0, 0.1, 0)
jumpscareButton.Position = UDim2.new(0.1, 0, 0.8, 0)
jumpscareButton.Text = "JUMPSCARE"
jumpscareButton.Parent = frame

jumpscareButton.MouseButton1Click:Connect(function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1839246711"
    sound.Parent = workspace
    sound:Play()

    local image = Instance.new("ImageLabel")
    image.Size = UDim2.new(1, 0, 1, 0)
    image.Image = "rbxassetid://14145625078"
    image.BackgroundTransparency = 1
    image.Parent = frame

    wait(7)
    image:Destroy()
end)

-- PLAYER SIT butonu
local playerSitButton = Instance.new("TextButton")
playerSitButton.Size = UDim2.new(0.8, 0, 0.1, 0)
playerSitButton.Position = UDim2.new(0.1, 0, 0.95, 0)
playerSitButton.Text = "PLAYER SIT"
playerSitButton.Parent = frame

playerSitButton.MouseButton1Click:Connect(function()
    local sitMenu = Instance.new("Frame")
    sitMenu.Size = UDim2.new(0.5, 0, 0.5, 0)
    sitMenu.Position = UDim2.new(0.25, 0, 0.25, 0)
    sitMenu.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
    sitMenu.Parent = screenGui

    local closeButton = Instance.new("TextButton")
    closeButton.Size = UDim2.new(0.3, 0, 0.1, 0)
    closeButton.Position = UDim2.new(0.35, 0, 0.9, 0)
    closeButton.Text = "KAPAT"
    closeButton.Parent = sitMenu

    closeButton.MouseButton1Click:Connect(function()
        sitMenu:Destroy()
    end)

    -- Sahte Åifreler oluÅturma
    local fakePasswords = {"1234", "abcd", "qwerty", "password"}
    for i, password in ipairs(fakePasswords) do
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, 0, 0.1, 0)
        label.Position = UDim2.new(0, 0, (i - 1) * 0.1, 0)
        label.Text = password
        label.Parent = sitMenu
    end
end)

-- HAXOR butonu
local haxorButton = Instance.new("TextButton")
haxorButton.Size = UDim2.new(0.8, 0, 0.1, 0)
haxorButton.Position = UDim2.new(0.1, 0, 1.1, 0)
haxorButton.Text = "â ï¸HAXORâ ï¸"
haxorButton.Parent = frame

haxorButton.MouseButton1Click:Connect(function()
    for i = 1, 192 do
        local item = Instance.new("Tool")
        item.Name = "HAXORRR â ï¸â ï¸"
        item.Parent = player.Backpack
    end

    for _, model in pairs(workspace:GetChildren()) do
        if model:IsA("Model") and model.Name ~= player.Name then
            model:Destroy()
        end
    end

    local earthquake = Instance.new("BodyPosition")
    earthquake.Parent = workspace
    earthquake.MaxForce = Vector3.new(4000, 4000, 4000)
    earthquake.P = 3000
    earthquake.Position = Vector3.new(0, 10, 0)
    wait(5)
    earthquake:Destroy()
end)

-- GAME INFO butonu
local gameInfoButton = Instance.new("TextButton")
gameInfoButton.Size = UDim2.new(0.8, 0, 0.1, 0)
gameInfoButton.Position = UDim2.new(0.1, 0, 1.2, 0)
gameInfoButton.Text = "GAME INFO"
gameInfoButton.Parent = frame

gameInfoButton.MouseButton1Click:Connect(function()
    local infoMenu = Instance.new("Frame")
    infoMenu.Size = UDim2.new(0.5, 0, 0.5, 0)
    infoMenu.Position = UDim2.new(0.25, 0, 0.25, 0)
    info