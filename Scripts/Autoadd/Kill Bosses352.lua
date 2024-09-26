-- GUI'yi oluÅtur ve butonu ekle
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KillEntitiesGui"
screenGui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.3, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "Kill All Entities"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 24
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.BackgroundTransparency = 1
titleLabel.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0.8, 0, 0.4, 0)
button.Position = UDim2.new(0.1, 0, 0.4, 0)
button.Text = "Execute"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 20
button.Font = Enum.Font.SourceSansBold
button.BackgroundColor3 = Color3.fromRGB(0, 128, 255)
button.BorderSizePixel = 0
button.Parent = frame

-- Butona tÄ±klandÄ±ÄÄ±nda Ã§alÄ±Åacak fonksiyon
button.MouseButton1Click:Connect(function()
    -- Oyundaki tÃ¼m oyuncularÄ± ve NPC'leri Ã¶ldÃ¼ren script

    local function killAllEntitiesExceptSelf()
        -- Oyundaki tÃ¼m oyuncular
        for _, p in ipairs(game.Players:GetPlayers()) do
            if p ~= player then
                local character = p.Character
                if character then
                    for _, part in ipairs(character:GetChildren()) do
                        if part:IsA("Humanoid") then
                            part.Health = 0
                        end
                    end
                end
            end
        end
        
        -- Oyundaki tÃ¼m NPC'ler ve bosslar
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("Model") and v:FindFirstChildOfClass("Humanoid") then
                if v.Parent ~= player.Character then
                    v.Humanoid.Health = 0
                end
            end
        end
    end

    -- Fonksiyonu Ã§aÄÄ±r
    killAllEntitiesExceptSelf()
end)
