-- Create Screen GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "k00lkidd81_GUI_v3"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 800)  -- Increased height to fit all buttons and the black bar
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -400)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 50, 0)  -- Dark Green color
mainFrame.Parent = screenGui
mainFrame.Active = true
mainFrame.Draggable = true  -- Make the GUI movable

-- Function to create buttons
local function createButton(name, text, position, clickFunction)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = UDim2.new(0, 380, 0, 50)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(0, 100, 0)  -- Slightly brighter green for contrast
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 24
    button.Text = text
    button.Parent = mainFrame
    button.MouseButton1Click:Connect(clickFunction)
end

-- Function to set Decal on all parts
local function applyDecal(decalId)
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("Part") or part:IsA("MeshPart") then
            local decal = Instance.new("Decal", part)
            decal.Texture = "rbxassetid://" .. decalId
        end
    end
end

-- Function to set Skybox
local function applySkybox(skyboxId)
    local sky = Instance.new("Sky", game.Lighting)
    sky.SkyboxBk = "rbxassetid://" .. skyboxId
    sky.SkyboxDn = "rbxassetid://" .. skyboxId
    sky.SkyboxFt = "rbxassetid://" .. skyboxId
    sky.SkyboxLf = "rbxassetid://" .. skyboxId
    sky.SkyboxRt = "rbxassetid://" .. skyboxId
    sky.SkyboxUp = "rbxassetid://" .. skyboxId
end

-- Function to play music
local function playMusic(musicId)
    local sound = Instance.new("Sound", game.Workspace)
    sound.SoundId = "rbxassetid://" .. musicId
    sound:Play()
end

-- Function to display a jumpscare
local function jumpscare(jumpscareImageId, jumpscareSoundId)
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.new(1, 0, 1, 0)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = "rbxassetid://" .. jumpscareImageId
    imageLabel.Parent = screenGui

    local sound = Instance.new("Sound", game.Workspace)
    sound.SoundId = "rbxassetid://" .. jumpscareSoundId
    sound:Play()

    wait(2)
    imageLabel:Destroy()
    sound:Destroy()
end

-- Function to create a hint
local function createHint(text)
    local hint = Instance.new("Hint", game.Workspace)
    hint.Text = text
    wait(3)
    hint:Destroy()
end

-- Function to create a message
local function createMessage(text)
    local message = Instance.new("Message", game.Workspace)
    message.Text = text
    wait(3)
    message:Destroy()
end

-- Function to apply particles
local function applyParticles(particleId)
    for _, player in pairs(game.Players:GetPlayers()) do
        local particleEmitter = Instance.new("ParticleEmitter", player.Character.Head)
        particleEmitter.Texture = "rbxassetid://" .. particleId
        particleEmitter.Speed = NumberRange.new(5, 10)
        particleEmitter.Lifetime = NumberRange.new(2, 5)
    end
end

-- Function to create ball rain
local function ballRain()
    for i = 1, 100 do
        local ball = Instance.new("Part")
        ball.Size = Vector3.new(5, 5, 5)
        ball.Position = Vector3.new(math.random(-50, 50), 50, math.random(-50, 50))
        ball.BrickColor = BrickColor.Green()
        ball.Anchored = false
        ball.Parent = workspace

        -- Add gravity to make it fall
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, -50, 0)
        bodyVelocity.Parent = ball
    end
end

-- Creating buttons
createButton("DecalSpam", "DecalSpam", UDim2.new(0, 10, 0, 10), function()
    applyDecal(18837336287)
end)

createButton("Skybox", "Skybox", UDim2.new(0, 10, 0, 70), function()
    applySkybox(18837336287)
end)

createButton("Music", "Theme Music", UDim2.new(0, 10, 0, 130), function()
    playMusic(1839246711)
end)

createButton("Jumpscare", "Jumpscare", UDim2.new(0, 10, 0, 190), function()
    jumpscare(18844285338, 5721957175)
end)

createButton("Hint", "Hint", UDim2.new(0, 10, 0, 250), function()
    createHint("team k00lkidd81 messed with this game")
end)

createButton("Message", "Message", UDim2.new(0, 10, 0, 310), function()
    createMessage("team k00lkidd81 join Today!11!!!111")
end)

createButton("WorldTourDecalSpam", "World Tour DecalSpam", UDim2.new(0, 10, 0, 370), function()
    applyDecal(18844285338)
end)

createButton("WorldTourSkybox", "World Tour Skybox", UDim2.new(0, 10, 0, 430), function()
    applySkybox(18844285338)
end)

createButton("Particles", "k00lkidd81 Particles", UDim2.new(0, 10, 0, 490), function()
    applyParticles(18837336287)
end)

createButton("LogoParticles", "Logo Particles", UDim2.new(0, 10, 0, 550), function()
    applyParticles(18800633554)
end)

createButton("WorldTourParticles", "World Tour Particles", UDim2.new(0, 10, 0, 610), function()
    applyParticles(18844285338)
end)

-- Black bar at the bottom of the GUI
local blackBar = Instance.new("Frame")
blackBar.Size = UDim2.new(1, 0, 0, 10)
blackBar.Position = UDim2.new(0, 0, 1, -10)
blackBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- Black color
blackBar.Parent = mainFrame

-- Ball Rain Button
createButton("BallRain", "Ball Rain", UDim2.new(0, 10, 0, 670), function()
    ballRain()
end)

-- Theme Button
createButton("Theme", "Theme", UDim2.new(0, 10, 0, 730), function()
    playMusic(1839246711)  -- Updated Theme ID
end)