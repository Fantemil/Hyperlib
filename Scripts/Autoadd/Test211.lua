local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local camera = workspace.CurrentCamera

local function createGUI()
    local screenGui = Instance.new("ScreenGui", playerGui)
    screenGui.Name = "Nz Hub (Free)"

    local scrollingFrame = Instance.new("ScrollingFrame", screenGui)
    scrollingFrame.Size = UDim2.new(0, 350, 0, 600)
    scrollingFrame.Position = UDim2.new(0.5, -175, 0.5, -300)
    scrollingFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    scrollingFrame.BackgroundTransparency = 0.2
    scrollingFrame.BorderSizePixel = 0
    scrollingFrame.Visible = false
    scrollingFrame.ScrollBarThickness = 10
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 1200)

    local mainFrame = Instance.new("Frame", scrollingFrame)
    mainFrame.Size = UDim2.new(1, 0, 0, 1200)
    mainFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    mainFrame.BorderSizePixel = 0

    local toggleButton = Instance.new("TextButton", screenGui)
    toggleButton.Size = UDim2.new(0, 100, 0, 50)
    toggleButton.Position = UDim2.new(1, -110, 0.5, -25)
    toggleButton.Text = "Toggle GUI"
    toggleButton.BackgroundColor3 = Color3.fromRGB(255, 87, 34)
    toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleButton.BorderSizePixel = 0

    local function toggleGUI()
        local visible = scrollingFrame.Visible
        scrollingFrame.Visible = not visible
        TweenService:Create(scrollingFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 350, 0, visible and 0 or 600)}):Play()
    end

    toggleButton.MouseButton1Click:Connect(toggleGUI)

    local function createControl(name, position, property, defaultValue, resetValue, isFOV, isBrightness, isVehicleSpeed, isTeleport)
        local frame = Instance.new("Frame", mainFrame)
        frame.Size = UDim2.new(1, -20, 0, 100)
        frame.Position = position
        frame.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
        frame.BorderSizePixel = 0

        local label = Instance.new("TextLabel", frame)
        label.Size = UDim2.new(1, -20, 0, 30)
        label.Position = UDim2.new(0, 10, 0, 10)
        label.Text = name .. " Control"
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.BackgroundTransparency = 1

        local input = Instance.new("TextBox", frame)
        input.Size = UDim2.new(0, 100, 0, 30)
        input.Position = UDim2.new(0, 10, 0, 50)
        input.PlaceholderText = "Enter " .. name
        input.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        input.TextColor3 = Color3.fromRGB(255, 255, 255)
        input.BorderSizePixel = 0
        input.Text = tostring(defaultValue)

        local setButton = Instance.new("TextButton", frame)
        setButton.Size = UDim2.new(0, 80, 0, 30)
        setButton.Position = UDim2.new(0, 120, 0, 50)
        setButton.Text = isTeleport and "Tp" or "Set"
        setButton.BackgroundColor3 = Color3.fromRGB(76, 175, 80)
        setButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        setButton.BorderSizePixel = 0

        local resetButton = Instance.new("TextButton", frame)
        resetButton.Size = UDim2.new(0, 80, 0, 30)
        resetButton.Position = UDim2.new(0, 210, 0, 50)
        resetButton.Text = "Reset"
        resetButton.BackgroundColor3 = Color3.fromRGB(244, 67, 54)
        resetButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        resetButton.BorderSizePixel = 0

        local function apply(value)
            if value then
                if isFOV then
                    camera.FieldOfView = value
                elseif isBrightness then
                    Lighting.Brightness = math.clamp(value, 0, 100)
                elseif isVehicleSpeed then
                    local seat = player.Character and player.Character:FindFirstChildOfClass("VehicleSeat")
                    if seat then
                        seat.MaxSpeed = value
                    end
                elseif isTeleport then
                    for _, otherPlayer in ipairs(Players:GetPlayers()) do
                        if otherPlayer ~= player and otherPlayer.Name:lower():find(value:lower(), 1, true) then
                            player.Character.HumanoidRootPart.CFrame = otherPlayer.Character.HumanoidRootPart.CFrame
                            break
                        end
                    end
                else
                    player.Character.Humanoid[property] = value
                end
                input.Text = tostring(value)
            end
        end

        setButton.MouseButton1Click:Connect(function()
            apply(tonumber(input.Text))
        end)
        resetButton.MouseButton1Click:Connect(function()
            apply(resetValue)
        end)
    end

    createControl("Speed", UDim2.new(0, 10, 0, 10), "WalkSpeed", 16, 16, false, false)
    createControl("Jump", UDim2.new(0, 10, 0, 120), "JumpPower", 50, 50, false, false)
    createControl("FOV", UDim2.new(0, 10, 0, 230), "FieldOfView", 70, 70, true, false)
    createControl("Brightness", UDim2.new(0, 10, 0, 340), "Brightness", 1, 1, false, true)
    createControl("V Speed", UDim2.new(0, 10, 0, 450), "MaxSpeed", 50, 50, false, false, true)
    createControl("Teleport", UDim2.new(0, 10, 0, 560), nil, "", "", false, false, false, true)

    local removeFogButton = Instance.new("TextButton", mainFrame)
    removeFogButton.Size = UDim2.new(1, -20, 0, 50)
    removeFogButton.Position = UDim2.new(0, 10, 0, 670)
    removeFogButton.Text = "Remove Fog"
    removeFogButton.BackgroundColor3 = Color3.fromRGB(33, 150, 243)
    removeFogButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    removeFogButton.BorderSizePixel = 0

    removeFogButton.MouseButton1Click:Connect(function()
        Lighting.FogEnd = 0
        Lighting.FogStart = 0
        Lighting.FogColor = Color3.fromRGB(0, 0, 0)
    end)
end

local function onCharacterAdded(character)
    character:WaitForChild("Humanoid")
    character:WaitForChild("HumanoidRootPart")
    createGUI()
end

player.CharacterAdded:Connect(onCharacterAdded)
if player.Character then
    onCharacterAdded(player.Character)
else
    player.CharacterAdded:Wait()
    onCharacterAdded(player.Character)
end