-- FunÃ§Ã£o para criar uma interface estilizada com cor amarela
local function createInterface()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "StyledInterface"
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Criar um Frame amarelo com bordas arredondadas e sombra
    local frame = Instance.new("Frame")
    frame.Name = "MainFrame"
    frame.Size = UDim2.new(0.4, 0, 0.4, 0) -- Ajuste o tamanho conforme necessÃ¡rio
    frame.Position = UDim2.new(0.3, 0, 0.3, 0) -- Centraliza o Frame
    frame.BackgroundColor3 = Color3.fromRGB(255, 215, 0) -- Cor amarela
    frame.BackgroundTransparency = 0.1
    frame.BorderSizePixel = 0
    frame.Parent = screenGui

    -- Borda arredondada para o Frame
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 15) -- Arredondar os cantos
    uiCorner.Parent = frame

    -- Criar sombra para o Frame
    local shadow = Instance.new("ImageLabel")
    shadow.Name = "Shadow"
    shadow.Size = UDim2.new(1, 20, 1, 20) -- Ajustar para dar a sensaÃ§Ã£o de sombra
    shadow.Position = UDim2.new(0, -10, 0, -10) -- PosiÃ§Ã£o da sombra
    shadow.BackgroundTransparency = 1
    shadow.Image = "rbxassetid://1316045217" -- Imagem de sombra
    shadow.ImageTransparency = 0.5
    shadow.ScaleType = Enum.ScaleType.Slice
    shadow.SliceCenter = Rect.new(10, 10, 118, 118)
    shadow.Parent = frame

    -- Criar um Label com o texto "NBA" com estilo
    local nbaLabel = Instance.new("TextButton")
    nbaLabel.Name = "NBA_Label"
    nbaLabel.Size = UDim2.new(0.6, 0, 0.15, 0) -- Ajuste o tamanho
    nbaLabel.Position = UDim2.new(0.2, 0, 0.1, 0) -- Centralizar no Frame
    nbaLabel.BackgroundColor3 = Color3.fromRGB(255, 165, 0) -- Laranja claro
    nbaLabel.Text = "NBA"
    nbaLabel.Font = Enum.Font.SourceSansBold
    nbaLabel.TextScaled = true
    nbaLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Texto branco
    nbaLabel.Parent = frame

    -- Borda arredondada para o botÃ£o "NBA"
    local nbaCorner = Instance.new("UICorner")
    nbaCorner.CornerRadius = UDim.new(0, 12)
    nbaCorner.Parent = nbaLabel

    -- FunÃ§Ã£o ao clicar no texto "NBA" para mudar o cÃ©u
    nbaLabel.MouseButton1Click:Connect(function()
        local sky = Instance.new("Sky")
        sky.SkyboxBk = "rbxassetid://121481461847825"
        sky.SkyboxDn = "rbxassetid://121481461847825"
        sky.SkyboxFt = "rbxassetid://121481461847825"
        sky.SkyboxLf = "rbxassetid://121481461847825"
        sky.SkyboxRt = "rbxassetid://121481461847825"
        sky.SkyboxUp = "rbxassetid://121481461847825"
        sky.Parent = game.Lighting
        print("CÃ©u alterado para o asset ID: 121481461847825")
    end)

    -- Criar botÃ£o para "Old Particles" com estilo
    local particlesButton = Instance.new("TextButton")
    particlesButton.Name = "OldParticlesButton"
    particlesButton.Size = UDim2.new(0.6, 0, 0.15, 0) -- Ajuste o tamanho
    particlesButton.Position = UDim2.new(0.2, 0, 0.35, 0) -- Ajustar posiÃ§Ã£o
    particlesButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0) -- Laranja claro
    particlesButton.Text = "Old Particles"
    particlesButton.Font = Enum.Font.SourceSansBold
    particlesButton.TextScaled = true
    particlesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    particlesButton.Parent = frame

    -- Borda arredondada para o botÃ£o "Old Particles"
    local particlesCorner = Instance.new("UICorner")
    particlesCorner.CornerRadius = UDim.new(0, 12)
    particlesCorner.Parent = particlesButton

    -- FunÃ§Ã£o ao clicar no botÃ£o "Old Particles"
    particlesButton.MouseButton1Click:Connect(function()
        local particleEmitter = Instance.new("ParticleEmitter")
        particleEmitter.Texture = "rbxassetid://121481461847825" -- ID da textura das partÃ­culas
        particleEmitter.Parent = game.Workspace.Terrain
        particleEmitter.Rate = 100
        particleEmitter.Lifetime = NumberRange.new(5)
        particleEmitter.Speed = NumberRange.new(5)
        print("PartÃ­culas iniciadas com o asset ID: 121481461847825")
    end)

    -- Criar botÃ£o para "Floor" com estilo
    local floorButton = Instance.new("TextButton")
    floorButton.Name = "FloorButton"
    floorButton.Size = UDim2.new(0.6, 0, 0.15, 0)
    floorButton.Position = UDim2.new(0.2, 0, 0.6, 0)
    floorButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
    floorButton.Text = "Floor"
    floorButton.Font = Enum.Font.SourceSansBold
    floorButton.TextScaled = true
    floorButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    floorButton.Parent = frame

    -- Borda arredondada para o botÃ£o "Floor"
    local floorCorner = Instance.new("UICorner")
    floorCorner.CornerRadius = UDim.new(0, 12)
    floorCorner.Parent = floorButton

    -- FunÃ§Ã£o ao clicar no botÃ£o "Floor" para mudar o chÃ£o
    floorButton.MouseButton1Click:Connect(function()
        local newFloor = Instance.new("Part")
        newFloor.Size = Vector3.new(500, 1, 500) -- Tamanho do novo chÃ£o
        newFloor.Position = Vector3.new(0, 0.1, 0) -- PosiÃ§Ã£o do chÃ£o
        newFloor.Anchored = true
        newFloor.Material = Enum.Material.SmoothPlastic
        newFloor.BrickColor = BrickColor.new("Bright yellow") -- Cor amarela
        newFloor.Parent = game.Workspace
        print("ChÃ£o alterado com o asset ID: 121481461847825")
    end)
end

-- Chama a funÃ§Ã£o para criar a interface
createInterface()