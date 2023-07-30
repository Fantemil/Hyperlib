local player = game:GetService("Players").LocalPlayer --counts your studs, counter resets when you respawn.

local function createStudsWalkedGUI()
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local totalStudsWalked = 0
    local isCharacterAlive = true

    
    local gui = Instance.new("ScreenGui")
    gui.Name = "StudsWalkedGUI"
    gui.ResetOnSpawn = false
    gui.Parent = player.PlayerGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 50)
    frame.Position = UDim2.new(0.5, -100, 0.9, -50)
    frame.BackgroundTransparency = 0.5
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.Active = true -- Enable GUI interaction
    frame.Draggable = true -- Allow the GUI to be dragged
    frame.Parent = gui

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = "Studs Walked: 0"
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextScaled = true
    label.Parent = frame


    local function formatStuds(studs)
        local formattedStuds = tostring(math.floor(studs))
        local reverseFormatted = string.reverse(formattedStuds)
        local withCommas = string.gsub(reverseFormatted, "(%d%d%d)", "%1,")
        return string.reverse(withCommas:gsub("^,", ""))
    end

    
    local function updateStudsWalked(deltaTime)
        if isCharacterAlive then
            local movementVector = humanoidRootPart.Velocity * deltaTime
            local studsWalked = movementVector.Magnitude
            totalStudsWalked = totalStudsWalked + studsWalked
            label.Text = "Studs Walked: " .. formatStuds(totalStudsWalked)
        end
    end

    
    local function onCharacterDeath()
        isCharacterAlive = false
    end

    
    local function onCharacterAdded(newCharacter)
        for _, child in ipairs(gui:GetChildren()) do
            child:Destroy()
        end

        character = newCharacter
        humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        totalStudsWalked = 0
        isCharacterAlive = true
        label.Text = "Studs Walked: 0"
    end

    
    character:WaitForChild("Humanoid").Died:Connect(onCharacterDeath)
    player.CharacterAdded:Connect(onCharacterAdded)

    
    local function update(deltaTime)
        if isCharacterAlive then
            updateStudsWalked(deltaTime)
        end
    end

    game:GetService("RunService").Heartbeat:Connect(update)
end


createStudsWalkedGUI()


player.CharacterAdded:Connect(function()
    local previousGUI = player.PlayerGui:FindFirstChild("StudsWalkedGUI")
    if previousGUI then
        previousGUI:Destroy()
    end
    createStudsWalkedGUI()
end)