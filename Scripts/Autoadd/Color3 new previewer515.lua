local lp = game:GetService("Players").LocalPlayer
local sg = Instance.new("ScreenGui", lp:WaitForChild("PlayerGui"))

local f = Instance.new("Frame", sg)
f.Size = UDim2.new(0, 500, 0, 300)
f.Position = UDim2.new(0.5, -250, 0.5, -150)
f.BackgroundTransparency = 0.5
f.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
f.Draggable = true
f.Active = true
f.Visible = true
Instance.new("UICorner", f).CornerRadius = UDim.new(0, 15)

local colorPreview = Instance.new("Frame", f)
colorPreview.Size = UDim2.new(0, 120, 0, 120)
colorPreview.Position = UDim2.new(0, 20, 0.5, -60)
colorPreview.BackgroundColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", colorPreview).CornerRadius = UDim.new(1, 0)
colorPreview.BorderSizePixel = 0

local colorListFrame = Instance.new("ScrollingFrame", f)
colorListFrame.Size = UDim2.new(0, 300, 0, 250)
colorListFrame.Position = UDim2.new(1, -320, 0.5, -125)
colorListFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
colorListFrame.BorderSizePixel = 0
colorListFrame.ScrollBarThickness = 8
colorListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
Instance.new("UICorner", colorListFrame).CornerRadius = UDim.new(0, 10)

local borderFrame = Instance.new("Frame", f)
borderFrame.Size = UDim2.new(0, 300, 0, 250)
borderFrame.Position = UDim2.new(1, -320, 0.5, -125)
borderFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
borderFrame.BorderSizePixel = 0
Instance.new("UICorner", borderFrame).CornerRadius = UDim.new(0, 15)
borderFrame.ZIndex = colorListFrame.ZIndex - 1

colorListFrame.Parent = borderFrame

local colors = {
    {"Black", Color3.new(0, 0, 0)},
    {"White", Color3.new(1, 1, 1)},
    {"Red", Color3.new(1, 0, 0)},
    {"Green", Color3.new(0, 1, 0)},
    {"Blue", Color3.new(0, 0, 1)},
    {"Yellow", Color3.new(1, 1, 0)},
    {"Magenta", Color3.new(1, 0, 1)},
    {"Cyan", Color3.new(0, 1, 1)},
    {"Brown", Color3.new(0.5, 0.25, 0)},
    {"Gray", Color3.new(0.5, 0.5, 0.5)},
    {"Pink", Color3.new(1, 0.5, 0.5)},
    {"Orange", Color3.new(1, 0.5, 0)},
    {"Purple", Color3.new(0.5, 0, 1)},
    {"Gold", Color3.new(1, 0.84, 0)},
    {"Silver", Color3.new(0.92, 0.92, 0.92)},
    {"Copper", Color3.new(0.85, 0.45, 0.25)},
    {"Bronze", Color3.new(0.7, 0.45, 0.25)},
    {"Tan", Color3.new(0.82, 0.71, 0.55)},
    {"Beige", Color3.new(0.96, 0.96, 0.86)},
    {"Lime", Color3.new(0, 1, 0)},
    {"Teal", Color3.new(0, 0.5, 0.5)},
    {"Navy", Color3.new(0, 0, 0.5)},
    {"Forest", Color3.new(0, 0.5, 0)},
    {"Maroon", Color3.new(0.5, 0, 0)},
    {"Olive", Color3.new(0.5, 0.5, 0)},
    {"Crimson", Color3.new(0.85, 0, 0)},
    {"Turquoise", Color3.new(0, 0.8, 0.8)},
    {"Violet", Color3.new(0.7, 0, 0.7)},
    {"Indigo", Color3.new(0, 0, 0.7)},
    {"Lavender", Color3.new(0.7, 0.5, 0.8)},
    {"Peach", Color3.new(1, 0.84, 0.69)},
    {"Mint", Color3.new(0, 0.8, 0.8)},
    {"Sage", Color3.new(0.4, 0.5, 0.4)},
    {"Sand", Color3.new(0.96, 0.91, 0.76)},
    {"Coral", Color3.new(1, 0.5, 0.5)},
    {"Turmeric", Color3.new(1, 0.9, 0.3)},
    {"Garnet", Color3.new(0.5, 0, 0)},
    {"Periwinkle", Color3.new(0.5, 0.5, 1)},
    {"Russet", Color3.new(0.7, 0.3, 0.2)},
    {"Sienna", Color3.new(0.6, 0.3, 0.2)},
    {"Tangerine", Color3.new(1, 0.6, 0.2)},
    {"Mahogany", Color3.new(0.7, 0.2, 0.2)},
    {"Onyx", Color3.new(0, 0, 0.2)},
    {"Ivory", Color3.new(1, 1, 0.9)},
    {"Celadon", Color3.new(0.5, 0.8, 0.5)}
}

local totalColors = #colors
local buttonHeight = 40
local buttonSpacing = 10
local totalHeight = (buttonHeight + buttonSpacing) * totalColors - buttonSpacing
colorListFrame.CanvasSize = UDim2.new(0, 0, 0, totalHeight)

local function createColorButton(name, color, position)
    local button = Instance.new("TextButton", colorListFrame)
    button.Size = UDim2.new(0, 280, 0, buttonHeight)
    button.Position = UDim2.new(0, 10, 0, position)
    button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Text = string.format("%s - %g, %g, %g", name, color.R, color.G, color.B)
    button.TextSize = 20
    button.Font = Enum.Font.SourceSans
    button.TextXAlignment = Enum.TextXAlignment.Center
    button.TextYAlignment = Enum.TextYAlignment.Center
    button.TextStrokeTransparency = 0.8
    button.TextStrokeColor3 = Color3.new(0, 0, 0)

    button.MouseButton1Click:Connect(function()
        colorPreview.BackgroundColor3 = color
    end)
end

for i, colorData in ipairs(colors) do
    local name, color = colorData[1], colorData[2]
    createColorButton(name, color, (i - 1) * (buttonHeight + buttonSpacing))
end