local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera
local runService = game:GetService("RunService")

local cameraFrozen = false
local lastCameraCFrame = camera.CFrame
local dragged = false  -- Variable para saber si fue arrastrado

-- Crear la interfaz y asegurarse de que persista despuÃ©s de la muerte
local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false  -- Esto asegura que no se reinicie la interfaz
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Crear el botÃ³n "Stop Camera"
local stopButton = Instance.new("TextButton")
stopButton.Size = UDim2.new(0, 60, 0, 25)  -- TamaÃ±o reducido del botÃ³n
stopButton.Position = UDim2.new(0.5, -30, 0.5, -12.5) -- Centrado en la pantalla
stopButton.Text = "Stop Camera"
stopButton.BackgroundColor3 = Color3.new(1, 0, 0)
stopButton.TextColor3 = Color3.new(1, 1, 1)
stopButton.BackgroundTransparency = 0.48 -- 48% transparente
stopButton.Parent = screenGui

-- Crear el pequeÃ±o botÃ³n de borrar en la esquina superior derecha del botÃ³n "Stop Camera"
local deleteButton = Instance.new("TextButton")
deleteButton.Size = UDim2.new(0, 15, 0, 15)  -- TamaÃ±o pequeÃ±o del botÃ³n de borrar
deleteButton.Position = UDim2.new(1, -15, 0, 0)  -- Colocarlo en la esquina superior derecha
deleteButton.Text = "X"
deleteButton.BackgroundColor3 = Color3.new(0.8, 0, 0)
deleteButton.TextColor3 = Color3.new(1, 1, 1)
deleteButton.BackgroundTransparency = 0.48 -- 48% transparente
deleteButton.Parent = stopButton

-- FunciÃ³n para fijar la cÃ¡mara y cambiar el texto del botÃ³n
local function freezeCamera()
    if not dragged then  -- Solo ejecuta si no fue arrastrado
        cameraFrozen = not cameraFrozen
        if cameraFrozen then
            lastCameraCFrame = camera.CFrame
            stopButton.Text = "Don't Stop"  -- Cambiar el texto cuando la cÃ¡mara se congela
        else
            stopButton.Text = "Stop Camera"  -- Cambiar de nuevo cuando la cÃ¡mara se descongela
        end
    end
    dragged = false  -- Reiniciar el estado de arrastre
end

-- FunciÃ³n para eliminar el botÃ³n "Stop Camera" al presionar el botÃ³n de borrar
deleteButton.MouseButton1Click:Connect(function()
    stopButton:Destroy()
end)

-- Actualizar la cÃ¡mara cada frame
runService.RenderStepped:Connect(function()
    if cameraFrozen then
        camera.CFrame = lastCameraCFrame
    end
end)

-- Funcionalidad para arrastrar el botÃ³n
local UIS = game:GetService("UserInputService")
local dragging = false
local dragInput, dragStart, startPos

-- Comienza a arrastrar el botÃ³n al presionar
stopButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = stopButton.Position
        dragged = false  -- Reiniciar el estado de arrastre

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

-- Detecta el movimiento mientras arrastras
stopButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

-- Movimiento del botÃ³n mientras se arrastra
UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        stopButton.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
        dragged = true  -- Marcar como arrastrado
    end
end)

-- Conectar el evento del botÃ³n para congelar la cÃ¡mara
stopButton.MouseButton1Click:Connect(freezeCamera)