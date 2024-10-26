-- GUI elemanlarÄ±nÄ± oluÅturmak iÃ§in kullanacaÄÄ±mÄ±z servisleri Ã§aÄÄ±rÄ±yoruz
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

-- GUI iÃ§in ScreenGui objesi oluÅturuyoruz
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FPSCounter" -- ScreenGui'nin adÄ±nÄ± ayarlÄ±yoruz
screenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui") -- Oyuncunun ekran GUI'sine ekliyoruz

-- FPS deÄerini gÃ¶sterecek metin kutusunu oluÅturuyoruz
local fpsDisplay = Instance.new("TextLabel")
fpsDisplay.Name = "FPSDisplay" -- Metin kutusunun adÄ±nÄ± ayarlÄ±yoruz
fpsDisplay.Size = UDim2.new(0, 100, 0, 20) -- Boyutunu ayarlÄ±yoruz
fpsDisplay.Position = UDim2.new(0, 10, 0, 10) -- Konumunu ayarlÄ±yoruz
fpsDisplay.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Arka plan rengini ayarlÄ±yoruz
fpsDisplay.TextColor3 = Color3.fromRGB(255, 255, 255) -- Metin rengini ayarlÄ±yoruz
fpsDisplay.TextSize = 18 -- Metin boyutunu ayarlÄ±yoruz
fpsDisplay.Font = Enum.Font.SourceSans -- KullanÄ±lacak fontu ayarlÄ±yoruz
fpsDisplay.Text = "FPS: --" -- BaÅlangÄ±Ã§ metnini ayarlÄ±yoruz

-- Metin kutusunu ScreenGui iÃ§ine ekliyoruz
fpsDisplay.Parent = screenGui

-- FPS deÄerini gÃ¼ncelleyecek olan iÅlevi tanÄ±mlÄ±yoruz
local function updateFPS()
    local fps = 1 / game:GetService("RunService").RenderStepped:Wait() -- Mevcut FPS deÄerini hesaplÄ±yoruz
    fpsDisplay.Text = string.format("FPS: %.2f", fps) -- Metin kutusunu gÃ¼ncelliyoruz
end

-- Her kare yenilemesinde FPS deÄerini gÃ¼ncellemek iÃ§in bir dÃ¶ngÃ¼ oluÅturuyoruz
while true do
    updateFPS() -- FPS deÄerini gÃ¼ncelliyoruz
    wait(1) -- 1 saniye bekliyoruz (FPS deÄerini her saniye bir kez gÃ¼ncellemek iÃ§in)
end
