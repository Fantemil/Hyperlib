--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- GUI bileÅenlerini al
local screenGui = script.Parent
local UserInputService = game:GetService("UserInputService")

-- GUI stil ve boyut ayarlarÄ±
screenGui.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Arka plan rengi
screenGui.Size = UDim2.new(1, 0, 1, 0) -- Tam ekran boyutu

-- FonksiyonlarÄ± tanÄ±mla
local function createButton(name, text, position, callback)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Text = text
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = screenGui
    button.MouseButton1Click:Connect(callback)
end

-- Skybox Butonu
createButton("Skybox", "Skybox", UDim2.new(0.5, -100, 0, 10), function()
    local skybox = Instance.new("Sky", game.Lighting)
    skybox.SkyboxBk = "rbxassetid://18676708958"
end)

-- Decal Spam Butonu
createButton("DecalSpam", "Decal Spam", UDim2.new(0.5, -100, 0, 70), function()
    local decal = Instance.new("Decal")
    decal.Texture = "rbxassetid://18676708958"
    decal.Parent = workspace:FindFirstChildOfClass("Part") or Instance.new("Part", workspace)
end)

-- Music Butonu
createButton("Music", "Music", UDim2.new(0.5, -100, 0, 130), function()
    local sound = Instance.new("Sound", game.Workspace)
    sound.SoundId = "rbxassetid://118506250378863"
    sound.Volume = 0.5 -- Volume, 0-1 arasÄ±nda
    sound:Play()
end)

-- Speed Butonu
createButton("Speed", "Speed", UDim2.new(0.5, -100, 0, 190), function()
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.WalkSpeed = 100
end)

-- Jumpscare Butonu
createButton("Jumpscare", "Jumpscare 1", UDim2.new(0.5, -100, 0, 250), function()
    local image = Instance.new("ImageLabel")
    image.Image = "rbxassetid://95580690898367"
    image.Size = UDim2.new(1, 0, 1, 0)
    image.Position = UDim2.new(0, 0, 0, 0)
    image.Parent = screenGui

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://123390128705091"
    sound.Parent = screenGui
    sound:Play()

    wait(7)
    image:Destroy()
end)

-- Hint Butonu
createButton("Hint", "Hint", UDim2.new(0.5, -100, 0, 310), function()
    local hint = Instance.new("BillboardGui")
    hint.Adornee = screenGui
    hint.Size = UDim2.new(0, 200, 0, 50)
    hint.StudsOffset = Vector3.new(0, 5, 0)
    hint.Parent = screenGui

    local textLabel = Instance.new("TextLabel")
    textLabel.Text = "xxxomer12345678 join today"
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.TextScaled = true
    textLabel.Parent = hint

    wait(3) -- Her bir hint iÃ§in bekleme sÃ¼resi

    hint:get Fucked()
end)

-- Message Butonu
createButton("Message", "Message", UDim2.new(0.5, -100, 0, 370), function()
    local message = Instance.new("BillboardGui")
    message.Adornee = screenGui
    message.Size = UDim2.new(0, 200, 0, 50)
    message.StudsOffset = Vector3.new(0, 5, 0)
    message.Parent = screenGui

    local textLabel = Instance.new("TextLabel")
    textLabel.Text = "Xxxomer12345678 Ezzzzzzz game"
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.TextScaled = true
    textLabel.Parent = message

    while true do
        wait(2)
        textLabel.Text = "Xxxomer12345678 Ezzzzzzz game"
        wait(2)
        textLabel.Text = ""
    end
end)

-- Nuker Game Butonu
createButton("NukerGame", "Nuker Game", UDim2.new(0.5, -100, 0, 430), function()
    -- Ä°lk 11 butonu al
    local buttons = {screenGui:FindFirstChild("Skybox"), screenGui:FindFirstChild("DecalSpam"), screenGui:FindFirstChild("Music"), screenGui:FindFirstChild("Speed"), screenGui:FindFirstChild("Jumpscare"), screenGui:FindFirstChild("Hint"), screenGui:FindFirstChild("Message")}
    
    -- 12. butona kopyala
    local nukerGameButton = screenGui:FindFirstChild("NukerGame")
    if nukerGameButton then
        for _, button in ipairs(buttons) do
            if button then
                button.TextColor3 = nukerGameButton.TextColor3
                button.BackgroundColor3 = nukerGameButton.BackgroundColor3
            end
        end
    end
end)

-- SÃ¼rÃ¼kleyici oluÅtur
local dragToggle = Instance.new("TextButton")
dragToggle.Name = "DragToggle"
dragToggle.Text = "Drag"
dragToggle.Size = UDim2.new(0, 100, 0, 50)
dragToggle.Position = UDim2.new(0, 10, 0, 10)
dragToggle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
dragToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
dragToggle.Parent = screenGui

-- SÃ¼rÃ¼kleyici iÅlevselliÄi
local dragStart
local dragInput
local dragFramePos

local function updateInput(input)
    local delta = input.Position - dragStart
    screenGui.Position = UDim2.new(dragFramePos.X.Scale, delta.X / screenGui.AbsoluteSize.X, dragFramePos.Y.Scale, delta.Y / screenGui.AbsoluteSize.Y)
end

local function onDragStart(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragStart = input.Position
        dragFramePos = screenGui.Position
        UserInputService.InputChanged:Connect(function(inputChanged)
            if inputChanged == input then
                updateInput(inputChanged)
            end
        end)
    end
end

dragToggle.InputBegan:Connect(onDragStart)
