-- Cria a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "YellowInterface"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Cria um Frame com bordas arredondadas e sombra
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0.5, 0, 0.5, 0) -- 50% da largura e altura da tela
frame.Position = UDim2.new(0.25, 0, 0.25, 0) -- Centraliza na tela
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- Cor amarela
frame.BorderSizePixel = 0 -- Remove bordas padrÃ£o
frame.BackgroundTransparency = 0 -- Define a transparÃªncia do fundo como 0
frame.Parent = screenGui

-- Sombra
local shadow = Instance.new("Frame")
shadow.Size = UDim2.new(1, 10, 1, 10) -- Sombra um pouco maior
shadow.Position = UDim2.new(0, -5, 0, -5) -- PosiÃ§Ã£o da sombra
shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Cor da sombra
shadow.BackgroundTransparency = 0.5 -- TransparÃªncia da sombra
shadow.Parent = frame

-- Cria um tÃ­tulo
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0.2, 0) -- Ocupa a parte superior do Frame
titleLabel.Position = UDim2.new(0, 0, 0, 0) -- PosiÃ§Ã£o do tÃ­tulo
titleLabel.BackgroundTransparency = 1 -- Fundo transparente
titleLabel.Text = "yp00xd GUI" -- Texto do tÃ­tulo atualizado
titleLabel.TextColor3 = Color3.fromRGB(0, 0, 0) -- Cor do texto (preto)
titleLabel.TextScaled = true -- Ajusta o tamanho do texto
titleLabel.Font = Enum.Font.Garamond -- Estilo de fonte
titleLabel.TextStrokeTransparency = 0.5 -- TransparÃªncia do contorno do texto
titleLabel.Parent = frame

-- Adiciona a mensagem "hack by yp00xd"
local hackLabel = Instance.new("TextLabel")
hackLabel.Name = "HackLabel"
hackLabel.Size = UDim2.new(1, 0, 0.1, 0) -- Ocupa a parte inferior do Frame
hackLabel.Position = UDim2.new(0, 0, 0.2, 0) -- PosiÃ§Ã£o da mensagem
hackLabel.BackgroundTransparency = 1 -- Fundo transparente
hackLabel.Text = "hack by yp00xd" -- Texto da mensagem
hackLabel.TextColor3 = Color3.fromRGB(0, 0, 0) -- Cor do texto (preto)
hackLabel.TextScaled = true -- Ajusta o tamanho do texto
hackLabel.Font = Enum.Font.Garamond -- Estilo de fonte
hackLabel.TextStrokeTransparency = 0.5 -- TransparÃªncia do contorno do texto
hackLabel.Parent = frame

-- Cria um botÃ£o estilizado para mudar o cÃ©u
local skyButton = Instance.new("TextButton")
skyButton.Name = "SkyButton"
skyButton.Size = UDim2.new(0.3, 0, 0.1, 0) -- Tamanho do botÃ£o
skyButton.Position = UDim2.new(0.5, -75, 0.4, 0) -- Centraliza horizontalmente
skyButton.BackgroundColor3 = Color3.fromRGB(255, 200, 0) -- Cor do botÃ£o
skyButton.Text = "Skybox Old" -- Texto do botÃ£o
skyButton.TextColor3 = Color3.fromRGB(0, 0, 0) -- Cor do texto do botÃ£o
skyButton.TextScaled = true -- Ajusta o tamanho do texto do botÃ£o
skyButton.Parent = frame

-- Cria um botÃ£o estilizado para a funÃ§Ã£o NZB
local nzbButton = Instance.new("TextButton")
nzbButton.Name = "NZBButton"
nzbButton.Size = UDim2.new(0.3, 0, 0.1, 0) -- Tamanho do botÃ£o
nzbButton.Position = UDim2.new(0.5, -75, 0.7, 0) -- Centraliza horizontalmente
nzbButton.BackgroundColor3 = Color3.fromRGB(255, 200, 0) -- Cor do botÃ£o
nzbButton.Text = "NZB" -- Texto do botÃ£o
nzbButton.TextColor3 = Color3.fromRGB(0, 0, 0) -- Cor do texto do botÃ£o
nzbButton.TextScaled = true -- Ajusta o tamanho do texto do botÃ£o
nzbButton.Parent = frame

-- FunÃ§Ã£o para mudar o cÃ©u
local function changeSky()
    local skyboxId = "rbxassetid://87076923084048" -- ID do Skybox
    local sky = Instance.new("Sky")
    sky.SkyboxBk = skyboxId
    sky.SkyboxDn = skyboxId
    sky.SkyboxFt = skyboxId
    sky.SkyboxLf = skyboxId
    sky.SkyboxRt = skyboxId
    sky.SkyboxUp = skyboxId
    sky.Parent = game.Lighting -- Adiciona o Skybox ao Lighting
end

-- FunÃ§Ã£o para criar partÃ­culas para todos os jogadores
local function createParticles()
    local particleId = "rbxassetid://95370046198680" -- ID da partÃ­cula
    for _, player in pairs(game.Players:GetPlayers()) do
        local character = player.Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            local particleEmitter = Instance.new("ParticleEmitter") -- Cria o emissor de partÃ­culas
            particleEmitter.Texture = particleId -- Define a textura das partÃ­culas
            particleEmitter.Size = NumberSequence.new(0.5) -- Tamanho das partÃ­culas
            particleEmitter.Lifetime = NumberRange.new(1, 2) -- DuraÃ§Ã£o das partÃ­culas
            particleEmitter.Rate = 100 -- Taxa de emissÃ£o
            particleEmitter.Parent = character.HumanoidRootPart -- Adiciona ao HumanoidRootPart do jogador
        end
    end
end

-- Conecta a funÃ§Ã£o ao clique dos botÃµes
skyButton.MouseButton1Click:Connect(changeSky)
nzbButton.MouseButton1Click:Connect(createParticles)