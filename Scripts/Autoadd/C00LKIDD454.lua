local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local Button3 = Instance.new("TextButton")

-- ConfiguraÃ§Ãµes da interface
ScreenGui.Parent = game.CoreGui
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Size = UDim2.new(0, 300, 0, 400)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)

TitleLabel.Parent = MainFrame
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TitleLabel.Size = UDim2.new(1, 0, 0, 50)
TitleLabel.Text = "c00lkidd Script Hub"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextScaled = true
TitleLabel.TextAlignment = Enum.TextAlignment.Center

-- BotÃµes
Button1.Parent = MainFrame
Button1.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Button1.Position = UDim2.new(0, 10, 0, 60)
Button1.Size = UDim2.new(0, 280, 0, 50)
Button1.Text = "Flood"
Button1.MouseButton1Click:Connect(function()
    -- FunÃ§Ã£o do flood (substitua pelo seu cÃ³digo)
    print("Flood acionado!")
end)

Button2.Parent = MainFrame
Button2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Button2.Position = UDim2.new(0, 10, 0, 120)
Button2.Size = UDim2.new(0, 280, 0, 50)
Button2.Text = "Disco Fog"
Button2.MouseButton1Click:Connect(function()
    -- FunÃ§Ã£o do Disco Fog (substitua pelo seu cÃ³digo)
    print("Disco Fog acionado!")
end)

Button3.Parent = MainFrame
Button3.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Button3.Position = UDim2.new(0, 10, 0, 180)
Button3.Size = UDim2.new(0, 280, 0, 50)
Button3.Text = "BTools"
Button3.MouseButton1Click:Connect(function()
    -- FunÃ§Ã£o BTools (substitua pelo seu cÃ³digo)
    print("BTools ativado!")
end)

-- Finaliza a configuraÃ§Ã£o da GUI
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Visible = true