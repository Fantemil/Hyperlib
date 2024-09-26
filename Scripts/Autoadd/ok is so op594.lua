
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- CrÃ©er une Frame pour contenir les boutons
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.5, 0)
frame.Position = UDim2.new(0.35, 0, 0.25, 0)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

-- Ajouter un titre
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
title.BorderSizePixel = 0
title.Text = "Select a Tower"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24
title.Parent = frame

-- Ajouter un bouton pour rÃ©duire la taille
local reduceButton = Instance.new("TextButton")
reduceButton.Size = UDim2.new(0, 50, 0, 50)
reduceButton.Position = UDim2.new(1, -50, 0, 0)
reduceButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
reduceButton.BorderSizePixel = 0
reduceButton.Text = "-"
reduceButton.TextColor3 = Color3.fromRGB(255, 255, 255)
reduceButton.Font = Enum.Font.SourceSansBold
reduceButton.TextSize = 24
reduceButton.Parent = frame

-- Ajouter un scrolling frame pour les boutons
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, 0, 1, -50)
scrollingFrame.Position = UDim2.new(0, 0, 0, 50)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarThickness = 10
scrollingFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Parent = frame

-- RÃ©cupÃ©rer tous les noms dans ReplicatedStorage.Towers
local replicatedStorage = game:GetService("ReplicatedStorage")
local towers = replicatedStorage:WaitForChild("Towers"):GetChildren()

-- CrÃ©er des boutons pour chaque tour
local yOffset = 0
for _, tower in ipairs(towers) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 50)
    button.Position = UDim2.new(0, 0, 0, yOffset)
    button.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
    button.BorderSizePixel = 0
    button.Text = tower.Name
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 24
    button.Parent = scrollingFrame

    yOffset = yOffset + 50
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, yOffset)
    
    button.MouseButton1Click:Connect(function()
        -- RÃ©cupÃ©rer la position du joueur
        local player = game.Players.LocalPlayer
        local playerPosition = player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.HumanoidRootPart.Position or Vector3.new(0,0,0)

        -- PrÃ©parer les arguments
        local args = {
            [1] = button.Text,
            [2] = CFrame.new(playerPosition)
        }

        -- Invoquer l'Ã©vÃ©nement SpawnTower
        replicatedStorage:WaitForChild("Events"):WaitForChild("SpawnTower"):FireServer(unpack(args))
    end)
end

-- Fonction pour rÃ©duire la taille du GUI
reduceButton.MouseButton1Click:Connect(function()
    if frame.Size == UDim2.new(0.3, 0, 0.5, 0) then
        frame.Size = UDim2.new(0.15, 0, 0.25, 0)
        scrollingFrame.Size = UDim2.new(1, 0, 1, -50)
        title.Size = UDim2.new(1, 0, 0, 25)
        title.TextSize = 12
    else
        frame.Size = UDim2.new(0.3, 0, 0.5, 0)
        scrollingFrame.Size = UDim2.new(1, 0, 1, -50)
        title.Size = UDim2.new(1, 0, 0, 50)
        title.TextSize = 24
    end
end)
