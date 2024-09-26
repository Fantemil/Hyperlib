local player = game:GetService("Players").LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))

-- Function to blur the screen
local function applyBlur()
    local blur = Instance.new("BlurEffect", game:GetService("Lighting"))
    blur.Size = 24 -- Increase blur intensity
    return blur
end

-- Function to display the message with half white and half black text
local function displayMessage()
    local messageLabel = Instance.new("TextLabel")
    messageLabel.Size = UDim2.new(0, 300, 0, 50)
    messageLabel.Position = UDim2.new(0.5, -150, 0.5, -25)
    messageLabel.BackgroundTransparency = 1
    messageLabel.TextScaled = true
    messageLabel.Font = Enum.Font.GothamBold
    
    -- Create two separate text sections for the effect
    local textWhite = "scarecrow.cc "
    local textBlack = "[Beta Build]"
    messageLabel.Text = textWhite .. "<font color='rgb(0,0,0)'>" .. textBlack .. "</font>"
    messageLabel.RichText = true -- Allow mixed formatting
    messageLabel.TextColor3 = Color3.new(1, 1, 1) -- White color for first part
    
    messageLabel.Parent = gui

    wait(5) -- Display the message for 5 seconds
    messageLabel:Destroy() -- Remove the message
end

-- Function to create the hitbox visual
local function createHitboxVisual(torso)
    if torso:FindFirstChild("HitboxVisual") then
        torso:FindFirstChild("HitboxVisual"):Destroy()
    end

    local hitboxVisual = Instance.new("Part")
    hitboxVisual.Name = "HitboxVisual"
    hitboxVisual.Shape = Enum.PartType.Ball
    hitboxVisual.Size = Vector3.new(15, 15, 15)
    hitboxVisual.BrickColor = BrickColor.new("Royal purple")
    hitboxVisual.Material = Enum.Material.Neon
    hitboxVisual.Transparency = 0.6
    hitboxVisual.Anchored = true
    hitboxVisual.CanCollide = false
    hitboxVisual.Parent = torso
    hitboxVisual.CFrame = torso.CFrame

    hitboxVisual:GetPropertyChangedSignal("CFrame"):Connect(function()
        hitboxVisual.CFrame = torso.CFrame
    end)
end

-- Function to create the health ESP
local function createHealthESP(character)
    if character:FindFirstChild("HealthESP") then
        character:FindFirstChild("HealthESP"):Destroy()
    end

    local humanoid = character:FindFirstChild("Humanoid")
    local head = character:FindFirstChild("Head")
    if humanoid and head then
        local esp = Instance.new("BillboardGui")
        esp.Name = "HealthESP"
        esp.Adornee = head
        esp.Size = UDim2.new(0, 50, 0, 20)
        esp.StudsOffset = Vector3.new(0, 2, 0)
        esp.AlwaysOnTop = true

        local textLabel = Instance.new("TextLabel", esp)
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.TextScaled = true
        textLabel.Font = Enum.Font.GothamBold

        local function updateHealthDisplay(health)
            local healthPercentage = (health / humanoid.MaxHealth) * 100
            if healthPercentage >= 80 then
                textLabel.TextColor3 = Color3.new(0, 1, 0) -- Green
            elseif healthPercentage >= 40 then
                textLabel.TextColor3 = Color3.new(1, 0.5, 0) -- Orange
            else
                textLabel.TextColor3 = Color3.new(1, 0, 0) -- Red
            end
            textLabel.Text = tostring(math.floor(health)) -- Only display current health
        end

        updateHealthDisplay(humanoid.Health)

        humanoid.HealthChanged:Connect(function(health)
            updateHealthDisplay(health)
        end)

        esp.Parent = character
    end
end

-- Function to extend torso hitbox
local function extendTorsoHitbox(character)
    local torso = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso")
    if torso and torso:IsA("BasePart") then
        torso.Transparency = 1
        createHitboxVisual(torso)
        createHealthESP(character)
    end
end

-- Function to update hitboxes
local function updateHitboxes()
    for _, targetPlayer in pairs(game:GetService("Players"):GetPlayers()) do
        if targetPlayer ~= player and targetPlayer.Character then -- Skip the local player
            extendTorsoHitbox(targetPlayer.Character)
        end
    end
end

-- Run the display message function, apply blur, then remove blur and run the rest of the script
local blurEffect = applyBlur() -- Apply blur to screen
displayMessage()
wait(5) -- Wait for the message to disappear
blurEffect:Destroy() -- Remove blur effect

-- Update hitboxes and ESP every 0.15 seconds
while true do
    updateHitboxes()
    wait(0.15)
end
