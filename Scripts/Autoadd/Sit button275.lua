local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false -- Asegura que la interfaz no se reinicie con el personaje
screenGui.Parent = player:WaitForChild("PlayerGui")

-- BotÃ³n "Sit"
local sitButton = Instance.new("TextButton")
sitButton.Size = UDim2.new(0.05, 0, 0.05, 0) -- TamaÃ±o pequeÃ±o
sitButton.Position = UDim2.new(0.4, 0, 0.4, 0)
sitButton.Text = "Sit"
sitButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) -- Gris
sitButton.BackgroundTransparency = 0.48 -- 48% transparente
sitButton.Parent = screenGui

-- FunciÃ³n para sentarse
sitButton.MouseButton1Click:Connect(function()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Sit = true -- Hace que el personaje se siente
    end
end)

-- BotÃ³n "Remove"
local removeButton = Instance.new("TextButton")
removeButton.Size = UDim2.new(0.05, 0, 0.05, 0) -- TamaÃ±o pequeÃ±o
removeButton.Position = UDim2.new(0.45, 0, 0.4, 0) -- Junto al botÃ³n "Sit"
removeButton.Text = "Remove"
removeButton.BackgroundColor3 = Color3.new(1, 0, 0) -- Rojo
removeButton.BackgroundTransparency = 0.48 -- 48% transparente
removeButton.Parent = screenGui

-- FunciÃ³n para quitar la interfaz
removeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy() -- Quita la interfaz
end)

-- Hacer que los botones sean movibles
local dragging = false
local dragStart = nil
local startPos = nil

local function updateButtonPosition(input)
    local delta = input.Position - dragStart
    local newPosition = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)

    -- Actualiza la posiciÃ³n del botÃ³n "Sit"
    sitButton.Position = newPosition
    -- Actualiza la posiciÃ³n del botÃ³n "Remove" basado en la posiciÃ³n del botÃ³n "Sit"
    removeButton.Position = UDim2.new(newPosition.X.Scale + 0.05, newPosition.X.Offset, newPosition.Y.Scale, newPosition.Y.Offset)
end

local function startDragging(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = sitButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end

sitButton.InputBegan:Connect(startDragging)
removeButton.InputBegan:Connect(startDragging)

sitButton.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updateButtonPosition(input)
    end
end)

removeButton.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updateButtonPosition(input)
    end
end)