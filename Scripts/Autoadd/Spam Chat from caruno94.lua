local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ñ GUI
local function createGui(player)
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local MessageBox = Instance.new("TextBox")
    local CountBox = Instance.new("TextBox")
    local SendButton = Instance.new("TextButton")
    local ToggleButton = Instance.new("TextButton")
    local CloseButton = Instance.new("TextButton")
    local SettingsButton = Instance.new("TextButton")
    local SettingsFrame = Instance.new("Frame")
    local LanguageButton = Instance.new("TextButton")
    local CensorshipToggle = Instance.new("TextButton")
    
    ScreenGui.Parent = player:WaitForChild("PlayerGui")

    -- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ° Frame
    Frame.Size = UDim2.new(0, 300, 0, 250)
    Frame.Position = UDim2.new(0.5, -150, 0.5, -125)
    Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.Draggable = true
    Frame.Parent = ScreenGui

    -- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ° MessageBox
    MessageBox.Size = UDim2.new(0, 280, 0, 50)
    MessageBox.Position = UDim2.new(0, 10, 0, 10)
    MessageBox.PlaceholderText = "ÐÐ²ÐµÐ´Ð¸ÑÐµ ÑÐ¾Ð¾Ð±ÑÐµÐ½Ð¸Ðµ"
    MessageBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MessageBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    MessageBox.BorderSizePixel = 0
    MessageBox.Parent = Frame

    -- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ° CountBox
    CountBox.Size = UDim2.new(0, 280, 0, 50)
    CountBox.Position = UDim2.new(0, 10, 0, 70)
    CountBox.PlaceholderText = "ÐÐ²ÐµÐ´Ð¸ÑÐµ ÐºÐ¾Ð»Ð¸ÑÐµÑÑÐ²Ð¾"
    CountBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CountBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    CountBox.BorderSizePixel = 0
    CountBox.Parent = Frame

    -- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ° SendButton
    SendButton.Size = UDim2.new(0, 280, 0, 50)
    SendButton.Position = UDim2.new(0, 10, 0, 130)
    SendButton.Text = "ÐÑÐ¿ÑÐ°Ð²Ð¸ÑÑ" -- ÐÐµÑÐµÐ²Ð¾Ð´ ÐºÐ½Ð¾Ð¿ÐºÐ¸
    SendButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    SendButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    SendButton.BorderSizePixel = 0
    SendButton.Parent = Frame

    -- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ° ToggleButton
    ToggleButton.Size = UDim2.new(0, 100, 0, 50)
    ToggleButton.Position = UDim2.new(0, 10, 0, 10)
    ToggleButton.Text = "Ð¡Ð²ÐµÑÐ½ÑÑÑ/Ð Ð°Ð·Ð²ÐµÑÐ½ÑÑÑ"
    ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.BorderSizePixel = 0
    ToggleButton.Parent = ScreenGui

    -- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ° CloseButton
    CloseButton.Size = UDim2.new(0, 50, 0, 50)
    CloseButton.Position = UDim2.new(1, -60, 0, 10)
    CloseButton.Text = "X"
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.BorderSizePixel = 0
    CloseButton.Parent = Frame

    -- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ° SettingsButton
    SettingsButton.Size = UDim2.new(0, 280, 0, 50)
    SettingsButton.Position = UDim2.new(0, 10, 0, 190)
    SettingsButton.Text = "ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ¸"
    SettingsButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    SettingsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    SettingsButton.BorderSizePixel = 0
    SettingsButton.Parent = Frame

    -- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ° SettingsFrame
    SettingsFrame.Size = UDim2.new(0, 300, 0, 150)
    SettingsFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
    SettingsFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    SettingsFrame.Visible = false
    SettingsFrame.Parent = ScreenGui

    -- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ° LanguageButton
    LanguageButton.Size = UDim2.new(0, 280, 0, 50)
    LanguageButton.Position = UDim2.new(0, 10, 0, 10)
    LanguageButton.Text = "ÐÐ·Ð¼ÐµÐ½Ð¸ÑÑ ÑÐ·ÑÐº"
    LanguageButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    LanguageButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    LanguageButton.BorderSizePixel = 0
    LanguageButton.Parent = SettingsFrame

    -- ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ° CensorshipToggle
    CensorshipToggle.Size = UDim2.new(0, 280, 0, 50)
    CensorshipToggle.Position = UDim2.new(0, 10, 0, 70)
    CensorshipToggle.Text = "Ð¦ÐµÐ½Ð·ÑÑÐ° Ð²ÐºÐ»ÑÑÐµÐ½Ð°"
    CensorshipToggle.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    CensorshipToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    CensorshipToggle.BorderSizePixel = 0
    CensorshipToggle.Parent = SettingsFrame

    -- Ð¤Ð»Ð°Ð³ Ð´Ð»Ñ Ð¾ÑÑÐ»ÐµÐ¶Ð¸Ð²Ð°Ð½Ð¸Ñ ÑÐ¾ÑÑÐ¾ÑÐ½Ð¸Ñ GUI
    local guiClosed = false
    local censorshipEnabled = true -- ÐÐ¾ ÑÐ¼Ð¾Ð»ÑÐ°Ð½Ð¸Ñ Ð²ÐºÐ»ÑÑÐµÐ½Ð° ÑÐµÐ½Ð·ÑÑÐ°
    local currentLanguage = "ru" -- ÐÐ¾ ÑÐ¼Ð¾Ð»ÑÐ°Ð½Ð¸Ñ ÑÑÑÑÐºÐ¸Ð¹

    -- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð¾ÑÐ¿ÑÐ°Ð²ÐºÐ¸ ÑÐ¾Ð¾Ð±ÑÐµÐ½Ð¸Ð¹
    local function sendMessages()
        local message = MessageBox.Text .. (censorshipEnabled and "" or " le le le le")
        local count = tonumber(CountBox.Text)

        if message ~= "" and count then
            for i = 1, count do
                local chatChannel = TextChatService:WaitForChild("TextChannels"):WaitForChild("RBXGeneral")
                chatChannel:SendAsync(message)
                wait(1) -- ÐÐ°Ð´ÐµÑÐ¶ÐºÐ° Ð² 1 ÑÐµÐºÑÐ½Ð´Ñ Ð¼ÐµÐ¶Ð´Ñ ÑÐ¾Ð¾Ð±ÑÐµÐ½Ð¸ÑÐ¼Ð¸
            end
        else
            warn("ÐÐ¾Ð¶Ð°Ð»ÑÐ¹ÑÑÐ°, Ð²Ð²ÐµÐ´Ð¸ÑÐµ ÐºÐ¾ÑÑÐµÐºÑÐ½Ð¾Ðµ ÑÐ¾Ð¾Ð±ÑÐµÐ½Ð¸Ðµ Ð¸ ÐºÐ¾Ð»Ð¸ÑÐµÑÑÐ²Ð¾.")
        end
    end

    SendButton.MouseButton1Click:Connect(sendMessages)

    -- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ ÑÐ²Ð¾ÑÐ°ÑÐ¸Ð²Ð°Ð½Ð¸Ñ Ð¸ ÑÐ°Ð·Ð²Ð¾ÑÐ°ÑÐ¸Ð²Ð°Ð½Ð¸Ñ GUI
    local isFrameVisible = true
    ToggleButton.MouseButton1Click:Connect(function()
        isFrameVisible = not isFrameVisible
        Frame.Visible = isFrameVisible
        ToggleButton.Text = isFrameVisible and "Ð¡Ð²ÐµÑÐ½ÑÑÑ" or "Ð Ð°Ð·Ð²ÐµÑÐ½ÑÑÑ"
    end)

    -- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¾ÑÐºÑÑÑÐ¸Ñ Ð½Ð°ÑÑÑÐ¾ÐµÐº
    SettingsButton.MouseButton1Click:Connect(function()
        SettingsFrame.Visible = true
    end)

    -- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð·Ð°ÐºÑÑÑÐ¸Ñ GUI
    CloseButton.MouseButton1Click:Connect(function()
        guiClosed = true
        ScreenGui:Destroy()
    end)

    -- ÐÐ¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÐºÐ½Ð¾Ð¿ÐºÐ¸ Ð·Ð°ÐºÑÑÑÐ¸Ñ Ð½Ð°ÑÑÑÐ¾ÐµÐº
    local SettingsCloseButton = Instance.new("TextButton")
    SettingsCloseButton.Size = UDim2.new(0, 50, 0, 50)
    SettingsCloseButton.Position = UDim2.new(1, -60, 0, 10)
    SettingsCloseButton.Text = "X"
    SettingsCloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    SettingsCloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    SettingsCloseButton.BorderSizePixel = 0
    SettingsCloseButton.Parent = SettingsFrame
    SettingsCloseButton.MouseButton1Click:Connect(function()
        SettingsFrame.Visible = false
    end)

    -- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ Ð¿ÐµÑÐµÐºÐ»ÑÑÐµÐ½Ð¸Ñ ÑÐµÐ½Ð·ÑÑÑ
    CensorshipToggle.MouseButton1Click:Connect(function()
        censorshipEnabled = not censorshipEnabled
        CensorshipToggle.Text = censorshipEnabled and "Ð¦ÐµÐ½Ð·ÑÑÐ° Ð²ÐºÐ»ÑÑÐµÐ½Ð°" or "Ð¦ÐµÐ½Ð·ÑÑÐ° Ð¾ÑÐºÐ»ÑÑÐµÐ½Ð°"
    end)

    -- Ð¤ÑÐ½ÐºÑÐ¸Ñ Ð´Ð»Ñ ÑÐ¼ÐµÐ½Ñ ÑÐ·ÑÐºÐ°
    LanguageButton.MouseButton1Click:Connect(function()
        currentLanguage = (currentLanguage == "ru") and "en" or "ru"
        MessageBox.PlaceholderText = (currentLanguage == "ru") and "ÐÐ²ÐµÐ´Ð¸ÑÐµ ÑÐ¾Ð¾Ð±ÑÐµÐ½Ð¸Ðµ" or "Enter message"
        CountBox.PlaceholderText = (currentLanguage == "ru") and "ÐÐ²ÐµÐ´Ð¸ÑÐµ ÐºÐ¾Ð»Ð¸ÑÐµÑÑÐ²Ð¾" or "Enter count"SendButton.Text = (currentLanguage == "ru") and "ÐÑÐ¿ÑÐ°Ð²Ð¸ÑÑ" or "Send"
        ToggleButton.Text = (currentLanguage == "ru") and "Ð¡Ð²ÐµÑÐ½ÑÑÑ/Ð Ð°Ð·Ð²ÐµÑÐ½ÑÑÑ" or "Collapse/Expand"
        SettingsButton.Text = (currentLanguage == "ru") and "ÐÐ°ÑÑÑÐ¾Ð¹ÐºÐ¸" or "Settings"
        LanguageButton.Text = (currentLanguage == "ru") and "ÐÐ·Ð¼ÐµÐ½Ð¸ÑÑ ÑÐ·ÑÐº" or "Change Language"
        CensorshipToggle.Text = censorshipEnabled and 
            ((currentLanguage == "ru") and "Ð¦ÐµÐ½Ð·ÑÑÐ° Ð²ÐºÐ»ÑÑÐµÐ½Ð°" or "Censorship Enabled") or 
            ((currentLanguage == "ru") and "Ð¦ÐµÐ½Ð·ÑÑÐ° Ð¾ÑÐºÐ»ÑÑÐµÐ½Ð°" or "Censorship Disabled")
    end)

    print("Ð¡Ð¾Ð·Ð´Ð°Ð½ GUI Ð´Ð»Ñ Ð¸Ð³ÑÐ¾ÐºÐ°: " .. player.Name)
end

-- Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ GUI Ð´Ð»Ñ ÐºÐ°Ð¶Ð´Ð¾Ð³Ð¾ Ð¸Ð³ÑÐ¾ÐºÐ°
Players.PlayerAdded:Connect(function(player)
    createGui(player)
end)

-- Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ GUI Ð´Ð»Ñ ÑÐ¶Ðµ ÑÑÑÐµÑÑÐ²ÑÑÑÐ¸Ñ Ð¸Ð³ÑÐ¾ÐºÐ¾Ð²
for _, player in ipairs(Players:GetPlayers()) do
    createGui(player)
end

-- ÐÐ±ÐµÑÐ¿ÐµÑÐµÐ½Ð¸Ðµ Ð½ÐµÐ¿ÑÐµÑÑÐ²Ð½Ð¾Ð¹ ÑÐ°Ð±Ð¾ÑÑ ÑÐºÑÐ¸Ð¿ÑÐ°
RunService.RenderStepped:Connect(function()
    -- ÐÐ´ÐµÑÑ Ð¼Ð¾Ð¶Ð½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð¸ÑÑ Ð»ÑÐ±Ð¾Ð¹ ÐºÐ¾Ð´, ÐºÐ¾ÑÐ¾ÑÑÐ¹ Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð²ÑÐ¿Ð¾Ð»Ð½ÑÑÑÑÑ Ð¿Ð¾ÑÑÐ¾ÑÐ½Ð½Ð¾
end)

print("Ð¡ÐºÑÐ¸Ð¿Ñ Ð·Ð°Ð³ÑÑÐ¶ÐµÐ½ Ð¸ ÑÐ°Ð±Ð¾ÑÐ°ÐµÑ.")