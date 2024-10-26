local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ButtonBurn = Instance.new("TextButton")
local ButtonFlood = Instance.new("TextButton")
local ButtonDiscoFog = Instance.new("TextButton") -- Novo botÃ£o para Disco Fog
local lighting = game:GetService("Lighting")

-- ConfiguraÃ§Ãµes da interface
ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(240, 240, 240) -- Cor de fundo suave
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)
Frame.Position = UDim2.new(0.25, 0, 0.25, 0)
Frame.BorderSizePixel = 0
Frame.BackgroundTransparency = 0.2 -- Um pouco transparente
Frame.BorderColor3 = Color3.fromRGB(255, 0, 0) -- Borda vermelha
Frame.BorderSizePixel = 2 -- Tamanho da borda

-- BotÃ£o para queimar o jogo
ButtonBurn.Parent = Frame
ButtonBurn.BackgroundColor3 = Color3.new(1, 0, 0) -- Cor do botÃ£o
ButtonBurn.Size = UDim2.new(0.9, 0, 0.2, 0)
ButtonBurn.Position = UDim2.new(0.05, 0, 0.2, 0)
ButtonBurn.Text = "666"
ButtonBurn.TextColor3 = Color3.new(1, 1, 1) -- Texto branco
ButtonBurn.TextScaled = true
ButtonBurn.Font = Enum.Font.SourceSansBold
ButtonBurn.BorderSizePixel = 0
ButtonBurn.BackgroundTransparency = 0.1

-- BotÃ£o para inundar o jogo
ButtonFlood.Parent = Frame
ButtonFlood.BackgroundColor3 = Color3.new(0, 0, 1) -- Cor do botÃ£o
ButtonFlood.Size = UDim2.new(0.9, 0, 0.2, 0)
ButtonFlood.Position = UDim2.new(0.05, 0, 0.6, 0)
ButtonFlood.Text = "Inundar"
ButtonFlood.TextColor3 = Color3.new(1, 1, 1) -- Texto branco
ButtonFlood.TextScaled = true
ButtonFlood.Font = Enum.Font.SourceSansBold
ButtonFlood.BorderSizePixel = 0
ButtonFlood.BackgroundTransparency = 0.1

-- BotÃ£o para Disco Fog
ButtonDiscoFog.Parent = Frame
ButtonDiscoFog.BackgroundColor3 = Color3.new(0.5, 0, 0.5) -- Cor do botÃ£o
ButtonDiscoFog.Size = UDim2.new(0.9, 0, 0.2, 0)
ButtonDiscoFog.Position = UDim2.new(0.05, 0, 0.4, 0)
ButtonDiscoFog.Text = "Disco Fog"
ButtonDiscoFog.TextColor3 = Color3.new(1, 1, 1) -- Texto branco
ButtonDiscoFog.TextScaled = true
ButtonDiscoFog.Font = Enum.Font.SourceSansBold
ButtonDiscoFog.BorderSizePixel = 0
ButtonDiscoFog.BackgroundTransparency = 0.1

-- FunÃ§Ã£o para iniciar o efeito de queima
local function startBurningEffect()
    for _, part in pairs(workspace:GetChildren()) do
        if part:IsA("BasePart") and part.CanCollide then
            local fire = Instance.new("Fire")
            fire.Size = 5 -- Tamanho do fogo
            fire.Heat = 10 -- Calor do fogo
            fire.Parent = part -- Adiciona o fogo Ã  parte
        end
    end
end

-- FunÃ§Ã£o para inundar o jogo
local function floodGame()
    for _, part in pairs(workspace:GetChildren()) do
        if part:IsA("BasePart") and part.CanCollide then
            local water = Instance.new("Part")
            water.Size = Vector3.new(part.Size.X, 0.5, part.Size.Z) -- A largura e profundidade da Ã¡gua igual Ã  parte
            water.Position = part.Position + Vector3.new(0, part.Size.Y / 2 + 0.25, 0) -- Posiciona a Ã¡gua acima do objeto
            water.Anchored = true
            water.BrickColor = BrickColor.new("Bright blue") -- Cor da Ã¡gua
            water.Transparency = 0.5 -- Torna a Ã¡gua semi-transparente
            water.Parent = workspace
        end
    end
end

-- FunÃ§Ã£o para aplicar Disco Fog
local function applyDiscoFog()
    lighting.FogEnabled = true
    local colors = {Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 0, 255), Color3.fromRGB(255, 255, 0)} -- Cores para o Disco Fog
    while true do
        for _, color in ipairs(colors) do
            lighting.FogColor = color
            wait(1) -- Tempo entre as mudanÃ§as de cor
        end
    end
end

-- ConexÃ£o dos botÃµes
ButtonBurn.MouseButton1Click:Connect(function()
    startBurningEffect()
end)

ButtonFlood.MouseButton1Click:Connect(function()
    floodGame()
end)

ButtonDiscoFog.MouseButton1Click:Connect(function()
    applyDiscoFog()
end)