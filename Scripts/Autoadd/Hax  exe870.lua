local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GuiToLua"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.Position = UDim2.new(0.25, 0, 0.25, 0)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = screenGui

local haxLabel = Instance.new("TextLabel")
haxLabel.Text = "Hax.EXE"
haxLabel.Size = UDim2.new(1, 0, 0.2, 0)
haxLabel.TextSize = 24
haxLabel.Parent = frame

local image = Instance.new("ImageLabel")
image.Size = UDim2.new(0.5, 0, 0.5, 0)
image.Position = UDim2.new(0.25, 0, 0.25, 0)
image.Image = "rbxassetid://17338515618" -- Replace with your image asset ID
image.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0.1, 0)
textBox.Position = UDim2.new(0.1, 0, 0.6, 0)
textBox.Parent = frame

local executeButton = Instance.new("TextButton")
executeButton.Text = "Execute"
executeButton.Size = UDim2.new(0.2, 0, 0.1, 0)
executeButton.Position = UDim2.new(0.4, 0, 0.8, 0)
executeButton.Parent = frame
executeButton.MouseButton1Click:Connect(function()
    local codeToExecute = textBox.Text
    local success, errorMsg = pcall(loadstring(codeToExecute))
    if not success then
        print("Error executing code:", errorMsg)
    end
end)

local clearButton = Instance.new("TextButton")
clearButton.Text = "Clear"
clearButton.Size = UDim2.new(0.2, 0, 0.1, 0)
clearButton.Position = UDim2.new(0.6, 0, 0.8, 0)
clearButton.Parent = frame
clearButton.MouseButton1Click:Connect(function()
    textBox.Text = ""
end)

local injectButton = Instance.new("TextButton")
injectButton.Text = "Inject"
injectButton.Size = UDim2.new(0.2, 0, 0.1, 0)
injectButton.Position = UDim2.new(0.8, 0, 0.8, 0)
injectButton.Parent = frame
injectButton.MouseButton1Click:Connect(function()
    local codeToInject = textBox.Text
    print("Injecting code:", codeToInject)
    -- Example: game:GetService("ReplicatedStorage").InjectedCode:FireServer(codeToInject)
end)

local function Dragify(Frame)
    local UIS = game:GetService("UserInputService")
    local dragToggle = nil
    local dragStart = nil
    local startPos = nil
    
    local function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
    end
    
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)
    
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UIS.InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            updateInput(input)
        end
    end)
end

Dragify(frame)
frame.Draggable = true
frame.Active = true
frame.Selectable = true