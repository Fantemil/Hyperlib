-- Credits by girl00kidd

-- Script de Interface com Imagem, PartÃ­culas e Skybox para Delta Executor

-- Criando os elementos da interface
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local ParticleButton = Instance.new("TextButton")
local SkyboxButton = Instance.new("TextButton")

-- Definindo o nome da interface
ScreenGui.Name = "ImageInterface"
ScreenGui.Parent = game.CoreGui -- Delta Executor usa game.CoreGui

-- ConfiguraÃ§Ãµes da ImageLabel (imagem)
ImageLabel.Name = "ImageDisplay"
ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Fundo branco
ImageLabel.BackgroundTransparency = 1 -- Fundo transparente
ImageLabel.Position = UDim2.new(0.3, 0, 0.3, 0) -- PosiÃ§Ã£o no centro da tela
ImageLabel.Size = UDim2.new(0, 400, 0, 400) -- Tamanho da imagem
ImageLabel.Image = "rbxassetid://134964139950" -- ID da imagem

-- ConfiguraÃ§Ãµes do botÃ£o "Old Particles"
ParticleButton.Name = "OldParticlesButton"
ParticleButton.Parent = ScreenGui
ParticleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Fundo preto
ParticleButton.Position = UDim2.new(0.3, 0, 0.75, 0) -- PosiÃ§Ã£o abaixo da imagem
ParticleButton.Size = UDim2.new(0, 400, 0, 50) -- Tamanho do botÃ£o
ParticleButton.Font = Enum.Font.SourceSans
ParticleButton.Text = "Old Particles"
ParticleButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- Texto branco
ParticleButton.TextSize = 20

-- ConfiguraÃ§Ãµes do botÃ£o "Skybox"
SkyboxButton.Name = "SkyboxButton"
SkyboxButton.Parent = ScreenGui
SkyboxButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Fundo preto
SkyboxButton.Position = UDim2.new(0.3, 0, 0.85, 0) -- PosiÃ§Ã£o abaixo do botÃ£o de partÃ­culas
SkyboxButton.Size = UDim2.new(0, 400, 0, 50) -- Tamanho do botÃ£o
SkyboxButton.Font = Enum.Font.SourceSans
SkyboxButton.Text = "Skybox"
SkyboxButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- Texto branco
SkyboxButton.TextSize = 20

-- FunÃ§Ã£o que cria as partÃ­culas
ParticleButton.MouseButton1Click:Connect(function()
    local character = game.Players.LocalPlayer.Character
    if character then
        -- Criando as partÃ­culas
        local particleEmitter = Instance.new("ParticleEmitter")
        particleEmitter.Texture = "rbxassetid://134964139950" -- ID da partÃ­cula
        particleEmitter.Lifetime = NumberRange.new(2) -- DuraÃ§Ã£o das partÃ­culas
        particleEmitter.Rate = 50 -- Quantidade de partÃ­culas geradas por segundo
        particleEmitter.Speed = NumberRange.new(5, 10) -- Velocidade das partÃ­culas
        particleEmitter.Parent = character:FindFirstChild("HumanoidRootPart") -- Coloca no centro do jogador
        
        -- Definindo o tempo de vida do emissor de partÃ­culas (opcional, remover apÃ³s 10 segundos)
        wait(10)
        particleEmitter:Destroy() -- Remover as partÃ­culas apÃ³s 10 segundos
    end
end)

-- FunÃ§Ã£o para alterar o Skybox
SkyboxButton.MouseButton1Click:Connect(function()
    local skybox = Instance.new("Sky")
    skybox.Parent = game.Lighting -- Coloca o Skybox no Lighting

    -- Definindo as imagens da Skybox (usando o mesmo ID para todos os lados)
    local skyboxID = "rbxassetid://134964139950"
    skybox.SkyboxBk = skyboxID -- Parte de trÃ¡s
    skybox.SkyboxDn = skyboxID -- Parte de baixo
    skybox.SkyboxFt = skyboxID -- Parte da frente
    skybox.SkyboxLf = skyboxID -- Lado esquerdo
    skybox.SkyboxRt = skyboxID -- Lado direito
    skybox.SkyboxUp = skyboxID -- Parte de cima
end)