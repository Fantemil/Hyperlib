local CoreGui = game:GetService("CoreGui")
local ScreenGui = Instance.new("ScreenGui")
local Window = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local button1 = Instance.new("TextButton")
local button2 = Instance.new("TextButton")
local button3 = Instance.new("TextButton")

ScreenGui.Parent = CoreGui
ScreenGui.Name = "common scripthub"

Window.Name = "Window"
Window.Parent = ScreenGui
Window.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Window.BorderColor3 = Color3.fromRGB(102, 0, 0)
Window.BorderSizePixel = 3
Window.Position = UDim2.new(0.5, -125, 0.5, -125)
Window.Size = UDim2.new(0, 250, 0, 312.5)  
Window.BorderSizePixel = 2
Window.BorderColor3 = Color3.fromRGB(60, 60, 60)
Window.Active = true
Window.Draggable = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = Window
CloseButton.BackgroundColor3 = Color3.fromRGB(160, 0, 0)
CloseButton.Position = UDim2.new(1, -25, 0, 0)
CloseButton.Size = UDim2.new(0, 25, 0, 25)  
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local function styleButton(button)
    button.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
    button.Size = UDim2.new(0, 187.5, 0, 62.5)  
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Font = Enum.Font.SourceSansBold
    button.BorderSizePixel = 2
    button.BorderColor3 = Color3.fromRGB(100, 100, 100)
    button.TextScaled = true
end

styleButton(button1)
button1.Parent = Window
button1.Position = UDim2.new(0.5, -93.75, 0, 37.5)  
button1.Text = "Synapse"
button1.TextScaled = false
button1.TextSize = 17.5  
button1.MouseButton1Click:Connect(function()
    local scriptUrl = 'https://raw.githubusercontent.com/S33dedL0rdz/S33dedGui-v33-OP-Edition/main/%5BPrivate%5D%3ANo%20entry%3E%3A('
    loadstring(game:HttpGet(scriptUrl))()
end)

styleButton(button2)
button2.Parent = Window
button2.Position = UDim2.new(0.5, -93.75, 0, 112.5)
button2.Text = "Aimbot Gui"
button2.TextScaled = false
button2.TextSize = 17.5  
button2.MouseButton1Click:Connect(function()
    local scriptUrl = 'https://raw.githubusercontent.com/PABLOSleuth2/Scripts1/main/RobloxScripts/TEST/aimbot_v2.lua'
    loadstring(game:HttpGet(scriptUrl))()
end)

styleButton(button3)
button3.Parent = Window
button3.Position = UDim2.new(0.5, -93.75, 0, 187.5)  
button3.Text = "Fly Gui"
button3.TextScaled = false
button3.TextSize = 17.5  
button3.MouseButton1Click:Connect(function()
    local scriptUrl = 'https://raw.githubusercontent.com/Niviana1/Personal-exploit-/main/Mobilefly.lua'
    loadstring(game:HttpGet(scriptUrl))()
end)