-- Create a simple GUI with execute functionality
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "UnypseXExec"
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Create top squircle with "Unypse X" text
local topPart = Instance.new("Frame")
topPart.Size = UDim2.new(0.5, 0, 0.1, 0) -- Size of the top part
topPart.Position = UDim2.new(0.25, 0, 0, 0) -- Centered horizontally at the top
topPart.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
topPart.Parent = screenGui

local topPartCorner = Instance.new("UICorner")
topPartCorner.CornerRadius = UDim.new(0.1, 0) -- Smaller rounded corners
topPartCorner.Parent = topPart

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 1, 0) -- Full size of the topPart
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.GothamBold -- Updated to GothamBold
titleLabel.TextScaled = true
titleLabel.Parent = topPart

local richText = "<font color=\"rgb(255,165,0)\">U</font>nypse X"
titleLabel.Text = richText
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.RichText = true

-- Create bottom squircle with TextBox and buttons
local bottomPart = Instance.new("Frame")
bottomPart.Size = UDim2.new(0.5, 0, 0.6, 0) -- Size of the bottom part
bottomPart.Position = UDim2.new(0.25, 0, 0.2, 0) -- Centered
bottomPart.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
bottomPart.Parent = screenGui

local bottomPartCorner = Instance.new("UICorner")
bottomPartCorner.CornerRadius = UDim.new(0.1, 0) -- Smaller rounded corners
bottomPartCorner.Parent = bottomPart

local codeInput = Instance.new("TextBox")
codeInput.Size = UDim2.new(0.8, 0, 0.7, 0)
codeInput.Position = UDim2.new(0.1, 0, 0.1, 0)
codeInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
codeInput.TextColor3 = Color3.fromRGB(255, 255, 255)
codeInput.Text = "Thanks for using Unypse X! Unypse X was made by temokote <3"
codeInput.Font = Enum.Font.Code -- Updated to "Code" font
codeInput.TextSize = 18
codeInput.MultiLine = true
codeInput.ClearTextOnFocus = false
codeInput.Parent = bottomPart

local codeInputCorner = Instance.new("UICorner")
codeInputCorner.CornerRadius = UDim.new(0.1, 0) -- Smaller rounded corners
codeInputCorner.Parent = codeInput

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.3, 0, 0.1, 0)
executeButton.Position = UDim2.new(0.05, 0, 0.8, 0)
executeButton.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
executeButton.TextColor3 = Color3.fromRGB(0, 255, 0)
executeButton.Text = "Execute"
executeButton.Font = Enum.Font.Code -- Updated to "Code" font
executeButton.TextSize = 18
executeButton.Parent = bottomPart

local executeButtonCorner = Instance.new("UICorner")
executeButtonCorner.CornerRadius = UDim.new(0.1, 0) -- Smaller rounded corners
executeButtonCorner.Parent = executeButton

-- Clear button
local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.3, 0, 0.1, 0)
clearButton.Position = UDim2.new(0.4, 0, 0.8, 0)
clearButton.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
clearButton.TextColor3 = Color3.fromRGB(0, 255, 255)
clearButton.Text = "Clear"
clearButton.Font = Enum.Font.Code -- Updated to "Code" font
clearButton.TextSize = 18
clearButton.Parent = bottomPart

local clearButtonCorner = Instance.new("UICorner")
clearButtonCorner.CornerRadius = UDim.new(0.1, 0) -- Smaller rounded corners
clearButtonCorner.Parent = clearButton

-- Status label
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(0.6, 0, 0.1, 0)
statusLabel.Position = UDim2.new(0.75, 0, 0.8, 0)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statusLabel.Text = ""
statusLabel.Font = Enum.Font.Code -- Updated to "Code" font
statusLabel.TextScaled = true
statusLabel.Parent = bottomPart

-- Execute code function
local function executeCode()
    local code = codeInput.Text
    local success, result = pcall(function()
        loadstring(code)()
    end)
    
    if success then
        statusLabel.Text = "Executed!"
        statusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    else
        statusLabel.Text = "Error: " .. result
        statusLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end

    -- Fade out statusLabel after 1 second
    wait(1)
    for i = 1, 30 do
        statusLabel.TextTransparency = i / 30
        wait(0.1)
    end
    statusLabel.Text = ""
    statusLabel.TextTransparency = 0
end

executeButton.MouseButton1Click:Connect(executeCode)

-- Clear code function
local function clearCode()
    codeInput.Text = ""
    statusLabel.Text = ""
end

clearButton.MouseButton1Click:Connect(clearCode)

-- Minimize functionality
local isMinimized = false
local function toggleMinimize()
    isMinimized = not isMinimized
    bottomPart.Visible = not isMinimized
end

local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0.1, 0, 0.6, 0)
minimizeButton.Position = UDim2.new(0.8, 0, 0.2, 0)
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.Text = "-"
minimizeButton.Font = Enum.Font.Code -- Updated to "Code" font
minimizeButton.TextScaled = true
minimizeButton.Parent = topPart

local minimizeButtonCorner = Instance.new("UICorner")
minimizeButtonCorner.CornerRadius = UDim.new(0.2, 0) -- Adjust corner radius for a squircle
minimizeButtonCorner.Parent = minimizeButton

minimizeButton.MouseButton1Click:Connect(toggleMinimize)

-- Close functionality
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.1, 0, 0.6, 0)
closeButton.Position = UDim2.new(0.9, 0, 0.2, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Text = "X"
closeButton.Font = Enum.Font.Code -- Updated to "Code" font
closeButton.TextScaled = true
closeButton.Parent = topPart

local closeButtonCorner = Instance.new("UICorner")
closeButtonCorner.CornerRadius = UDim.new(0.2, 0) -- Adjust corner radius for a squircle
closeButtonCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)