-- ServerScript veya LocalScript iÃ§inde

-- Oyuncunun GUI'sini bulun
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- ScreenGui oluÅturun
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SpeedGui"  -- GUI'nin adÄ±nÄ± ayarlayÄ±n
screenGui.Parent = playerGui -- GUI'yi PlayerGui'nin altÄ±na ekleyin

-- TextLabel oluÅturun
local textLabel = Instance.new("TextLabel")
textLabel.Name = "SpeedLabel"   -- Label'in adÄ±nÄ± ayarlayÄ±n
textLabel.Size = UDim2.new(0, 200, 0, 50)   -- Boyutunu ayarlayÄ±n
textLabel.Position = UDim2.new(0, 10, 0, 10)   -- Konumunu ayarlayÄ±n
textLabel.Text = "HÄ±z: 0"  -- BaÅlangÄ±Ã§ta gÃ¶sterilecek metin
textLabel.TextSize = 24   -- Metin boyutunu ayarlayÄ±n
textLabel.BackgroundTransparency = 0.5   -- Arka planÄ±n yarÄ± saydamlÄ±ÄÄ±nÄ± ayarlayÄ±n
textLabel.Parent = screenGui   -- Label'i ScreenGui'nin altÄ±na ekleyin

-- HÄ±zÄ± gÃ¼ncelleyen fonksiyon
local function updateSpeed()
    while true do
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                local speed = humanoid.WalkSpeed
                textLabel.Text = "HÄ±z: " .. tostring(speed)
            end
        end
        wait(0.1) -- Her 0.1 saniyede bir gÃ¼nceller
    end
end

-- Oyuncu karakteri yÃ¼klendiÄinde hÄ±zÄ± gÃ¼ncelle
player.CharacterAdded:Connect(function(character)
    updateSpeed()
end)

-- Ä°lk karakter yÃ¼klendiyse hemen baÅlat
if player.Character then
    updateSpeed()
end
