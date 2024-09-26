local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.5, 0)
frame.Position = UDim2.new(0.35, 0, 0.25, 0)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderColor3 = Color3.fromRGB(0, 255, 0)
frame.Parent = screenGui
frame.Active = true
frame.Draggable = true

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.2, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.Text = "projectcmdbar v1"
textLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
textLabel.BorderColor3 = Color3.fromRGB(0, 255, 0)
textLabel.Parent = frame

-- Button 1

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.9, 0, 0.4,0, 0)
textBox.Position = UDim2.new(0.05, 0, 0.27, 0)
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.Text = ""
textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
textBox.BorderColor3 = Color3.fromRGB(0, 255, 0)
textBox.Parent = frame
textBox.ClearTextOnFocus = false


-- Bottom Button 1
local bottomButton1 = Instance.new("TextButton")
bottomButton1.Size = UDim2.new(0.45, 0, 0.1, 0)
bottomButton1.Position = UDim2.new(0.05, 0, 0.8, 0)
bottomButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
bottomButton1.Text = "Execute"
bottomButton1.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
bottomButton1.BorderColor3 = Color3.fromRGB(0, 255, 0)
bottomButton1.Parent = frame

-- Bottom Button 2
local bottomButton2 = Instance.new("TextButton")
bottomButton2.Size = UDim2.new(0.45, 0, 0.1, 0)
bottomButton2.Position = UDim2.new(0.5, 0, 0.8, 0)
bottomButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
bottomButton2.Text = "Clear"
bottomButton2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
bottomButton2.BorderColor3 = Color3.fromRGB(0, 255, 0)
bottomButton2.Parent = frame

-- FunÃ§Ã£o para limpar o conteÃºdo do TextBox
local function clr()
    textBox.Text = ""
end

-- FunÃ§Ã£o para executar o conteÃºdo do TextBox
local function exe()
    local args = {
    [1] = textBox.Text
}

game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(unpack(args))

end



bottomButton2.MouseButton1Down:Connect(clr)
bottomButton1.MouseButton1Down:Connect(exe)

-- // hello

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)