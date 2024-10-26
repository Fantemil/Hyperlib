-- Cria a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "YellowInterface"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Cria um Frame com bordas arredondadas
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0.5, 0, 0.5, 0) -- 50% da largura e altura da tela
frame.Position = UDim2.new(0.25, 0, 0.25, 0) -- Centraliza na tela
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- Cor amarela
frame.BorderSizePixel = 0 -- Remove bordas padrÃ£o
frame.Parent = screenGui

-- Cria um tÃ­tulo
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0.2, 0) -- Ocupa a parte superior do Frame
titleLabel.Position = UDim2.new(0, 0, 0, 0) -- PosiÃ§Ã£o do tÃ­tulo
titleLabel.BackgroundTransparency = 1 -- Fundo transparente
titleLabel.Text = "yp00xd GUI V2" -- Texto do tÃ­tulo
titleLabel.TextColor3 = Color3.fromRGB(0, 0, 0) -- Cor do texto (preto)
titleLabel.TextScaled = true -- Ajusta o tamanho do texto
titleLabel.Font = Enum.Font.Garamond -- Estilo de fonte
titleLabel.TextStrokeTransparency = 0.5 -- TransparÃªncia do contorno do texto
titleLabel.Parent = frame

-- Adiciona um botÃ£o para mudar o cÃ©u
local skyboxButton = Instance.new("TextButton")
skyboxButton.Name = "SkyboxButton"
skyboxButton.Size = UDim2.new(0.3, 0, 0.1, 0) -- Tamanho do botÃ£o
skyboxButton.Position = UDim2.new(0.5, -75, 0.4, 0) -- Centraliza horizontalmente
skyboxButton.BackgroundColor3 = Color3.fromRGB(255, 200, 0) -- Cor do botÃ£o
skyboxButton.Text = "Skybox" -- Texto do botÃ£o
skyboxButton.TextColor3 = Color3.fromRGB(0, 0, 0) -- Cor do texto do botÃ£o
skyboxButton.TextScaled = true -- Ajusta o tamanho do texto do botÃ£o
skyboxButton.Parent = frame

-- Conecta a funÃ§Ã£o para mudar o cÃ©u
skyboxButton.MouseButton1Click:Connect(function()
    local sky = Instance.new("Sky")
    sky.SkyboxId = "rbxassetid://97008180387791" -- ID do cÃ©u
    game.Lighting.Sky = sky
end)

-- Adiciona um botÃ£o para explodir o mapa
local explodeButton = Instance.new("TextButton")
explodeButton.Name = "ExplodeButton"
explodeButton.Size = UDim2.new(0.3, 0, 0.1, 0) -- Tamanho do botÃ£o
explodeButton.Position = UDim2.new(0.5, -75, 0.5, 0) -- PosiÃ§Ã£o abaixo do botÃ£o do cÃ©u
explodeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Cor do botÃ£o
explodeButton.Text = "Explode" -- Texto do botÃ£o
explodeButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- Cor do texto do botÃ£o (branco)
explodeButton.TextScaled = true -- Ajusta o tamanho do texto do botÃ£o
explodeButton.Parent = frame

-- Conecta a funÃ§Ã£o para explodir o mapa
explodeButton.MouseButton1Click:Connect(function()
    for _, part in pairs(workspace:GetChildren()) do
        if part:IsA("Part") then
            local explosion = Instance.new("Explosion")
            explosion.Position = part.Position
            explosion.BlastRadius = 10 -- Ajuste o raio da explosÃ£o conforme necessÃ¡rio
            explosion.Parent = workspace
            part:BreakJoints() -- Simula a explosÃ£o da parte
        end
    end
end)