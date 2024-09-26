local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local ScrollingFrame2 = Instance.new("ScrollingFrame")
local TextLabel2 = Instance.new("TextLabel")
local Buttons = {}
local ScrollButtons = {}

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0.8, 0, 0.8, 0)
Frame.Position = UDim2.new(0.1, 0, 0.1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame.Draggable = true
Frame.Active = true

TextLabel.Parent = Frame
TextLabel.Size = UDim2.new(1, 0, 0.1, 0)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
TextLabel.Text = "RozxinoGui v120 Private/Backdoor/Op Edition (InDev)"

ScrollingFrame.Parent = Frame
ScrollingFrame.Size = UDim2.new(1, 0, 0.8, 0)
ScrollingFrame.Position = UDim2.new(0, 0, 0.1, 0)
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
ScrollingFrame.ScrollBarThickness = 10

local scrollButtonTexts = {
    "ScrollBtn A", "ScrollBtn B", "ScrollBtn C", "ScrollBtn D", "ScrollBtn E",
    "ScrollBtn F", "ScrollBtn G", "ScrollBtn H", "ScrollBtn I", "ScrollBtn J",
    "ScrollBtn K", "ScrollBtn L", "ScrollBtn M", "ScrollBtn N", "ScrollBtn O",
    "ScrollBtn P", "ScrollBtn Q", "ScrollBtn R", "ScrollBtn S", "ScrollBtn T"
}

local scrollButtonFunctions = {
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
       
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
}

for i = 1, 20 do
    local Button = Instance.new("TextButton")
    Button.Parent = ScrollingFrame
    Button.Size = UDim2.new(0.2, 0, 0.1, 0)
    Button.Position = UDim2.new((i-1) % 5 * 0.2, 0, math.floor((i-1) / 5) * 0.1, 0)
    Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Button.Text = scrollButtonTexts[i]
    Button.MouseButton1Click:Connect(scrollButtonFunctions[i])
    table.insert(ScrollButtons, Button)
end

TextLabel2.Parent = ScrollingFrame
TextLabel2.Size = UDim2.new(1, 0, 0.1, 0)
TextLabel2.Position = UDim2.new(0, 0, 0.4, 0)
TextLabel2.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
TextLabel2.TextColor3 = Color3.fromRGB(0, 255, 255)
TextLabel2.Text = "TextLabel2"

local buttonTexts = {
    "EXPLOITS", "Script-Hub", "Others", "Empty"
}

local buttonFunctions = {
    function() 
        ScrollingFrame.Visible = true
        ScrollingFrame2.Visible = false
        ScrollingFrame3.Visible = false
    end,
    function() 
        ScrollingFrame.Visible = false
        ScrollingFrame2.Visible = true
        ScrollingFrame3.Visible = false
    end,
    function() 
       ScrollingFrame.Visible = false
        ScrollingFrame2.Visible = false
        ScrollingFrame3.Visible = true
    end,
    function() 
       notif("read the friking text,it littirily said it's fricking empty bruh.")
    end,
}

for i = 1, 4 do
    local Button = Instance.new("TextButton")
    Button.Parent = Frame
    Button.Size = UDim2.new(0.2, 0, 0.1, 0)
    Button.Position = UDim2.new((i-1) * 0.2, 0, 0.9, 0)
    Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Button.Text = buttonTexts[i]
    Button.MouseButton1Click:Connect(buttonFunctions[i])
    table.insert(Buttons, Button)
end

local button2Texts = {
    "Script1", "script2", "script3", "script4", "script5"
}

local button2Functions = {
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
}

for i = 1, 5 do
    local Button = Instance.new("TextButton")
    Button.Parent = ScrollingFrame 
    Button.Size = UDim2.new(0.2, 0, 0.1, 0)
    Button.Position = UDim2.new((i-1) * 0.2, 0, 0.5, 0)
    Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Button.Text = button2Texts[i]
    Button.MouseButton1Click:Connect(button2Functions[i])
    table.insert(Buttons, Button)
end

ScrollingFrame2.Parent = Frame
ScrollingFrame2.Size = UDim2.new(1, 0, 0.8, 0)
ScrollingFrame2.Position = UDim2.new(0, 0, 0.1, 0)
ScrollingFrame2.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
ScrollingFrame2.CanvasSize = UDim2.new(0, 0, 2, 0)
ScrollingFrame2.ScrollBarThickness = 10
ScrollingFrame2.Visible = false

local scrollButtonTexts2 = {
    "ScrollBtn A", "ScrollBtn B", "ScrollBtn C", "ScrollBtn D", "ScrollBtn E",
    "ScrollBtn F", "ScrollBtn G", "ScrollBtn H", "ScrollBtn I", "ScrollBtn J",
    "ScrollBtn K", "ScrollBtn L", "ScrollBtn M", "ScrollBtn N", "ScrollBtn O",
    "ScrollBtn P", "ScrollBtn Q", "ScrollBtn R", "ScrollBtn S", "ScrollBtn T"
}

local scrollButtonFunctions2 = {
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
       
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
}

for i = 1, 20 do
    local Button = Instance.new("TextButton")
    Button.Parent = ScrollingFrame2
    Button.Size = UDim2.new(0.2, 0, 0.1, 0)
    Button.Position = UDim2.new((i-1) % 5 * 0.2, 0, math.floor((i-1) / 5) * 0.1, 0)
    Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Button.Text = scrollButtonTexts[i]
    Button.MouseButton1Click:Connect(scrollButtonFunctions[i])
    table.insert(ScrollButtons, Button)
end

local button3Texts = {
    "Script1", "script2", "script3", "script4", "script5"
}

local button3Functions = {
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
}

for i = 1, 5 do
    local Button = Instance.new("TextButton")
    Button.Parent = ScrollingFrame 
    Button.Size = UDim2.new(0.2, 0, 0.1, 0)
    Button.Position = UDim2.new((i-1) * 0.2, 0, 0.5, 0)
    Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Button.Text = button2Texts[i]
    Button.MouseButton1Click:Connect(button2Functions[i])
    table.insert(Buttons, Button)
end

local ScrollingFrame3 = Instance.new("ScrollingFrame")
ScrollingFrame3.Parent = Frame
ScrollingFrame3.Size = UDim2.new(1, 0, 0.8, 0)
ScrollingFrame3.Position = UDim2.new(0, 0, 0.1, 0)
ScrollingFrame3.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 2, 0)
ScrollingFrame3.ScrollBarThickness = 10
ScrollingFrame3.Visible = false

local scrollButtonTexts3 = {
    "ScrollBtn A", "ScrollBtn B", "ScrollBtn C", "ScrollBtn D", "ScrollBtn E",
    "ScrollBtn F", "ScrollBtn G", "ScrollBtn H", "ScrollBtn I", "ScrollBtn J",
    "ScrollBtn K", "ScrollBtn L", "ScrollBtn M", "ScrollBtn N", "ScrollBtn O",
    "ScrollBtn P", "ScrollBtn Q", "ScrollBtn R", "ScrollBtn S", "ScrollBtn T"
}

local scrollButtonFunctions3 = {
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
       
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
}

for i = 1, 20 do
    local Button = Instance.new("TextButton")
    Button.Parent = ScrollingFrame2
    Button.Size = UDim2.new(0.2, 0, 0.1, 0)
    Button.Position = UDim2.new((i-1) % 5 * 0.2, 0, math.floor((i-1) / 5) * 0.1, 0)
    Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Button.Text = scrollButtonTexts[i]
    Button.MouseButton1Click:Connect(scrollButtonFunctions[i])
    table.insert(ScrollButtons, Button)
end

local button4Texts = {
    "Script1", "script2", "script3", "script4", "script5"
}

local button4Functions = {
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
    function() 
        
    end,
}

for i = 1, 5 do
    local Button = Instance.new("TextButton")
    Button.Parent = ScrollingFrame 
    Button.Size = UDim2.new(0.2, 0, 0.1, 0)
    Button.Position = UDim2.new((i-1) * 0.2, 0, 0.5, 0)
    Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Button.Text = button2Texts[i]
    Button.MouseButton1Click:Connect(button2Functions[i])
    table.insert(Buttons, Button)
end