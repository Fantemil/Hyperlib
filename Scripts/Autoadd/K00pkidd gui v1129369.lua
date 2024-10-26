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

-- DISCO butonu
local discoButton = Instance.new("TextButton")
discoButton.Size = UDim2.new(0.8, 0, 0.1, 0)
discoButton.Position = UDim2.new(0.1, 0, 0.25, 0)
discoButton.Text = "DISCO"
discoButton.Parent = frame

discoButton.MouseButton1Click:Connect(function()
    while true do
        for _, color in pairs({Color3.new(1, 0, 0), Color3.new(0, 0, 1)}) do
            frame.BackgroundColor3 = color
            wait(0.5)
        end
    end
end)

-- HINT butonu
local hintButton = Instance.new("TextButton")
hintButton.Size = UDim2.new(0.8, 0, 0.1, 0)
hintButton.Position = UDim2.new(0.1, 0, 0.35, 0)
hintButton.Text = "HINT"
hintButton.Parent = frame

hintButton.MouseButton1Click:Connect(function()
    local hints = {
        "XXXOMER12345678:â ï¸HAXORâ ï¸. MEGA BOMB ?!??!?!???!??Â¡!!;",
        "938474939383",
        "38838338"
    }
    
    while true do
        for _, hint in pairs(hints) do
            print(hint)
            wait(1)
        end
    end
end)

-- MESSAGE butonu
local messageButton = Instance.new("TextButton")
messageButton.Size = UDim2.new(0.8, 0, 0.1, 0)
messageButton.Position = UDim2.new(0.1, 0, 0.45, 0)
messageButton.Text = "MESSAGE"
messageButton.Parent = frame

messageButton.MouseButton1Click:Connect(function()
    local messageLabel = Instance.new("TextLabel")
    messageLabel.Size = UDim2.new(1, 0, 0.1, 0)
    messageLabel.Position = UDim2.new(0, 0, 0, 0)
    messageLabel.Text = "8â ï¸8 H 8 A 8 C 8 O 8 R"
    messageLabel.TextColor3 = Color3.new(1, 0, 0) -- KÄ±rmÄ±zÄ± renk
    messageLabel.BackgroundTransparency = 1
    messageLabel.Parent = frame
    
    while true do
        messageLabel.Visible = not messageLabel.Visible
        wait(0.5)
    end
end)

-- 4+ butonu
local plusButton = Instance.new("TextButton")
plusButton.Size = UDim2.new(0.8, 0, 0.1, 0)
plusButton.Position = UDim2.new(0.1, 0, 0.55, 0)
plusButton.Text = "4+"
plusButton.Parent = frame

plusButton.MouseButton1Click:Connect(function()
    -- Ãrnek bir iÅlem veya fonksiyon
    print("4+ butonuna tÄ±klandÄ±!")
end)

-- DiÄer butonlar...

-- GUI'yi tamamlamak iÃ§in gerekli diÄer butonlarÄ± ve iÅlevleri buraya ekleyebilirsin.