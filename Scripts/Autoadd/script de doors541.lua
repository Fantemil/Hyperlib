local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 130, 0, 75)
frame.Position = UDim2.new(1, -160, 0, 10)
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.BackgroundTransparency = 0.5
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -20, 0, 0)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Parent = frame

local activateButton = Instance.new("TextButton")
activateButton.Size = UDim2.new(0, 130, 0, 30)
activateButton.Position = UDim2.new(0.5, -65, 0, 20)
activateButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
activateButton.Text = "Activar doors"
activateButton.TextColor3 = Color3.new(1, 1, 1)
activateButton.Parent = frame

local deactivateButton = Instance.new("TextButton")
deactivateButton.Size = UDim2.new(0, 130, 0, 30)
deactivateButton.Position = UDim2.new(0.5, -65, 0, 60)
deactivateButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
deactivateButton.Text = "Desactivar doors"
deactivateButton.TextColor3 = Color3.new(1, 1, 1)
deactivateButton.Parent = frame

local fpsLabel = Instance.new("TextLabel")
fpsLabel.Size = UDim2.new(0, 80, 0, 20)
fpsLabel.Position = UDim2.new(0, -23, 0, 2)
fpsLabel.BackgroundTransparency = 1
fpsLabel.Text = ""
fpsLabel.TextColor3 = Color3.new(0, 1, 0)
fpsLabel.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    frame:Destroy()
end)

activateButton.MouseButton1Click:Connect(function()
    if workspace:FindFirstChild("Doors") then
        workspace.Doors.Parent = game.Lighting
    end
end)

deactivateButton.MouseButton1Click:Connect(function()
    if game.Lighting:FindFirstChild("Doors") then
        game.Lighting.Doors.Parent = workspace
    end
end)

local runService = game:GetService("RunService")

runService.RenderStepped:Connect(function(deltaTime)
    local fps = math.floor(1 / deltaTime)
    fpsLabel.Text = "FPS: " .. fps
end)
