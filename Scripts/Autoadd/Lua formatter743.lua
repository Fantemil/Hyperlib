local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local InputBox = Instance.new("TextBox")
local FormatButton = Instance.new("TextButton")
local ExecuteButton = Instance.new("TextButton")
local ToggleButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local CopyButton = Instance.new("TextButton")
local RemoveAllButton = Instance.new("TextButton")
local isOpen = true

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MainFrame.Size = UDim2.new(0, 450, 0, 300)
MainFrame.Position = UDim2.new(0.5, -225, 0.5, -150)
MainFrame.Visible = true
MainFrame.Active = true
MainFrame.Draggable = true

TitleLabel.Parent = MainFrame
TitleLabel.Text = "Lua Formatter & Executor"
TitleLabel.Size = UDim2.new(1, 0, 0, 40)
TitleLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TitleLabel.TextColor3 = Color3.new(1, 1, 1)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.TextSize = 20

InputBox.Parent = MainFrame
InputBox.Size = UDim2.new(1, -20, 0, 150)
InputBox.Position = UDim2.new(0, 10, 0, 50)
InputBox.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
InputBox.TextColor3 = Color3.new(1, 1, 1)
InputBox.ClearTextOnFocus = false
InputBox.Font = Enum.Font.Code
InputBox.TextSize = 18
InputBox.TextWrapped = true
InputBox.TextYAlignment = Enum.TextYAlignment.Top
InputBox.MultiLine = true

FormatButton.Parent = MainFrame
FormatButton.Size = UDim2.new(0.45, -10, 0, 30)
FormatButton.Position = UDim2.new(0, 10, 0.7, 10)
FormatButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
FormatButton.Text = "Format"
FormatButton.TextColor3 = Color3.new(1, 1, 1)
FormatButton.Font = Enum.Font.SourceSans
FormatButton.TextSize = 18

ExecuteButton.Parent = MainFrame
ExecuteButton.Size = UDim2.new(0.45, -10, 0, 30)
ExecuteButton.Position = UDim2.new(0.45, 10, 0.7, 10)
ExecuteButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
ExecuteButton.Text = "Execute"
ExecuteButton.TextColor3 = Color3.new(1, 1, 1)
ExecuteButton.Font = Enum.Font.SourceSans
ExecuteButton.TextSize = 18

CopyButton.Parent = MainFrame
CopyButton.Size = UDim2.new(0.45, -10, 0, 30)
CopyButton.Position = UDim2.new(0, 10, 0.85, 10)
CopyButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
CopyButton.Text = "Copy"
CopyButton.TextColor3 = Color3.new(1, 1, 1)
CopyButton.Font = Enum.Font.SourceSans
CopyButton.TextSize = 18

RemoveAllButton.Parent = MainFrame
RemoveAllButton.Size = UDim2.new(0.45, -10, 0, 30)
RemoveAllButton.Position = UDim2.new(0.45, 10, 0.85, 10)
RemoveAllButton.BackgroundColor3 = Color3.new(0.8, 0.1, 0.1)
RemoveAllButton.Text = "Remove All"
RemoveAllButton.TextColor3 = Color3.new(1, 1, 1)
RemoveAllButton.Font = Enum.Font.SourceSans
RemoveAllButton.TextSize = 18

CloseButton.Parent = MainFrame
CloseButton.Size = UDim2.new(0.15, 0, 0, 25)
CloseButton.Position = UDim2.new(0.85, 0, 0, 0)
CloseButton.BackgroundColor3 = Color3.new(0.6, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 20

ToggleButton.Parent = ScreenGui
ToggleButton.Size = UDim2.new(0, 100, 0, 40)
ToggleButton.Position = UDim2.new(0.5, -50, 0.1, 0)
ToggleButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
ToggleButton.Text = "Open/Close"
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.TextSize = 18

local function formatLuaCode(code)
    local indentLevel = 0
    local formattedCode = ""
    local indentation = "    "
    for line in code:gmatch("[^\r\n]+") do
        line = line:gsub("^%s+", ""):gsub("%s+$", "")
        if line:find("end") or line:find("}") then
            indentLevel = indentLevel - 1
        end
        formattedCode = formattedCode .. string.rep(indentation, indentLevel) .. line .. "\n"
        if line:find("function") or line:find("do") or line:find("if") or line:find("then") or line:find("else") or line:find("for") or line:find("while") or line:find("{") then
            indentLevel = indentLevel + 1
        end
    end
    return formattedCode
end

FormatButton.MouseButton1Click:Connect(function()
    local code = InputBox.Text
    local formattedCode = formatLuaCode(code)
    InputBox.Text = formattedCode
end)

ExecuteButton.MouseButton1Click:Connect(function()
    local code = InputBox.Text
    local func = loadstring(code)
    if func then
        func()
    else
        warn("Invalid Lua Code!")
    end
end)

CopyButton.MouseButton1Click:Connect(function()
    setclipboard(InputBox.Text)
end)

RemoveAllButton.MouseButton1Click:Connect(function()
    InputBox.Text = ""
end)

CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

ToggleButton.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    MainFrame.Visible = isOpen
end)