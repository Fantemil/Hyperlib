-- Referencias a los elementos de la UI
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "SpeedControlUI"
gui.Parent = player:WaitForChild("PlayerGui")

-- Crear el marco de la UI
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0.2, 0, 0.3, 0)
mainFrame.Position = UDim2.new(0.4, 0, 0.1, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(200, 200, 200) -- Color gris
mainFrame.Parent = gui

-- Crear el tÃ­tulo
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0.1, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "A-TRAIN MENU"
titleLabel.TextScaled = true
titleLabel.BackgroundColor3 = Color3.fromRGB(150, 150, 150) -- Color de fondo del tÃ­tulo
titleLabel.TextColor3 = Color3.fromRGB(0, 0, 0) -- Color del texto
titleLabel.Parent = mainFrame

-- Crear el cuadro de texto para velocidad
local speedBox = Instance.new("TextBox")
speedBox.Name = "SpeedBox"
speedBox.Size = UDim2.new(1, -20, 0.5, -10)
speedBox.Position = UDim2.new(0, 10, 0.1, 10)
speedBox.Text = "500" -- Valor inicial de la velocidad mÃ¡xima
speedBox.PlaceholderText = "Max Speed"
speedBox.TextScaled = true
speedBox.Parent = mainFrame

-- Crear el botÃ³n de encendido/apagado
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(1, -20, 0.25, -10)
toggleButton.Position = UDim2.new(0, 10, 0.6, 10)
toggleButton.Text = "On"
toggleButton.TextScaled = true
toggleButton.Parent = mainFrame

-- Crear el botÃ³n de salir
local exitButton = Instance.new("TextButton")
exitButton.Name = "ExitButton"
exitButton.Size = UDim2.new(0.2, 0, 0.2, 0)
exitButton.Position = UDim2.new(1, -30, 0, 10)
exitButton.Text = "X"
exitButton.TextScaled = true
exitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Color rojo
exitButton.Parent = mainFrame

-- Referencias a los elementos del juego
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local speed = 16 -- Velocidad inicial
local acceleration = 1.1 -- Factor de aceleraciÃ³n
local maxSpeed = 500 -- Velocidad mÃ¡xima para controlar la aceleraciÃ³n
local deceleration = 0.95 -- Factor de desaceleraciÃ³n

local isRunning = false
local isEnabled = true
local dragging = false
local dragStart, startPos

-- FunciÃ³n para manejar la aceleraciÃ³n exponencial
local function increaseSpeed()
    isRunning = true
    while isRunning and humanoid.WalkSpeed < maxSpeed do
        humanoid.WalkSpeed = math.min(humanoid.WalkSpeed * acceleration, maxSpeed)
        wait(0.1) -- Ajusta para controlar la velocidad de aceleraciÃ³n
    end
end

-- FunciÃ³n para detener la aceleraciÃ³n y restaurar valores
local function stopSpeed()
    isRunning = false
    while humanoid.WalkSpeed > speed do
        humanoid.WalkSpeed = humanoid.WalkSpeed * deceleration -- DesaceleraciÃ³n gradual
        wait(0.1) -- Ajusta para controlar la velocidad de desaceleraciÃ³n
    end
    humanoid.WalkSpeed = speed -- Asegura que la velocidad no baje de la velocidad inicial
end

-- FunciÃ³n para actualizar la velocidad mÃ¡xima
local function updateMaxSpeed()
    local newMaxSpeed = tonumber(speedBox.Text)
    if newMaxSpeed and newMaxSpeed > 0 then
        maxSpeed = newMaxSpeed
    end
end

-- Manejar el cambio del botÃ³n de encendido/apagado
toggleButton.MouseButton1Click:Connect(function()
    isEnabled = not isEnabled
    toggleButton.Text = isEnabled and "On" or "Off"
    if not isEnabled then
        stopSpeed()
    end
end)

-- Actualizar la velocidad mÃ¡xima cuando se cambie el valor en el TextBox
speedBox.FocusLost:Connect(function()
    updateMaxSpeed()
end)

-- Manejar el arrastre del marco
mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and input.Target == titleLabel then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- FunciÃ³n para cerrar la UI
exitButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- Detectar cuando el jugador comienza a correr
humanoid.Running:Connect(function(speed)
    if speed > 0 and isEnabled then
        increaseSpeed()
    else
        stopSpeed()
    end
end)

-- Detener la aceleraciÃ³n cuando el jugador deja de moverse
humanoid.Died:Connect(function()
    stopSpeed()
end)