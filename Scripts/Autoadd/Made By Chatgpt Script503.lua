local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = game.Workspace.CurrentCamera

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HighlightColor = Color3.fromRGB(255, 0, 0) -- Highlight color
local TextColor = Color3.fromRGB(255, 255, 255) -- Text color (white)
local espEnabled = true -- ESP state
local aimAssistEnabled = false -- Aimbot state

-- Function to create a distance label and highlight a player's character
local function addESPAndDistanceLabel(character)
    local head = character:WaitForChild("Head", 5)
    if not head then return end

    if espEnabled then
        -- Create Highlight instance for ESP
        if not character:FindFirstChildOfClass("Highlight") then
            local highlight = Instance.new("Highlight")
            highlight.Adornee = character
            highlight.FillColor = HighlightColor
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.Parent = character
        end

        -- Create BillboardGui for distance label
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Name = "DistanceDisplay"
        billboardGui.Size = UDim2.new(0, 100, 0, 50)
        billboardGui.Adornee = head
        billboardGui.StudsOffset = Vector3.new(0, 2, 0)
        billboardGui.AlwaysOnTop = true
        billboardGui.Parent = head

        -- Create TextLabel to display the distance
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.TextColor3 = TextColor
        textLabel.TextScaled = true
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.Text = "0 Studs"
        textLabel.Parent = billboardGui

        -- Update the distance label every frame
        RunService.RenderStepped:Connect(function()
            if character and character.Parent then
                local distance = (LocalPlayer.Character.Head.Position - head.Position).Magnitude
                textLabel.Text = string.format("%.1f Studs", distance)
            end
        end)
    end
end

-- Function to toggle ESP on or off
local function toggleESP()
    espEnabled = not espEnabled
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            if espEnabled then
                addESPAndDistanceLabel(player.Character)
            else
                -- Remove all highlights and distance displays
                local highlight = player.Character:FindFirstChildOfClass("Highlight")
                if highlight then
                    highlight:Destroy()
                end

                local head = player.Character:FindFirstChild("Head")
                if head then
                    local distanceDisplay = head:FindFirstChild("DistanceDisplay")
                    if distanceDisplay then
                        distanceDisplay:Destroy()
                    end
                end
            end
        end
    end
end

-- Function for aim assist (aimbot)
local function aimAssist()
    if not aimAssistEnabled then return end

    local closestPlayer, closestDistance = nil, math.huge
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local headPosition = player.Character.Head.Position
            local distance = (LocalPlayer.Character.Head.Position - headPosition).Magnitude
            if distance < closestDistance then
                closestPlayer = player
                closestDistance = distance
            end
        end
    end

    if closestPlayer and closestPlayer.Character then
        local head = closestPlayer.Character:FindFirstChild("Head")
        if head then
            -- Calculate the direction to the target head
            local targetPosition = head.Position
            local cameraPosition = Camera.CFrame.Position
            local direction = (targetPosition - cameraPosition).Unit

            -- Smoothly adjust the camera to look at the target head
            Camera.CFrame = CFrame.new(cameraPosition, cameraPosition + direction)
        end
    end
end

-- Function to create GUI for toggling ESP and enabling aimbot
local function createGUI()
    local screenGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
    screenGui.Name = "ESPAndAimbotGUI"

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 250, 0, 150)
    frame.Position = UDim2.new(0, 10, 0, 10)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.5
    frame.Draggable = true
    frame.Active = true
    frame.Selectable = true
    frame.Parent = screenGui

    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0, 200, 0, 50)
    toggleButton.Position = UDim2.new(0, 25, 0, 10)
    toggleButton.Text = "Toggle ESP"
    toggleButton.Parent = frame

    local aimAssistButton = Instance.new("TextButton")
    aimAssistButton.Size = UDim2.new(0, 200, 0, 50)
    aimAssistButton.Position = UDim2.new(0, 25, 0, 70)
    aimAssistButton.Text = "Toggle Aim Assist"
    aimAssistButton.Parent = frame

    local closeButton = Instance.new("TextButton")
    closeButton.Size = UDim2.new(0, 20, 0, 20)
    closeButton.Position = UDim2.new(1, -30, 0, 0)
    closeButton.Text = "X"
    closeButton.TextScaled = true
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    closeButton.Parent = frame

    toggleButton.MouseButton1Click:Connect(toggleESP)
    aimAssistButton.MouseButton1Click:Connect(function()
        aimAssistEnabled = not aimAssistEnabled
    end)

    closeButton.MouseButton1Click:Connect(function()
        frame.Visible = false
    end)

    -- Add functionality to reopen the GUI
    local openButton = Instance.new("TextButton")
    openButton.Size = UDim2.new(0, 100, 0, 50)
    openButton.Position = UDim2.new(0, 10, 0, 170)
    openButton.Text = "Open GUI"
    openButton.Visible = false
    openButton.Parent = screenGui

    openButton.MouseButton1Click:Connect(function()
        frame.Visible = true
        openButton.Visible = false
    end)

    -- Make the open button appear when the frame is closed
    closeButton.MouseButton1Click:Connect(function()
        frame.Visible = false
        openButton.Visible = true
    end)
end

-- Connect player events
local function onCharacterAdded(character)
    if character ~= LocalPlayer.Character then
        addESPAndDistanceLabel(character)
    end
end

local function onPlayerAdded(player)
    player.CharacterAdded:Connect(onCharacterAdded)

    if player.Character then
        onCharacterAdded(player.Character)
    end
end

-- Initialize the script
Players.PlayerAdded:Connect(onPlayerAdded)
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        onPlayerAdded(player)
    end
end

-- Create the GUI and setup aim assist
createGUI()
RunService.RenderStepped:Connect(aimAssist)
