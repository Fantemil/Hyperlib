local screenGui = Instance.new("ScreenGui") -- Cria a interface na tela
local frame = Instance.new("Frame") -- Cria um quadro para a interface
local particlesButton = Instance.new("TextButton") -- BotÃ£o para partÃ­culas
local skyboxButton = Instance.new("TextButton") -- BotÃ£o para mudar o cÃ©u
local hintLabel = Instance.new("TextLabel") -- Label para hint
local changeGroundButton = Instance.new("TextButton") -- BotÃ£o para mudar o chÃ£o
local creditsLabel = Instance.new("TextLabel") -- Label de crÃ©ditos

-- ConfiguraÃ§Ãµes do ScreenGui
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- ConfiguraÃ§Ãµes do Frame
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- Cor amarela
frame.Parent = screenGui

-- ConfiguraÃ§Ãµes do Hint
hintLabel.Size = UDim2.new(1, 0, 0, 50)
hintLabel.Position = UDim2.new(0, 0, 0, 0)
hintLabel.Text = "Join Team girl00kidd"
hintLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
hintLabel.Parent = frame

-- ConfiguraÃ§Ãµes do botÃ£o de partÃ­culas
particlesButton.Size = UDim2.new(1, 0, 0, 50)
particlesButton.Position = UDim2.new(0, 0, 0, 50)
particlesButton.Text = "Old Particles"
particlesButton.Parent = frame
particlesButton.MouseButton1Click:Connect(function()
    local particleId = "rbxassetid://134964139950"
    -- CÃ³digo para adicionar partÃ­culas com o ID acima
end)

-- ConfiguraÃ§Ãµes do botÃ£o de mudar o cÃ©u
skyboxButton.Size = UDim2.new(1, 0, 0, 50)
skyboxButton.Position = UDim2.new(0, 0, 0, 100)
skyboxButton.Text = "Skybox"
skyboxButton.Parent = frame
skyboxButton.MouseButton1Click:Connect(function()
    local skybox = Instance.new("Sky") -- Cria uma nova instÃ¢ncia de Sky
    skybox.Parent = game.Lighting -- Coloca o Skybox no Lighting
    local skyImageId = "rbxassetid://134964139950"
    skybox.SkyboxBk = skyImageId -- Imagem para a parte de trÃ¡s
    skybox.SkyboxDn = skyImageId -- Imagem para a parte de baixo
    skybox.SkyboxFt = skyImageId -- Imagem para a frente
    skybox.SkyboxLf = skyImageId -- Imagem para a esquerda
    skybox.SkyboxRt = skyImageId -- Imagem para a direita
    skybox.SkyboxUp = skyImageId -- Imagem para cima
end)

-- ConfiguraÃ§Ãµes do botÃ£o para mudar o chÃ£o
changeGroundButton.Size = UDim2.new(1, 0, 0, 50)
changeGroundButton.Position = UDim2.new(0, 0, 0, 150)
changeGroundButton.Text = "1x2x7x9"
changeGroundButton.Parent = frame
changeGroundButton.MouseButton1Click:Connect(function()
    local groundImageId = "rbxassetid://134964139950"
    local terrain = game.Workspace.Terrain
    terrain:FillBlock(workspace.Baseplate.Position, workspace.Baseplate.Size, Enum.Material.Grass)
    -- Aplique a textura ao chÃ£o (baseplate ou qualquer parte do seu chÃ£o)
end)

-- ConfiguraÃ§Ãµes dos CrÃ©ditos
creditsLabel.Size = UDim2.new(1, 0, 0, 50)
creditsLabel.Position = UDim2.new(0, 0, 1, -50)
creditsLabel.Text = "Credits to girl00kidd"
creditsLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
creditsLabel.Parent = frame

-- FunÃ§Ã£o para permitir arrastar a interface
local dragging = false
local dragStart = nil
local startPos = nil

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

frame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        frame.Position = startPos + UDim2.new(0, delta.X, 0, delta.Y)
    end
end)