-- Function to make GUI draggable
local function makeDraggable(gui)
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end

-- Function to create GUI with message at the bottom
local function createGUIWithMessage()
    local gui = Instance.new("ScreenGui")
    gui.Name = "MyGUI"
    
    local frame = Instance.new("Frame", gui)
    frame.Size = UDim2.new(0.5, 0, 0.5, 0)
    frame.Position = UDim2.new(0.25, 0, 0.25, 0)
    frame.BackgroundColor3 = Color3.new(1, 1, 1)
    
    local textLabel = Instance.new("TextLabel", frame)
    textLabel.Size = UDim2.new(1, 0, 0.2, 0)
    textLabel.Text = "ChatGPT Executer"
    textLabel.TextSize = 20
    
    local textBox = Instance.new("TextBox", frame)
    textBox.Size = UDim2.new(0.8, 0, 0.6, 0)
    textBox.Position = UDim2.new(0.1, 0, 0.25, 0)
    textBox.TextWrapped = true
    textBox.TextScaled = true
    
    local executeButton = Instance.new("TextButton", frame)
    executeButton.Size = UDim2.new(0.4, 0, 0.1, 0)
    executeButton.Position = UDim2.new(0.05, 0, 0.85, 0)
    executeButton.Text = "Execute"
    executeButton.MouseButton1Click:Connect(function()
        local script = loadstring(textBox.Text)
        if script then
            script()
        end
    end)
    
    local clearButton = Instance.new("TextButton", frame)
    clearButton.Size = UDim2.new(0.4, 0, 0.1, 0)
    clearButton.Position = UDim2.new(0.55, 0, 0.85, 0)
    clearButton.Text = "Clear"
    clearButton.MouseButton1Click:Connect(function()
        textBox.Text = ""
    end)
    
    local messageLabel = Instance.new("TextLabel", frame)
    messageLabel.Size = UDim2.new(1, 0, 0.1, 0)
    messageLabel.Position = UDim2.new(0, 0, 0.9, 0)
    messageLabel.Text = "This is made by ChatGPT and not me"
    messageLabel.TextColor3 = Color3.new(0, 0, 0)
    messageLabel.BackgroundTransparency = 1
    messageLabel.Font = Enum.Font.SourceSans
    messageLabel.TextSize = 14
    
    gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    -- Make GUI draggable
    makeDraggable(frame)
end

-- Execute this function to create the GUI with the message
createGUIWithMessage()
