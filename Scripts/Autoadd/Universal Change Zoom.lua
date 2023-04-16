local camera = game.Workspace.CurrentCamera
local zoomLevel = 50

local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 100) -- aumentamos el tamaÃ±o del cuadrado
frame.Position = UDim2.new(0, 375, 0, 192)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderColor3 = Color3.new(0, 1, 0)
frame.BorderSizePixel = 2
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 300, 0, 20)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.Text = "Enter a number to set zoom level (30-100):"
textLabel.TextColor3 = Color3.new(1, 1, 1) -- cambiamos el color del texto a blanco
textLabel.BackgroundTransparency = 1
textLabel.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 100, 0, 20)
textBox.Position = UDim2.new(0, 100, 0, 30) -- ajustamos la posiciÃ³n del cuadro de texto
textBox.Text = "50"
textBox.Parent = frame

textBox.FocusLost:Connect(function()
    local newZoomLevel = tonumber(textBox.Text)
    if newZoomLevel then
        zoomLevel = math.clamp(newZoomLevel, 30, 100)
        camera.FieldOfView = 70 - (zoomLevel - 50) / 2
    end
end)

setButton.MouseButton1Click:Connect(function()
    local newZoomLevel = tonumber(textBox.Text)
    if newZoomLevel then
        zoomLevel = math.clamp(newZoomLevel, 30, 100)
        camera.FieldOfView = 70 - (zoomLevel - 50) / 2
    end
end)