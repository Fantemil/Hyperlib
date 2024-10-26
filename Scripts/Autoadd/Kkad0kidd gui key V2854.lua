local screenGui = Instance.new("ScreenGui") -- Cria a interface na tela
local frame = Instance.new("Frame") -- Cria um quadro para a interface
local hintLabel = Instance.new("TextLabel") -- Label para hint
local creditsLabel = Instance.new("TextLabel") -- Label de crÃ©ditos
local keyInput = Instance.new("TextBox") -- Caixa de entrada para a chave
local submitButton = Instance.new("TextButton") -- BotÃ£o de envio da chave
local messageLabel = Instance.new("TextLabel") -- Label para mensagens

-- ConfiguraÃ§Ãµes do ScreenGui
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- ConfiguraÃ§Ãµes do Frame
frame.Size = UDim2.new(0, 300, 0, 300)
frame.Position = UDim2.new(0.5, -150, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- Cor amarela
frame.Parent = screenGui

-- ConfiguraÃ§Ãµes do Hint
hintLabel.Size = UDim2.new(1, 0, 0, 50)
hintLabel.Position = UDim2.new(0, 0, 0, 0)
hintLabel.Text = "Join Team girl00kidd"
hintLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
hintLabel.Parent = frame

-- ConfiguraÃ§Ãµes dos CrÃ©ditos
creditsLabel.Size = UDim2.new(1, 0, 0, 50)
creditsLabel.Position = UDim2.new(0, 0, 1, -50)
creditsLabel.Text = "Credits to girl00kidd"
creditsLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
creditsLabel.Parent = frame

-- ConfiguraÃ§Ãµes da Caixa de Entrada da Key
keyInput.Size = UDim2.new(1, -20, 0, 50)
keyInput.Position = UDim2.new(0, 10, 0, 50)
keyInput.PlaceholderText = "Digite a Key"
keyInput.TextColor3 = Color3.fromRGB(0, 0, 0)
keyInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keyInput.Parent = frame

-- ConfiguraÃ§Ãµes do BotÃ£o de Envio
submitButton.Size = UDim2.new(1, 0, 0, 50)
submitButton.Position = UDim2.new(0, 0, 0, 110)
submitButton.Text = "Submeter"
submitButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
submitButton.Parent = frame

-- ConfiguraÃ§Ãµes da Label de Mensagens
messageLabel.Size = UDim2.new(1, 0, 0, 50)
messageLabel.Position = UDim2.new(0, 0, 0, 170)
messageLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
messageLabel.Parent = frame

-- FunÃ§Ã£o para validar a key
local function validateKey()
    local key = keyInput.Text
    if key == "zhand7" then
        messageLabel.Text = "Key correta! Abrindo script..."
        wait(2) -- Espera um pouco antes de executar o script
        frame.Visible = false -- Oculta a interface de entrada da chave
        runMainScript() -- Chama a funÃ§Ã£o principal do script
    else
        messageLabel.Text = "Key incorreta! Tente novamente."
    end
end

-- FunÃ§Ã£o principal do script (aqui vocÃª pode adicionar suas funcionalidades)
local function runMainScript()
    -- FunÃ§Ã£o para mudar o cÃ©u
    local function changeSky()
        local skybox = Instance.new("Sky") -- Cria uma nova instÃ¢ncia de Sky
        skybox.Parent = game.Lighting -- Coloca o Skybox no Lighting
        local skyImageId = "rbxassetid://134964139950"
        skybox.SkyboxBk = skyImageId -- Imagem para a parte de trÃ¡s
        skybox.SkyboxDn = skyImageId -- Imagem para a parte de baixo
        skybox.SkyboxFt = skyImageId -- Imagem para a frente
        skybox.SkyboxLf = skyImageId -- Imagem para a esquerda
        skybox.SkyboxRt = skyImageId -- Imagem para a direita
        skybox.SkyboxUp = skyImageId -- Imagem para cima
    end

    -- FunÃ§Ã£o para mudar o chÃ£o
    local function changeGround()
        local terrain = game.Workspace.Terrain
        -- Aqui vocÃª pode adicionar lÃ³gica para aplicar a textura ao chÃ£o
        terrain:FillBlock(Vector3.new(0, 0, 0), Vector3.new(100, 1, 100), Enum.Material.Grass)
    end

    -- ConexÃ£o da tecla "T"
    local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
        if input.KeyCode == Enum.KeyCode.T and not gameProcessedEvent then
            changeSky()  -- Chama a funÃ§Ã£o para mudar o cÃ©u
            changeGround()  -- Chama a funÃ§Ã£o para mudar o chÃ£o
        end
    end)
end

-- ConexÃ£o do botÃ£o de envio
submitButton.MouseButton1Click:Connect(validateKey)

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