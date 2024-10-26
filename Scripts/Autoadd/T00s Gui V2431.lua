-- GUI Creation
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local OpenCloseButton = Instance.new("TextButton")
local PunchButton = Instance.new("TextButton") -- Added Punch button

-- GUI Properties
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.Position = UDim2.new(0.5, -150, 0.5, -200)
Frame.Size = UDim2.new(0, 300, 0, 400)
Frame.Visible = false

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Size = UDim2.new(0, 300, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "T00s Gui V2ð§"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 20

OpenCloseButton.Parent = ScreenGui
OpenCloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
OpenCloseButton.Position = UDim2.new(0.5, -50, 0, 10)
OpenCloseButton.Size = UDim2.new(0, 100, 0, 30)
OpenCloseButton.Font = Enum.Font.SourceSans
OpenCloseButton.Text = "GUI Open"
OpenCloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenCloseButton.TextSize = 14

-- Toggle GUI Function
local function toggleGUI()
    Frame.Visible = not Frame.Visible
    if Frame.Visible then
        OpenCloseButton.Text = "GUI Close"
    else
        OpenCloseButton.Text = "GUI Open"
    end
end

OpenCloseButton.MouseButton1Click:Connect(toggleGUI)

-- Button Creation Function
local function createButton(name, position, callback)
    local button = Instance.new("TextButton")
    button.Parent = Frame
    button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    button.Size = UDim2.new(0, 150, 0, 50)
    button.Position = position
    button.Font = Enum.Font.SourceSans
    button.Text = name
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 14
    if callback then
        button.MouseButton1Click:Connect(callback)
    end
    return button
end

-- Punch Button Functionality
local function punchFunction()
    executePunchScript()
end

-- Create Punch Button
PunchButton.Parent = ScreenGui -- Added to ScreenGui directly for top-left positioning
PunchButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
PunchButton.Position = UDim2.new(0, 10, 0, 10) -- Top-left corner position
PunchButton.Size = UDim2.new(0, 100, 0, 30)
PunchButton.Font = Enum.Font.SourceSans
PunchButton.Text = "Punch"
PunchButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PunchButton.TextSize = 14
PunchButton.MouseButton1Click:Connect(punchFunction)

-- Button Functions (unchanged from your original script)

local function skyboxFunction()
    for _, v in pairs(game.Lighting:GetChildren()) do
        if v:IsA("Sky") then
            v:Destroy()
        end
    end
    local sky = Instance.new("Sky")
    sky.SkyboxBk = "rbxassetid://17294509169"
    sky.SkyboxDn = "rbxassetid://17294509169"
    sky.SkyboxFt = "rbxassetid://17294509169"
    sky.SkyboxLf = "rbxassetid://17294509169"
    sky.SkyboxRt = "rbxassetid://17294509169"
    sky.SkyboxUp = "rbxassetid://17294509169"
    sky.Parent = game.Lighting
end

local function marioSpamFunction()
    while true do
        wait(100.1)
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://6845637094"
        sound.Volume = 0 -- Adjusted volume to 0
        sound.Parent = game.Workspace
        sound:Play()
    end
end

local function hintFunction()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Hint",
        Text = "hello bitch",
        Duration = 5
    })
end

local function killAllFunction()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.Health = 0
        end
    end
end

local function boostGraphicFunction()
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level21
end

local function newPlrJumpscareFunction()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character then
            local jumpscare = Instance.new("ScreenGui")
            local image = Instance.new("ImageLabel")
            jumpscare.Parent = player.PlayerGui
            image.Parent = jumpscare
            image.Size = UDim2.new(1, 0, 1, 0)
            image.Image = "rbxassetid://17294509169"
            wait(3)
            jumpscare:Destroy()
        end
    end
end

local function themeFunction()
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Theme has been changed!",
        Color = Color3.fromRGB(0, 255, 0),
        Font = Enum.Font.SourceSansBold,
        TextSize = 24
    })
end

local function shutFunction()
    game:Shutdown()
end

local function newPlrParticlesFunction()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character then
            local particle = Instance.new("ParticleEmitter")
            particle.Texture = "rbxassetid://17294509169"
            particle.Parent = player.Character.Head
        end
    end
end

local function unanchorFunction()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Anchored = false
        end
    end
end

local function decalFunction()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character then
            -- Example implementation, replace with your logic
            local decal = Instance.new("Decal")
            decal.Texture = "rbxassetid://17294509169"
            decal.Parent = player.Character.Head
        end
    end
end

local function discoFunction()
    while true do
        wait(0.5)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character then
                player.Character.Head.BrickColor = BrickColor.Random()
            end
        end
    end
end

-- Button Array
local buttons = {
    {"Skybox", UDim2.new(0, 0, 0, 50), skyboxFunction},
    {"theme", UDim2.new(0, 150, 0, 50), marioSpamFunction},
    {"Hint", UDim2.new(0, 0, 0, 100), hintFunction},
    {"kill all", UDim2.new(0, 150, 0, 100), killAllFunction},
    {"boost graphic", UDim2.new(0, 0, 0, 150), boostGraphicFunction},
    {"New Plr Jumpscare", UDim2.new(0, 150, 0, 150), newPlrJumpscareFunction},
    {"message", UDim2.new(0, 0, 0, 200), themeFunction},
    {"shut", UDim2.new(0, 150, 0, 200), shutFunction},
    {"New plr particles", UDim2.new(0, 0, 0, 250), newPlrParticlesFunction},
    {"unanchor", UDim2.new(0, 150,0, 0, 0, 250), unanchorFunction},
    {"decal", UDim2.new(0, 150, 0, 250), decalFunction}, -- Replace "clr rstorage" with "decal"
    {"disco", UDim2.new(0, 0, 0, 300), discoFunction}, -- Completed the "disco" function entry
}

-- Create Buttons
for _, btnData in ipairs(buttons) do
    createButton(btnData[1], btnData[2], btnData[3])
end