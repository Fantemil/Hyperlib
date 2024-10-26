local Players = game:GetService("Players")
local player = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Create Screen GUI
local function createGui()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "TeleportGUI"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    -- Create Main Frame
    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 300, 0, 300)
    mainFrame.Position = UDim2.new(0.5, -150, 0.5, -150)
    mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = screenGui

    -- Create Tabs
    local tabFrame = Instance.new("Frame")
    tabFrame.Size = UDim2.new(1, 0, 0, 50)
    tabFrame.Position = UDim2.new(0, 0, 0, 0)
    tabFrame.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    tabFrame.Parent = mainFrame

    local teleportTabButton = Instance.new("TextButton")
    teleportTabButton.Size = UDim2.new(0.5, 0, 1, 0)
    teleportTabButton.Text = "Teleport"
    teleportTabButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    teleportTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    teleportTabButton.Font = Enum.Font.SourceSans
    teleportTabButton.TextSize = 20
    teleportTabButton.Parent = tabFrame

    local functionsTabButton = Instance.new("TextButton")
    functionsTabButton.Size = UDim2.new(0.5, 0, 1, 0)
    functionsTabButton.Position = UDim2.new(0.5, 0, 0, 0)
    functionsTabButton.Text = "Functions"
    functionsTabButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    functionsTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    functionsTabButton.Font = Enum.Font.SourceSans
    functionsTabButton.TextSize = 20
    functionsTabButton.Parent = tabFrame

    -- Create Teleport Page
    local teleportPage = Instance.new("Frame")
    teleportPage.Size = UDim2.new(1, 0, 1, -50)
    teleportPage.Position = UDim2.new(0, 0, 0, 50)
    teleportPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    teleportPage.Parent = mainFrame

    -- Create TextBox for searching players
    local searchBox = Instance.new("TextBox")
    searchBox.Size = UDim2.new(1, 0, 0, 50)
    searchBox.Position = UDim2.new(0, 0, 0, 0)
    searchBox.PlaceholderText = "Search Player..."
    searchBox.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    searchBox.Parent = teleportPage

    -- Create Dropdown for Player Selection
    local playerDropdown = Instance.new("TextLabel")
    playerDropdown.Size = UDim2.new(1, 0, 0, 50)
    playerDropdown.Position = UDim2.new(0, 0, 0, 60)
    playerDropdown.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    playerDropdown.Text = "Select Player"
    playerDropdown.TextWrapped = true
    playerDropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
    playerDropdown.Font = Enum.Font.SourceSans
    playerDropdown.TextSize = 18
    playerDropdown.Parent = teleportPage

    -- Create Teleport Button
    local teleportButton = Instance.new("TextButton")
    teleportButton.Size = UDim2.new(1, 0, 0, 50)
    teleportButton.Position = UDim2.new(0, 0, 0, 120)
    teleportButton.Text = "Teleport"
    teleportButton.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
    teleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    teleportButton.Font = Enum.Font.SourceSans
    teleportButton.TextSize = 20
    teleportButton.Parent = teleportPage

    -- Create Lock On Button
    local lockOnButton = Instance.new("TextButton")
    lockOnButton.Size = UDim2.new(1, 0, 0, 50)
    lockOnButton.Position = UDim2.new(0, 0, 0, 180)
    lockOnButton.Text = "Lock On"
    lockOnButton.BackgroundColor3 = Color3.fromRGB(200, 100, 100)
    lockOnButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    lockOnButton.Font = Enum.Font.SourceSans
    lockOnButton.TextSize = 20
    lockOnButton.Parent = teleportPage

    -- Create Functions Page
    local functionsPage = Instance.new("Frame")
    functionsPage.Size = UDim2.new(1, 0, 1, -50)
    functionsPage.Position = UDim2.new(0, 0, 0, 50)
    functionsPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    functionsPage.Visible = false
    functionsPage.Parent = mainFrame

    -- Create Set Walkspeed Section
    local walkspeedFrame = Instance.new("Frame")
    walkspeedFrame.Size = UDim2.new(1, 0, 0, 100)
    walkspeedFrame.Position = UDim2.new(0, 0, 0, 0)
    walkspeedFrame.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
    walkspeedFrame.Parent = functionsPage

    -- Create Label for Walkspeed
    local walkspeedLabel = Instance.new("TextLabel")
    walkspeedLabel.Size = UDim2.new(1, 0, 0, 50)
    walkspeedLabel.Text = "Set Walkspeed"
    walkspeedLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    walkspeedLabel.Font = Enum.Font.SourceSans
    walkspeedLabel.TextSize = 18
    walkspeedLabel.Parent = walkspeedFrame

    -- Create Slider for Walkspeed
    local walkspeedSlider = Instance.new("TextBox")
    walkspeedSlider.Size = UDim2.new(1, 0, 0, 50)
    walkspeedSlider.Position = UDim2.new(0, 0, 0, 50)
    walkspeedSlider.PlaceholderText = "Set Walkspeed (default: 16)"
    walkspeedSlider.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    walkspeedSlider.Parent = walkspeedFrame

    -- Create Apply Walkspeed Button
    local applyWalkspeedButton = Instance.new("TextButton")
    applyWalkspeedButton.Size = UDim2.new(1, 0, 0, 50)
    applyWalkspeedButton.Position = UDim2.new(0, 0, 0, 100)
    applyWalkspeedButton.Text = "Apply Walkspeed"
    applyWalkspeedButton.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
    applyWalkspeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    applyWalkspeedButton.Font = Enum.Font.SourceSans
    applyWalkspeedButton.TextSize = 20
    applyWalkspeedButton.Parent = walkspeedFrame

    -- Function to update player dropdown
    local function updateDropdown()
        local searchTerm = searchBox.Text:lower()
        local matchedPlayers = {}

        for _, v in ipairs(Players:GetPlayers()) do
            if v ~= player and (v.Name:lower():sub(1, #searchTerm) == searchTerm or v.DisplayName:lower():sub(1, #searchTerm) == searchTerm) then
                table.insert(matchedPlayers, v.DisplayName .. " (" .. v.Name .. ")")
            end
        end

        playerDropdown.Text = #matchedPlayers > 0 and table.concat(matchedPlayers, ", ") or "No Matches"
    end

    -- Button connections
    searchBox.Changed:Connect(function()
        updateDropdown()
    end)

    teleportButton.MouseButton1Click:Connect(function()
        local selected = playerDropdown.Text
        local playerName = selected:match("%(([^)]+)%)")
        if playerName then
            local targetPlayer = Players:FindFirstChild(playerName)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                player.Character:SetPrimaryPartCFrame(targetPlayer.Character.HumanoidRootPart.CFrame)
            end
        end
    end)

    -- Lock On Functionality
    local isLockedOn = false
    local lockOnPlayerName = nil
    local lockOnConnection = nil

    lockOnButton.MouseButton1Click:Connect(function()
        isLockedOn = not isLockedOn
        lockOnButton.Text = isLockedOn and "Unlock" or "Lock On"

        if isLockedOn then
            local selected = playerDropdown.Text
            lockOnPlayerName = selected:match("%(([^)]+)%)")

            if lockOnPlayerName then
                lockOnConnection = RunService.Heartbeat:Connect(function()
                    local targetPlayer = Players:FindFirstChild(lockOnPlayerName)
                    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        player.Character:SetPrimaryPartCFrame(targetPlayer.Character.HumanoidRootPart.CFrame)
                    end
                end)
            end
        else
            if lockOnConnection then
                lockOnConnection:Disconnect()
                lockOnConnection = nil
                lockOnPlayerName = nil
            end
        end
    end)

    -- Tab Switching
    teleportTabButton.MouseButton1Click:Connect(function()
        teleportPage.Visible = true
        functionsPage.Visible = false
    end)

    functionsTabButton.MouseButton1Click:Connect(function()
        teleportPage.Visible = false
        functionsPage.Visible = true
    end)

    -- Function to change Walkspeed
    local function changeWalkspeed()
        local walkspeedValue = tonumber(walkspeedSlider.Text) or 16 -- Default to 16 if invalid
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = walkspeedValue
        end
    end

    -- Apply Walkspeed Button
    applyWalkspeedButton.MouseButton1Click:Connect(changeWalkspeed)

    -- Make the main frame draggable
    local dragging = false
    local dragStart
    local startPos

    mainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = mainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    mainFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
            local delta = input.Position - dragStart
            mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    -- Ensure GUI persists across deaths
    local function onCharacterAdded()
        if screenGui.Parent then
            screenGui.Parent = player:WaitForChild("PlayerGui")
        end
    end

    player.CharacterAdded:Connect(onCharacterAdded)

    -- Ensure GUI destruction on player leave
    game.Players.PlayerRemoving:Connect(function()
        if player.PlayerGui:FindFirstChild("TeleportGUI") then
            player.PlayerGui.TeleportGUI:Destroy()
        end
    end)

    -- Minimize/Restore Functionality
    local guiMinimized = false
    local function toggleGui()
        mainFrame.Visible = not guiMinimized
        guiMinimized = not guiMinimized
    end

    -- Keybind to Minimize/Restore GUI
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed and input.KeyCode == Enum.KeyCode.RightAlt then
            toggleGui()
        end
    end)
end

-- Initialize GUI
createGui()

-- Recreate GUI on player respawn
Players.LocalPlayer.CharacterAdded:Connect(function()
    createGui()
end)
