local function sendNotification(msg, clipboardText)
    local s = Instance.new("ScreenGui")
    s.Parent = game.CoreGui

    local f = Instance.new("Frame")
    f.Size = UDim2.new(0, 300, 0, 60)
    f.Position = UDim2.new(0.5, -150, 0.5, -30)
    f.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    f.BorderSizePixel = 0
    f.Parent = s

    local t = Instance.new("TextLabel")
    t.Size = UDim2.new(1, 0, 1, 0)
    t.Text = msg
    t.TextColor3 = Color3.new(1, 1, 1)
    t.BackgroundTransparency = 1
    t.Font = Enum.Font.SourceSansBold
    t.TextScaled = true
    t.Parent = f

    setclipboard(clipboardText)

    wait(2)
    s:Destroy()
end

sendNotification("ð Join Discord (copied) Best Dodge Script)", "https://discord.com/invite/rTkPpqxz")
