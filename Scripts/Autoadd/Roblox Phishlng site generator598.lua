-- https://www.roblox.com.ug/generator/lioke/create


local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CopyButton = Instance.new("TextButton")
local TitleLabel = Instance.new("TextLabel")
local FooterLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0.3, 0, 0.3, 0)
Frame.Position = UDim2.new(0.35, 0, 0.35, 0)
Frame.BackgroundColor3 = Color3.new(0, 0, 0)

TitleLabel.Parent = Frame
TitleLabel.Size = UDim2.new(1, 0, 0.2, 0)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TitleLabel.Text = "Click to get generator"
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.Font = Enum.Font.GothamBlack 
TitleLabel.TextSize = 24

CopyButton.Parent = Frame
CopyButton.Size = UDim2.new(0.8, 0, 0.2, 0)
CopyButton.Position = UDim2.new(0.1, 0, 0.35, 0)
CopyButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
CopyButton.Text = "Copy link!"
CopyButton.TextColor3 = Color3.new(1, 1, 1)
CopyButton.Font = Enum.Font.GothamBlack
CopyButton.TextSize = 18
CopyButton.BorderSizePixel = 0

FooterLabel.Parent = Frame
FooterLabel.Size = UDim2.new(1, 0, 0.2, 0)
FooterLabel.Position = UDim2.new(0, 0, 0.7, 0)
FooterLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FooterLabel.Text = "Link to generator"
FooterLabel.TextColor3 = Color3.new(1, 1, 1)
FooterLabel.Font = Enum.Font.Gotham
FooterLabel.TextSize = 18

CopyButton.MouseButton1Click:Connect(function()
    setclipboard("https://www.roblox.com.ug/generator/lioke/create")
    
    CopyButton.Text = "Success!"
    CopyButton.BackgroundColor3 = Color3.new(0, 0.8, 0)
    
    wait(2)
    CopyButton.Text = "Copy link!"
    CopyButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
end)
