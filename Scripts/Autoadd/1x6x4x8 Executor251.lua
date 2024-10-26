local gui = Instance.new("ScreenGui")
gui.Name = "ExecutorGUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 18
title.Text = "1x6x4x8's Executor"
title.Parent = frame

local executeSection = Instance.new("Frame")
executeSection.Size = UDim2.new(1, 0, 1, -30)
executeSection.Position = UDim2.new(0, 0, 0, 30)
executeSection.BackgroundColor3 = Color3.new(0, 0, 0)
executeSection.BackgroundTransparency = 0.5
executeSection.Parent = frame

local scriptTextBox = Instance.new("TextBox")
scriptTextBox.Size = UDim2.new(1, -20, 0, 30)
scriptTextBox.Position = UDim2.new(0, 10, 0, 10)
scriptTextBox.BackgroundColor3 = Color3.new(1, 1, 1)
scriptTextBox.TextColor3 = Color3.new(0, 0, 0)
scriptTextBox.Font = Enum.Font.SourceSans
scriptTextBox.TextSize = 14
scriptTextBox.PlaceholderText = "Enter Script"
scriptTextBox.Parent = executeSection

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.5, -15, 0, 30)
executeButton.Position = UDim2.new(0, 10, 0, 50)
executeButton.BackgroundColor3 = Color3.new(0, 0.5, 0)
executeButton.TextColor3 = Color3.new(1, 1, 1)
executeButton.Font = Enum.Font.SourceSansBold
executeButton.TextSize = 14
executeButton.Text = "Execute"
executeButton.Parent = executeSection

local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.5, -15, 0, 30)
clearButton.Position = UDim2.new(0.5, 5, 0, 50)
clearButton.BackgroundColor3 = Color3.new(0.5, 0, 0)
clearButton.TextColor3 = Color3.new(1, 1, 1)
clearButton.Font = Enum.Font.SourceSansBold
clearButton.TextSize = 14
clearButton.Text = "Clear"
clearButton.Parent = executeSection


local function executeScript()
    local scriptText = scriptTextBox.Text
    -- Execute the script here using the 'loadstring' function
    loadstring(scriptText)()
end


local function clearScript()
    scriptTextBox.Text = ""
end


executeButton.MouseButton1Click:Connect(executeScript)
clearButton.MouseButton1Click:Connect(clearScript)