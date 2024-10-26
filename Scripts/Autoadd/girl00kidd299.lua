-- ID da partÃ­cula
local particleID = "134964139950862"

-- FunÃ§Ã£o para criar a partÃ­cula
local function createParticle(parent)
    -- Criar objeto de partÃ­cula
    local particle = Instance.new("ParticleEmitter")
    
    -- ConfiguraÃ§Ãµes da partÃ­cula
    particle.Texture = "rbxassetid://"..particleID -- Define a textura da partÃ­cula usando o ID
    particle.Lifetime = NumberRange.new(5) -- Tempo de vida da partÃ­cula
    particle.Rate = 50 -- Quantidade de partÃ­culas por segundo
    particle.Speed = NumberRange.new(2, 5) -- Velocidade das partÃ­culas
    
    -- Definir o local para a partÃ­cula
    particle.Parent = parent
end

-- FunÃ§Ã£o para aplicar a partÃ­cula a todos os jogadores
local function applyParticlesToPlayers()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            createParticle(player.Character.HumanoidRootPart) -- Aplica a partÃ­cula no jogador
        end
    end
end

-- FunÃ§Ã£o para aplicar a partÃ­cula em todo o mapa
local function applyParticlesToMap()
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            createParticle(part) -- Aplica a partÃ­cula em cada parte do mapa
        end
    end
end

-- Executa as funÃ§Ãµes
applyParticlesToPlayers() -- Aplica a partÃ­cula nos jogadores
applyParticlesToMap() -- Aplica a partÃ­cula no mapa

-- Atualizar partÃ­culas nos jogadores constantemente
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if character:FindFirstChild("HumanoidRootPart") then
            createParticle(character.HumanoidRootPart) -- Aplica a partÃ­cula no novo jogador
        end
    end)
end)