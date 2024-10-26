local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
Frame.Position = UDim2.new(0.3, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 400, 0, 200)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
TextLabel.Size = UDim2.new(0, 400, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Fixalator{Script Fixer}"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.0

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
TextBox.Position = UDim2.new(0, 0, 0.25, 0)
TextBox.Size = UDim2.new(0, 400, 0, 100)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "Enter ur broken script here lol"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 24.0
TextBox.ClearTextOnFocus = false

Button1.Parent = Frame
Button1.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
Button1.Position = UDim2.new(0, 0, 0.75, 0)
Button1.Size = UDim2.new(0, 200, 0, 50)
Button1.Font = Enum.Font.SourceSans
Button1.Text = "Fix and Copy"
Button1.TextColor3 = Color3.fromRGB(255, 255, 255)
Button1.TextWrapped = true
Button1.TextSize = 24.0

Button2.Parent = Frame
Button2.BackgroundColor3 = Color3.fromRGB(89, 89, 89)
Button2.Position = UDim2.new(0.5, 0, 0.75, 0)
Button2.Size = UDim2.new(0, 200, 0, 50)
Button2.Font = Enum.Font.SourceSans
Button2.Text = "Clear"
Button2.TextColor3 = Color3.fromRGB(255, 255, 255)
Button2.TextSize = 24.0

-- Module Scripts:

local function fixScript(brokenScript)
    local fixedScript = brokenScript
    fixedScript = fixedScript:gsub("print%(\"(.-)\"", "print(\"%1\")")
    fixedScript = fixedScript:gsub("function%(.-%)", "function()")
    fixedScript = fixedScript:gsub("local%s+(%w+)%s*=", "local %1 =")
    return fixedScript
end

Button1.MouseButton1Click:Connect(function()
    local brokenScript = TextBox.Text
    local fixedScript = fixScript(brokenScript)
    TextBox.Text = fixedScript
    setclipboard(fixedScript)
end)

Button2.MouseButton1Click:Connect(function()
    TextBox.Text = ""
end)