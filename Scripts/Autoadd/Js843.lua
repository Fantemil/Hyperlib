-- Criando a interface
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local BToolsButton = Instance.new("TextButton")
local FloodButton = Instance.new("TextButton")
local DiscoFogButton = Instance.new("TextButton")

-- ConfiguraÃ§Ãµes da Interface
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Cor de fundo do frame
Frame.Size = UDim2.new(0, 300, 0, 400)
Frame.Position = UDim2.new(0.5, -150, 0.5, -200)

TitleLabel.Parent = Frame
TitleLabel.Text = "c00lkidd script hub Remake"
TitleLabel.Size = UDim2.new(1, 0, 0, 50)
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Cor do tÃ­tulo
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextScaled = true
TitleLabel.TextAlign = Enum.TextXAlignment.Center

-- BotÃ£o para dar BTools
BToolsButton.Parent = Frame
BToolsButton.Text = "Dar BTools"
BToolsButton.Size = UDim2.new(0.8, 0, 0, 50)
BToolsButton.Position = UDim2.new(0.1, 0, 0.1, 0)
BToolsButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Cor do botÃ£o BTools
BToolsButton.TextColor3 = Color3.fromRGB(0, 0, 0)

-- BotÃ£o para Flood
FloodButton.Parent = Frame
FloodButton.Text = "Flood"
FloodButton.Size = UDim2.new(0.8, 0, 0, 50)
FloodButton.Position = UDim2.new(0.1, 0, 0.25, 0)
FloodButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255) -- Cor do botÃ£o Flood
FloodButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- BotÃ£o para Disco Fog
DiscoFogButton.Parent = Frame
DiscoFogButton.Text = "Disco Fog"
DiscoFogButton.Size = UDim2.new(0.8, 0, 0, 50)
DiscoFogButton.Position = UDim2.new(0.1, 0, 0.4, 0)
DiscoFogButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- Cor do botÃ£o Disco Fog
DiscoFogButton.TextColor3 = Color3.fromRGB(0, 0, 0)

-- FunÃ§Ã£o para dar BTools ao jogador
local function giveBTools(player)
    local backpack = player:FindFirstChildOfClass("Backpack") -- Acessa a mochila do jogador
    if backpack then
        local moveTool = Instance.new("Tool") -- Cria a ferramenta de mover
        moveTool.Name = "Move Tool"
        moveTool.RequiresHandle = true
        local moveHandle = Instance.new("Part", moveTool)
        moveHandle.Size = Vector3.new(1, 1, 1)
        moveHandle.Transparency = 1
        moveHandle.CanCollide = false
        moveTool.Handle = moveHandle
        
        local resizeTool = Instance.new("Tool") -- Cria a ferramenta de redimensionar
        resizeTool.Name = "Resize Tool"
        resizeTool.RequiresHandle = true
        local resizeHandle = Instance.new("Part", resizeTool)
        resizeHandle.Size = Vector3.new(1, 1, 1)
        resizeHandle.Transparency = 1
        resizeHandle.CanCollide = false
        resizeTool.Handle = resizeHandle
        
        local rotateTool = Instance.new("Tool") -- Cria a ferramenta de rotacionar
        rotateTool.Name = "Rotate Tool"
        rotateTool.RequiresHandle = true
        local rotateHandle = Instance.new("Part", rotateTool)
        rotateHandle.Size = Vector3.new(1, 1, 1)
        rotateHandle.Transparency = 1
        rotateHandle.CanCollide = false
        rotateTool.Handle = rotateHandle
        
        -- Adiciona as ferramentas Ã  mochila
        moveTool.Parent = backpack
        resizeTool.Parent = backpack
        rotateTool.Parent = backpack
        
        print("BTools foram dados ao jogador: " .. player.Name)
    else
        print("Mochila nÃ£o encontrada para: " .. player.Name)
    end
end

-- FunÃ§Ã£o para fazer flood no mapa
local function floodMap()
    local water = Instance.new("Part")
    water.Size = Vector3.new(1000, 1, 1000) -- Tamanho da Ã¡gua
    water.Position = Vector3.new(0, -0.5, 0) -- PosiÃ§Ã£o da Ã¡gua
    water.BrickColor = BrickColor.new("Bright blue") -- Cor da Ã¡gua
    water.Anchored = true
    water.CanCollide = false
    water.Parent = workspace -- Adiciona a Ã¡gua ao workspace
    print("O mapa foi inundado com Ã¡gua.")
end

-- FunÃ§Ã£o para criar disco fog
local function createDiscoFog()
    local fog = Instance.new("Part")
    fog.Size = Vector3.new(100, 0.1, 100) -- Tamanho da nÃ©voa
    fog.Position = Vector3.new(0, 5, 0) -- PosiÃ§Ã£o da nÃ©voa
    fog.Color = Color3.fromRGB(255, 0, 255) -- Cor da nÃ©voa
    fog.Anchored = true
    fog.Material = Enum.Material.Neon
    fog.Transparency = 0.5
    fog.Parent = workspace -- Adiciona a nÃ©voa ao workspace
    print("Disco fog criado.")
end

-- ConexÃµes dos botÃµes
BToolsButton.MouseButton1Click:Connect(function()
    giveBTools(game.Players.LocalPlayer)
end)

FloodButton.MouseButton1Click:Connect(function()
    floodMap()
end)

DiscoFogButton.MouseButton1Click:Connect(function()
    createDiscoFog()
end)