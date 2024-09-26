
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.Name = "k00sGui"

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.3, 0, 0.6, 0)
mainFrame.Position = UDim2.new(0.05, 0, 0.2, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
mainFrame.BorderSizePixel = 2
mainFrame.BorderColor3 = Color3.fromRGB(0, 255, 255)
mainFrame.Parent = screenGui

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.1, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "k00s gui v1 [Edited]| By t00s"
titleLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.SourceSans
titleLabel.TextScaled = true
titleLabel.Parent = mainFrame

local function createButton(name, text, position)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = UDim2.new(0.3, 0, 0.1, 0)
    button.Position = position
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 0)
    button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    button.BorderSizePixel = 1
    button.BorderColor3 = Color3.fromRGB(255, 255, 0)
    button.Font = Enum.Font.SourceSans
    button.TextScaled = true
    button.Parent = mainFrame
    return button
end

local buttons = {
    {"skybox", "Skybox", UDim2.new(0.05, 0, 0.15, 0)},
    {"skybox1", "Skybox1", UDim2.new(0.35, 0, 0.15, 0)},
    {"decal", "Decal", UDim2.new(0.65, 0, 0.15, 0)},
    {"decal1", "Decal1", UDim2.new(0.05, 0, 0.3, 0)},
    {"hint", "Hint", UDim2.new(0.35, 0, 0.3, 0)},
    {"hint1", "Hint1", UDim2.new(0.65, 0, 0.3, 0)},
    {"jumpscare", "Jumpscare", UDim2.new(0.05, 0, 0.45, 0)},
    {"particle", "Particle", UDim2.new(0.35, 0, 0.45, 0)},
    {"particle1", "Particle1", UDim2.new(0.65, 0, 0.45, 0)},
}

for _, btn in ipairs(buttons) do
    createButton(btn[1], btn[2], btn[3])
end

local footerLabel = Instance.new("TextLabel")
footerLabel.Size = UDim2.new(1, 0, 0.1, 0)
footerLabel.Position = UDim2.new(0, 0, 0.9, 0)
footerLabel.Text = "made by t00s"
footerLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
footerLabel.BackgroundTransparency = 1
footerLabel.Font = Enum.Font.SourceSans
footerLabel.TextScaled = true
footerLabel.Parent = mainFrame

local function showHint(text)
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = text;
        Color = Color3.fromRGB(0, 255, 255);
        Font = Enum.Font.SourceSans;
        TextSize = 24;
    })
end

local function playJumpscareSound()
    local sound = Instance.new("Sound", game.Workspace)
    sound.SoundId = "rbxassetid://6845637094"
    sound:Play()
    return sound
end

local function showJumpscareImage()
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.new(1, 0, 1, 0)
    imageLabel.Position = UDim2.new(0, 0, 0, 0)
    imageLabel.Image = "rbxassetid://18828961044"
    imageLabel.BackgroundTransparency = 1
    imageLabel.Parent = screenGui

    wait(3)
    imageLabel:Destroy()
end

local function applyDecalToAllParts(decalId)
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("Part") then
            local newDecal = Instance.new("Decal")
            newDecal.Texture = decalId
            newDecal.Face = Enum.NormalId.Front
            newDecal.Parent = obj
        end
    end
end

local function createParticles(emitterId, rate)
    local character = game.Players.LocalPlayer.Character
    if not character then return end

    local head = character:FindFirstChild("Head")
    if not head then return end

    local emitter = Instance.new("ParticleEmitter")
    emitter.Texture = emitterId
    emitter.Rate = rate
    emitter.Speed = NumberRange.new(2, 5)
    emitter.Size = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 1),
        NumberSequenceKeypoint.new(1, 2),
    })
    emitter.Parent = head
end

local function changeSkybox(skyboxId)
    local sky = Instance.new("Sky")
    sky.Parent = game.Lighting
    sky.SkyboxBk = skyboxId
    sky.SkyboxDn = skyboxId
    sky.SkyboxFt = skyboxId
    sky.SkyboxLf = skyboxId
    sky.SkyboxRt = skyboxId
    sky.SkyboxUp = skyboxId
end

for _, button in ipairs(mainFrame:GetChildren()) do
    if button:IsA("TextButton") then
        button.MouseButton1Click:Connect(function()
            if button.Name == "skybox" then
                changeSkybox("rbxassetid://18828961044")
            elseif button.Name == "skybox1" then
                changeSkybox("rbxassetid://18815085277")
            elseif button.Name == "decal" then
                applyDecalToAllParts("rbxassetid://18828961044")
            elseif button.Name == "decal1" then
                applyDecalToAllParts("rbxassetid://18815085277")
            elseif button.Name == "hint" then
                showHint("FUCKED THE T00S|K00S")
            elseif button.Name == "hint1" then
                showHint("TEAM K00S JOIN TODAY")
            elseif button.Name == "jumpscare" then
                local sound = playJumpscareSound()
                showJumpscareImage()
                sound:Stop()
                sound:Destroy()
            elseif button.Name == "particle" then
                createParticles("rbxassetid://18828961044", 20)
            elseif button.Name == "particle1" then
                createParticles("rbxassetid://18815085277", 50)
            end
        end)
    end
end

local dragging = false
local dragInput, mousePos, framePos

local function update(input)
    local delta = input.Position - mousePos
    mainFrame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        mousePos = input.Position
        framePos = mainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)