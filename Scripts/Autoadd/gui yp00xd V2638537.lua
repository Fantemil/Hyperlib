-- Criando uma tela de interface
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ButtonSkybox = Instance.new("TextButton")
local ButtonDecalSpam = Instance.new("TextButton")
local ButtonHint = Instance.new("TextButton")
local ButtonParticles = Instance.new("TextButton") -- BotÃ£o para PartÃ­culas

-- ConfiguraÃ§Ãµes da tela
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- ConfiguraÃ§Ãµes do Frame
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0.3, 0, 0.4, 0) -- DimensÃµes do Frame
Frame.Position = UDim2.new(0.01, 0, 0.01, 0) -- PosiÃ§Ã£o no canto superior esquerdo
Frame.BackgroundColor3 = Color3.fromRGB(0, 100, 0) -- Verde escuro
Frame.BorderSizePixel = 0
Frame.BackgroundTransparency = 0.2
Frame.Active = true
Frame.Draggable = true
Frame.ZIndex = 5 -- Para garantir que o Frame fique acima de outros elementos

-- Adicionando um UICorner para bordas arredondadas
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0.1, 0) -- Bordas arredondadas
UICorner.Parent = Frame

-- ConfiguraÃ§Ãµes do BotÃ£o de Trocar Skybox
ButtonSkybox.Parent = Frame
ButtonSkybox.Size = UDim2.new(0.9, 0, 0.2, 0) -- O botÃ£o ocupa quase toda a largura do Frame
ButtonSkybox.Position = UDim2.new(0.05, 0, 0.05, 0) -- PosiÃ§Ã£o do botÃ£o
ButtonSkybox.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Branco
ButtonSkybox.Text = "Trocar Skybox"
ButtonSkybox.Font = Enum.Font.SourceSans
ButtonSkybox.TextSize = 20
ButtonSkybox.TextColor3 = Color3.fromRGB(0, 0, 0) -- Preto

-- Adicionando um UICorner ao botÃ£o Skybox
local CornerSkybox = Instance.new("UICorner")
CornerSkybox.CornerRadius = UDim.new(0.1, 0) -- Bordas arredondadas
CornerSkybox.Parent = ButtonSkybox

-- ConfiguraÃ§Ãµes do BotÃ£o de Decal Spam
ButtonDecalSpam.Parent = Frame
ButtonDecalSpam.Size = UDim2.new(0.9, 0, 0.2, 0) -- O botÃ£o ocupa quase toda a largura do Frame
ButtonDecalSpam.Position = UDim2.new(0.05, 0, 0.3, 0) -- PosiÃ§Ã£o do botÃ£o
ButtonDecalSpam.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Branco
ButtonDecalSpam.Text = "Decal Spam"
ButtonDecalSpam.Font = Enum.Font.SourceSans
ButtonDecalSpam.TextSize = 20
ButtonDecalSpam.TextColor3 = Color3.fromRGB(0, 0, 0) -- Preto

-- Adicionando um UICorner ao botÃ£o Decal Spam
local CornerDecalSpam = Instance.new("UICorner")
CornerDecalSpam.CornerRadius = UDim.new(0.1, 0) -- Bordas arredondadas
CornerDecalSpam.Parent = ButtonDecalSpam

-- ConfiguraÃ§Ãµes do BotÃ£o de Hint
ButtonHint.Parent = Frame
ButtonHint.Size = UDim2.new(0.9, 0, 0.2, 0) -- O botÃ£o ocupa quase toda a largura do Frame
ButtonHint.Position = UDim2.new(0.05, 0, 0.55, 0) -- PosiÃ§Ã£o do botÃ£o
ButtonHint.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Branco
ButtonHint.Text = "Alterar Hint"
ButtonHint.Font = Enum.Font.SourceSans
ButtonHint.TextSize = 20
ButtonHint.TextColor3 = Color3.fromRGB(0, 0, 0) -- Preto

-- Adicionando um UICorner ao botÃ£o Hint
local CornerHint = Instance.new("UICorner")
CornerHint.CornerRadius = UDim.new(0.1, 0) -- Bordas arredondadas
CornerHint.Parent = ButtonHint

-- ConfiguraÃ§Ãµes do BotÃ£o de PartÃ­culas
ButtonParticles.Parent = Frame
ButtonParticles.Size = UDim2.new(0.9, 0, 0.2, 0) -- O botÃ£o ocupa quase toda a largura do Frame
ButtonParticles.Position = UDim2.new(0.05, 0, 0.8, 0) -- PosiÃ§Ã£o do botÃ£o
ButtonParticles.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Branco
ButtonParticles.Text = "Adicionar PartÃ­culas"
ButtonParticles.Font = Enum.Font.SourceSans
ButtonParticles.TextSize = 20
ButtonParticles.TextColor3 = Color3.fromRGB(0, 0, 0) -- Preto

-- Adicionando um UICorner ao botÃ£o PartÃ­culas
local CornerParticles = Instance.new("UICorner")
CornerParticles.CornerRadius = UDim.new(0.1, 0) -- Bordas arredondadas
CornerParticles.Parent = ButtonParticles

-- IDs das imagens (skybox e decalque)
local skyboxId = "rbxassetid://95370046198680"
local decalId = "rbxassetid://95370046198680" -- ID do decalque
local particleId = "rbxassetid://87076923084048" -- ID da partÃ­cula

-- FunÃ§Ã£o para trocar a skybox
ButtonSkybox.MouseButton1Click:Connect(function()
    local skybox = Instance.new("Sky") -- Criando uma nova skybox
    skybox.SkyboxId = skyboxId -- Definindo o ID da skybox
    skybox.SunTextureId = skyboxId
    skybox.MoonTextureId = skyboxId
    skybox.StarTextureId = skyboxId
    game.Lighting.Sky = skybox -- Aplicando a skybox no ambiente de iluminaÃ§Ã£o
end)

-- FunÃ§Ã£o para aplicar decalque a todos os jogadores e partes do mapa
ButtonDecalSpam.MouseButton1Click:Connect(function()
    for _, player in pairs(game.Players:GetPlayers()) do
        local character = player.Character or player.CharacterAdded:Wait()
        if character then
            -- Adicionando decalque a todas as partes do corpo
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("Part") and part.Name ~= "Head" then
                    local bodyDecal = Instance.new("Decal")
                    bodyDecal.Texture = decalId -- Usando o ID do decalque
                    bodyDecal.Parent = part
                end
            end

            -- Adicionando decalque na face
            local faceDecal = Instance.new("Decal")
            faceDecal.Texture = decalId -- Usando o ID do decalque
            faceDecal.Parent = character.Head
        end
    end

    -- Adicionando decalque a todas as partes do mapa
    for _, obj in pairs(workspace:GetChildren()) do
        if obj:IsA("Part") then
            local mapDecal = Instance.new("Decal")
            mapDecal.Texture = decalId -- Usando o ID do decalque
            mapDecal.Parent = obj
        end
    end
end)

-- FunÃ§Ã£o para alterar o Hint de todos os jogadores
ButtonHint.MouseButton1Click:Connect(function()
    for _, player in pairs(game.Players:GetPlayers()) do
        local character = player.Character or player.CharacterAdded:Wait()
        if character and character:FindFirstChild("Humanoid") then
            character.Humanoid.DisplayName = "Lol Hacked by yp00xd" -- Mudando o DisplayName do jogador
            player.PlayerGui:SetCore("ChatMakeSystemMessage", {
                Text = "Hint mudado para: Lol Hacked by yp00xd"; 
                Color = Color3.fromRGB(255, 0, 0); 
                Font = Enum.Font.SourceSansBold; 
                FontSize = Enum.FontSize.Size18; 
            })
        end
    end
end)

-- FunÃ§Ã£o para adicionar partÃ­culas em todos os jogadores
ButtonParticles.MouseButton1Click:Connect(function()
    for _, player in pairs(game.Players:GetPlayers()) do
        local character = player.Character or player.CharacterAdded:Wait()
        if character then
            -- Criando um objeto de PartÃ­culas
            local particleEmitter = Instance.new("ParticleEmitter")
            particleEmitter.Texture = particleId -- Usando o ID da partÃ­cula
            particleEmitter.Parent = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso")
            particleEmitter.Rate = 100 -- Taxa de emissÃ£o de partÃ­culas
            particleEmitter.Lifetime = NumberRange.new(2) -- DuraÃ§Ã£o das partÃ­culas
            particleEmitter.Speed = NumberRange.new(5) -- Velocidade das partÃ­culas
            particleEmitter.SpreadAngle = Vector2.new(360, 360