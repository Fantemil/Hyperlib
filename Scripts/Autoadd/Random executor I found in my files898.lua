local HttpService = game:GetService("HttpService")

-- Check if the script executor GUI has already been created
if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScriptExecutorGui") then
    local scriptExecutorGui = Instance.new("ScreenGui")
    scriptExecutorGui.Name = "ScriptExecutorGui"
    scriptExecutorGui.Parent = game.Players.LocalPlayer.PlayerGui
    
    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.BackgroundTransparency = 0.5
    mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    mainFrame.Size = UDim2.new(0, 300, 0, 200)
    mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
    mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    mainFrame.BorderSizePixel = 0
    mainFrame.Active = true
    mainFrame.Draggable = true
    mainFrame.Parent = scriptExecutorGui
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = mainFrame
    
    local scriptTextBox = Instance.new("TextBox")
    scriptTextBox.Name = "ScriptTextBox"
    scriptTextBox.BackgroundTransparency = 0.8
    scriptTextBox.BackgroundColor3 = Color3.new(1, 1, 1)
    scriptTextBox.Size = UDim2.new(0.8, 0, 0.5, 0)
    scriptTextBox.Position = UDim2.new(0.1, 0, 0.1, 0)
    scriptTextBox.Font = Enum.Font.SourceSans
    scriptTextBox.TextSize = 18
    scriptTextBox.TextWrapped = true
    scriptTextBox.Text = "Type your script here..."
    scriptTextBox.Parent = mainFrame
    
    local executeButton = Instance.new("TextButton")
    executeButton.Name = "ExecuteButton"
    executeButton.BackgroundColor3 = Color3.new(0, 0.5, 1)
    executeButton.TextColor3 = Color3.new(1, 1, 1)
    executeButton.Size = UDim2.new(0.4, 0, 0.2, 0)
    executeButton.Position = UDim2.new(0.3, 0, 0.7, 0)
    executeButton.Font = Enum.Font.SourceSans
    executeButton.TextSize = 18
    executeButton.Text = "Execute"
    executeButton.Parent = mainFrame
    
    local function executeScript()
        local script = scriptTextBox.Text
        if script ~= "" then
            local success, error = pcall(function()
                loadstring(script)()
            end)
            
            if not success then
                print("Error executing script:", error)
            end
        end
    end
    
    executeButton.MouseButton1Click:Connect(executeScript)
end