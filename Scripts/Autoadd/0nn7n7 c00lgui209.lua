-- Definindo cores e fontes
local black = Color3.new(0, 0, 0)
local red = Color3.new(1, 0, 0)
local white = Color3.new(1, 1, 1)
local font = Enum.Font.SourceSans

-- Criando a interface
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.Name = "c00lgui"

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.BackgroundColor3 = black
frame.BorderColor3 = red
frame.BorderSizePixel = 3
frame.Position = UDim2.new(0.3, 0, 0.3, 0)
frame.Size = UDim2.new(0.4, 0, 0.4, 0)

local title = Instance.new("TextLabel")
title.Parent = frame
title.BackgroundColor3 = black
title.BorderColor3 = red
title.BorderSizePixel = 3
title.Size = UDim2.new(1, 0, 0.1, 0)
title.Font = font
title.Text = "c00lgui Reborn Rc7"
title.TextColor3 = white
title.TextScaled = true

-- FunÃ§Ã£o para criar botÃµes
local function createButton(parent, text, position, callback)
    local button = Instance.new("TextButton")
    button.Parent = parent
    button.BackgroundColor3 = black
    button.BorderColor3 = red
    button.BorderSizePixel = 3
    button.Position = position
    button.Size = UDim2.new(0.8, 0, 0.1, 0)
    button.Font = font
    button.Text = text
    button.TextColor3 = white
    button.TextScaled = true
    button.MouseButton1Click:Connect(callback)
end

-- Adicionando funÃ§Ãµes
createButton(frame, "Admin Commands", UDim2.new(0.1, 0, 0.2, 0), function()
    print("Admin Commands ativado")
    -- Adicione aqui os comandos de admin
end)

createButton(frame, "Server Destruction", UDim2.new(0.1, 0, 0.4, 0), function()
    print("Server Destruction ativado")
    -- Adicione aqui os comandos de destruiÃ§Ã£o do servidor
end)

createButton(frame, "Gear/Tools", UDim2.new(0.1, 0, 0.6, 0), function()
    print("Gear/Tools ativado")
    -- Adicione aqui os comandos de gear/tools
end)

createButton(frame, "LocalPlayer", UDim2.new(0.1, 0, 0.8, 0), function()
    print("LocalPlayer ativado")
    -- Adicione aqui os comandos para o jogador local
end)