-- Credits by girl00kidd

-- Script de Interface com Imagem, PartÃ­culas, Skybox e Hint para Delta Executor, com interface amarela

-- Criando os elementos da interface
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local ParticleButton = Instance.new("TextButton")
local SkyboxButton = Instance.new("TextButton")
local HintButton = Instance.new("TextButton") -- BotÃ£o para o hint
local CreditsLabel = Instance.new("TextLabel")

-- Definindo o nome da interface
ScreenGui.Name = "ImageInterface"
ScreenGui.Parent = game.CoreGui -- Delta Executor usa game.CoreGui

-- ConfiguraÃ§Ãµes do TextLabel (crÃ©ditos)
CreditsLabel.Name = "CreditsLabel"
CreditsLabel.Parent = ScreenGui
CreditsLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- Fundo amarelo
CreditsLabel.BackgroundTransparency = 0 -- Fundo opaco
CreditsLabel.Position = UDim2.new(0.05, 0, 0.05, 0) -- PosiÃ§Ã£o no canto superior esquerdo
CreditsLabel.Size = UDim2.new(0, 400, 0, 50) -- Tamanho do texto
CreditsLabel.Font = Enum.Font.SourceSans
CreditsLabel.Text = "Credits to girl00kidd"
CreditsLabel.TextColor3 = Color3.fromRGB(0, 0, 0) -- Texto preto
CreditsLabel.TextSize = 24

-- ConfiguraÃ§Ãµes da ImageLabel (imagem)
ImageLabel.Name = "ImageDisplay"
ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- Fundo amarelo
ImageLabel.BackgroundTransparency = 0 -- Fundo opaco
ImageLabel.Position = UDim2.new(0.05, 0, 0.15, 0) -- PosiÃ§Ã£o abaixo dos crÃ©ditos
ImageLabel.Size = UDim2.new(0, 400, 0, 400) -- Tamanho da imagem
ImageLabel.Image = "rbxassetid://132704730281717" -- ID correto da imagem

-- ConfiguraÃ§Ãµes do botÃ£o "Old Particles"
ParticleButton.Name = "OldParticlesButton"
ParticleButton.Parent = ScreenGui
ParticleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- Fundo amarelo
ParticleButton.Position = UDim2.new(0.05, 0, 0.65, 0) -- PosiÃ§Ã£o abaixo da imagem
ParticleButton.Size = UDim2.new(0, 400, 0, 50) -- Tamanho do botÃ£o
ParticleButton.Font = Enum.Font.SourceSans
ParticleButton.Text = "Old Particles"
ParticleButton.TextColor3 = Color3.fromRGB(0, 0, 0) -- Texto preto
ParticleButton.TextSize = 20

-- ConfiguraÃ§Ãµes do botÃ£o "Skybox"
SkyboxButton.Name = "SkyboxButton"
SkyboxButton.Parent = ScreenGui
SkyboxButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- Fundo amarelo
SkyboxButton.Position = UDim2.new(0.05, 0, 0.75, 0) -- PosiÃ§Ã£o abaixo do botÃ£o de partÃ­culas
SkyboxButton.Size = UDim2.new(0, 400, 0, 50) -- Tamanho do botÃ£o
SkyboxButton.Font = Enum.Font.SourceSans
SkyboxButton.Text = "Skybox"
SkyboxButton.TextColor3 = Color3.fromRGB(0, 0, 0) -- Texto preto
SkyboxButton.TextSize = 20

-- ConfiguraÃ§Ãµes do botÃ£o "Hint"
HintButton.Name = "HintButton"
HintButton.Parent = ScreenGui
HintButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- Fundo amarelo
HintButton.Position = UDim2.new(0.05, 0, 0.85, 0) -- PosiÃ§Ã£o abaixo do botÃ£o de Skybox
HintButton.Size = UDim2.new(0, 400, 0, 50) -- Tamanho do botÃ£o
HintButton.Font = Enum.Font.SourceSans
HintButton.Text = "Show Hint"
HintButton.TextColor3 = Color3.fromRGB(0, 0, 0) -- Texto preto
HintButton.TextSize = 20

-- FunÃ§Ã£o que cria as partÃ­culas
ParticleButton.MouseButton1Click:Connect(function()
    local character = game.Players.LocalPlayer.Character
    if character then
        -- Criando as partÃ­culas
        local particleEmitter = Instance.new("ParticleEmitter")
        particleEmitter.Texture = "rbxassetid://134964139950" -- ID da partÃ­cula correta
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

    -- Definindo as imagens da Skybox
    skybox.SkyboxBk = "rbxassetid://134964139950" -- Imagem para a parte de trÃ¡s
    skybox.SkyboxDn = "rbxassetid://134964139950" -- Imagem para a parte de baixo
    skybox.SkyboxFt = "rbxassetid://134964139950" -- Imagem para a frente
    skybox.SkyboxLf = "rbxassetid://134964139950" -- Imagem para a esquerda
    skybox.SkyboxRt = "rbxassetid://134964139950" -- Imagem para a direita
    skybox.SkyboxUp = "rbxassetid://134964139950" -- Imagem para cima
end)

-- FunÃ§Ã£o para mostrar o Hint
HintButton.MouseButton1Click:Connect(function()
    local hint = Instance.new("Hint")
    hint.Text = "Join Team girl00kidd" -- Mensagem do Hint
    hint.Parent = game.Workspace -- Adiciona o Hint ao Workspace
end)

-- FunÃ§Ã£o para mover a interface
local dragging = false
local dragStart = nil
local startPos = nil

local function updatePosition(input)
    local delta = input.Position - dragStart
    ScreenGui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

ImageLabel.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = ScreenGui.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

ImageLabel.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        updatePosition(input)
    end
end)