local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.ResetOnSpawn = false

-- Crear el botÃ³n "Reset"
local resetButton = Instance.new("TextButton")
resetButton.Size = UDim2.new(0, 40, 0, 40)  -- TamaÃ±o mÃ¡s pequeÃ±o
resetButton.Position = UDim2.new(0.5, -20, 0.1, 0)
resetButton.Text = "Reset"
resetButton.BackgroundColor3 = Color3.new(1, 0, 0)
resetButton.TextColor3 = Color3.new(1, 1, 1)
resetButton.BackgroundTransparency = 0.5
resetButton.Parent = screenGui
resetButton.TextScaled = true
resetButton.AutoButtonColor = false
resetButton.BorderSizePixel = 0

-- Hacer el botÃ³n redondo
local corner = Instance.new("UICorner", resetButton)
corner.CornerRadius = UDim.new(0, 20)  -- Radio ajustado para un botÃ³n mÃ¡s pequeÃ±o

-- FunciÃ³n para reiniciar el personaje
local function resetCharacter()
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then humanoid.Health = 0 end
end

-- Crear el botÃ³n "X" para quitar el botÃ³n de reset
local closeButton = Instance.new("TextButton", resetButton)
closeButton.Size = UDim2.new(0, 12, 0, 12)  -- TamaÃ±o mÃ¡s pequeÃ±o
closeButton.Position = UDim2.new(1, -15, 0, 0)  -- Ajustar posiciÃ³n
closeButton.Text = "X"
closeButton.BackgroundColor3 = Color3.new(0.8, 0, 0)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BackgroundTransparency = 0.5
closeButton.BorderSizePixel = 0

-- Conectar el evento del botÃ³n "X"
closeButton.MouseButton1Click:Connect(function()
    resetButton:Destroy()
end)

-- Funcionalidad para arrastrar el botÃ³n
local UIS = game:GetService("UserInputService")
local dragging, dragStart, startPos = false, nil, nil

resetButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart, startPos = input.Position, resetButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        resetButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Conectar el evento del botÃ³n "Reset"
resetButton.MouseButton1Up:Connect(function()
    if not dragging then resetCharacter() end
end)