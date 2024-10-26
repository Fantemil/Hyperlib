-- ScreenGui and main Frame creation
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GameToolsGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0.4, 0, 0.5, 0)
frame.Position = UDim2.new(0.3, 0, 0.2, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderSizePixel = 5
frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
frame.Parent = screenGui

-- Adding title and subtitle
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.15, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "T00s Reborn "
title.TextScaled = true
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Parent = frame

local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(1, 0, 0.1, 0)
subtitle.Position = UDim2.new(0, 0, 0.9, 0)
subtitle.Text = "YapÄ±mcÄ±: @T00s"
subtitle.TextScaled = true
subtitle.BackgroundTransparency = 1
subtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
subtitle.Parent = frame

-- Array containing button names and their functions
local buttons = {
    "Skybox", "Mario Spam", "Hint", "Kill All", "Graphics Boost",
    "New Player Fright", "Theme Music", "Mute Sounds", "New Player Particles",
    "Release Unanchored", "Clear Cloned Depot", "Disco"
}

-- Dynamically creating buttons and assigning functions
for i, buttonName in ipairs(buttons) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.3, 0, 0.15, 0)
    button.Position = UDim2.new((i-1)%3 * 0.35, 0, math.floor((i-1)/3) * 0.2 + 0.2, 0)
    button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    button.BorderColor3 = Color3.fromRGB(255, 0, 0)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextScaled = true
    button.Text = buttonName
    button.Name = buttonName
    button.Parent = frame

    -- Assigning functions to each button
    if buttonName == "Skybox" then
        button.MouseButton1Click:Connect(function()
            -- Function to change the skybox
            local skyboxId = 17294509169
            local sky = Instance.new("Sky")
            sky.SkyboxBk = "rbxassetid://"..skyboxId
            sky.SkyboxDn = "rbxassetid://"..skyboxId
            sky.SkyboxFt = "rbxassetid://"..skyboxId
            sky.SkyboxLf = "rbxassetid://"..skyboxId
            sky.SkyboxRt = "rbxassetid://"..skyboxId
            sky.SkyboxUp = "rbxassetid://"..skyboxId
            sky.Parent = game.Lighting
        end)
    elseif buttonName == "Kill All" then
        button.MouseButton1Click:Connect(function()
            -- Function to kill all players
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("Humanoid") then
                    player.Character.Humanoid.Health = 0
                end
            end
        end)
    elseif buttonName == "Disco" then
        button.MouseButton1Click:Connect(function()
            -- Function for disco effect
            while true do
                for _, part in pairs(workspace:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.BrickColor = BrickColor.random()
                    end
                end
                wait(0.1)
            end
        end)
    elseif buttonName == "Hint" then
        button.MouseButton1Click:Connect(function()
            -- Function to send a hint
            game.StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = "Team T00SKIDD KR00MKIDD!",
                Color = Color3.fromRGB(255, 255, 0),
                Font = Enum.Font.SourceSansBold,
                TextSize = 24,
            })
        end)
    elseif buttonName == "Graphics Boost" then
        button.MouseButton1Click:Connect(function()
            -- Function for graphics boost
            local lighting = game.Lighting
            lighting.Brightness = 2
            lighting.GlobalShadows = true
            lighting.TimeOfDay = "14:00:00"
            lighting.FogEnd = 1000
            lighting.FogColor = Color3.fromRGB(255, 255, 255)
        end)
    elseif buttonName == "Mario Spam" then
        button.MouseButton1Click:Connect(function()
            -- Function for Mario sound spam
            for i = 1, 50 do
                local sound = Instance.new("Sound")
                sound.SoundId = "rbxassetid://147722227" -- Mario sound
                sound.Volume = 1
                sound.Parent = workspace
                sound:Play()
            end
        end)
    elseif buttonName == "New Player Fright" then
        button.MouseButton1Click:Connect(function()
            -- Function for new player fright (jumpscare)
            local jumpscareImage = Instance.new("ImageLabel")
            jumpscareImage.Size = UDim2.new(1, 0, 1, 0)
            jumpscareImage.Position = UDim2.new(0, 0, 0, 0)
            jumpscareImage.BackgroundTransparency = 0
            jumpscareImage.Image = "rbxassetid://17294509169" -- Jumpscare image asset ID
            jumpscareImage.Parent = screenGui

            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://147722227" -- Jumpscare sound
            sound.Volume = 1
            sound.Parent = screenGui -- Add to GUI for the sound to play
            sound:Play()

            wait(3) -- Remove after 3 seconds
            jumpscareImage:Destroy()
            sound:Destroy()
        end)
    elseif buttonName == "Theme Music" then
        button.MouseButton1Click:Connect(function()
            -- Function for theme music
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://6845637094" -- Theme music
            sound.Volume = 1
            sound.Looped = true
            sound.Parent = workspace
            sound:Play()
        end)
    elseif buttonName == "Mute Sounds" then
        button.MouseButton1Click:Connect(function()
            -- Function to mute all sounds
            for _, sound in pairs(workspace:GetDescendants()) do
                if sound:IsA("Sound") then
                    sound:Stop()
                end
            end
        end)
    elseif buttonName == "New Player Particles" then
        button.MouseButton1Click:Connect(function()
            -- Function for new player particle effect
            local particleEmitter = Instance.new("ParticleEmitter")
            particleEmitter.Parent = workspace
            particleEmitter.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(1, 1, 0))
            particleEmitter.LightEmission = 0.75
            particleEmitter.Size = NumberSequence.new(2, 1)
            particleEmitter.Texture = "rbxassetid://17294509169" -- Particle texture asset ID
            particleEmitter.Transparency = NumberSequence.new(0.5, 0.75)
            particleEmitter.ZOffset = 1
            particleEmitter.Acceleration = Vector3.new(0, 20, 0)
            particleEmitter.Lifetime = NumberRange.new(2, 4)
            particleEmitter.Rate = 10
            particleEmitter.Speed = NumberRange.new(5)
            particleEmitter.Rotation = NumberRange.new(-360, 360)
            particleEmitter.Parent = workspace.Terrain -- Ensure it has a parent
        end)
    elseif buttonName == "Release Unanchored" then
        button.MouseButton1Click:Connect(function()
            -- Function to release all unanchored parts
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and not part.Anchored then
                    part.Anchored = true
                end
            end
        end)
    elseif buttonName == "Clear Cloned Depot" then
        button.MouseButton1Click:Connect(function()
            -- Function to clear cloned depot items
            for _, obj in pairs(workspace:GetChildren()) do
                if string.find(obj.Name, "DepotClone") then
                    obj:Destroy()
                end
            end
        end)
    end
end