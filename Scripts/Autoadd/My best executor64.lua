-- Variables
getgenv().Key = "Riceman90"

-- Key GUI
local KeyGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local SubmitButton = Instance.new("TextButton")

KeyGUI.Name = "KeyGUI"
KeyGUI.Parent = game.CoreGui
Frame.Parent = KeyGUI
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.Size = UDim2.new(0, 200, 0, 100)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
TextBox.Position = UDim2.new(0.5, -90, 0.5, -20)
TextBox.Size = UDim2.new(0, 180, 0, 40)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Enter Key"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 20

SubmitButton.Parent = Frame
SubmitButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
SubmitButton.Position = UDim2.new(0.5, -40, 0.5, 30)
SubmitButton.Size = UDim2.new(0, 80, 0, 30)
SubmitButton.Font = Enum.Font.SourceSans
SubmitButton.Text = "Submit"
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.TextSize = 20

SubmitButton.MouseButton1Click:Connect(function()
    if TextBox.Text == getgenv().Key then
        KeyGUI:Destroy()
        
        -- Executor GUI
        local ExecutorGUI = Instance.new("ScreenGui")
        local ExecFrame = Instance.new("Frame")
        local ExecScrollFrame = Instance.new("ScrollingFrame")
        local ExecTextBox = Instance.new("TextBox")
        local ExecButton = Instance.new("TextButton")
        local ClearButton = Instance.new("TextButton")
        local WalkSpeedButton = Instance.new("TextButton")

        ExecutorGUI.Name = "ExecutorGUI"
        ExecutorGUI.Parent = game.CoreGui
        ExecFrame.Parent = ExecutorGUI
        ExecFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        ExecFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
        ExecFrame.Size = UDim2.new(0, 300, 0, 200)
        ExecFrame.Active = true
        ExecFrame.Draggable = true

        ExecScrollFrame.Parent = ExecFrame
        ExecScrollFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        ExecScrollFrame.Position = UDim2.new(0.5, -140, 0.3, -20)
        ExecScrollFrame.Size = UDim2.new(0, 280, 0, 100)
        ExecScrollFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
        ExecScrollFrame.ScrollBarThickness = 10

        ExecTextBox.Parent = ExecScrollFrame
        ExecTextBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
        ExecTextBox.Size = UDim2.new(1, 0, 1, 0)
        ExecTextBox.ClearTextOnFocus = false
        ExecTextBox.Font = Enum.Font.SourceSans
        ExecTextBox.PlaceholderText = "enter script"
        ExecTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        ExecTextBox.TextSize = 18
        ExecTextBox.TextWrapped = true
        ExecTextBox.TextXAlignment = Enum.TextXAlignment.Left
        ExecTextBox.TextYAlignment = Enum.TextYAlignment.Top
        ExecTextBox.MultiLine = true

        ExecButton.Parent = ExecFrame
        ExecButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
        ExecButton.Position = UDim2.new(0.25, -40, 0.85, -15)
        ExecButton.Size = UDim2.new(0, 80, 0, 30)
        ExecButton.Font = Enum.Font.SourceSans
        ExecButton.Text = "Execute"
        ExecButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        ExecButton.TextSize = 20
        ExecButton.MouseButton1Click:Connect(function()
            local script = ExecTextBox.Text
            local func, err = loadstring(script)
            if func then
                func()
            else
                warn("Error: "..err)
            end
            ExecTextBox.Text = ""  -- Clear the TextBox after execution
        end)

        ClearButton.Parent = ExecFrame
        ClearButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
        ClearButton.Position = UDim2.new(0.5, -40, 0.85, -15)
        ClearButton.Size = UDim2.new(0, 80, 0, 30)
        ClearButton.Font = Enum.Font.SourceSans
        ClearButton.Text = "Clear"
        ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        ClearButton.TextSize = 20
        ClearButton.MouseButton1Click:Connect(function()
            ExecTextBox.Text = ""  -- Clear the TextBox manually
        end)

        WalkSpeedButton.Parent = ExecFrame
        WalkSpeedButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
        WalkSpeedButton.Position = UDim2.new(0.75, -40, 0.85, -15)
        WalkSpeedButton.Size = UDim2.new(0, 80, 0, 30)
        WalkSpeedButton.Font = Enum.Font.SourceSans
        WalkSpeedButton.Text = "WalkSpeed"
        WalkSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        WalkSpeedButton.TextSize = 20
        WalkSpeedButton.MouseButton1Click:Connect(function()
            ExecFrame.Visible = false
            local WalkSpeedFrame = Instance.new("Frame")
            local WalkSpeedTextBox = Instance.new("TextBox")
            local SetWalkSpeedButton = Instance.new("TextButton")
            local BackButton = Instance.new("TextButton")

            WalkSpeedFrame.Parent = ExecutorGUI
            WalkSpeedFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            WalkSpeedFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
            WalkSpeedFrame.Size = UDim2.new(0, 300, 0, 200)
            WalkSpeedFrame.Active = true
            WalkSpeedFrame.Draggable = true

            WalkSpeedTextBox.Parent = WalkSpeedFrame
            WalkSpeedTextBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
            WalkSpeedTextBox.Position = UDim2.new(0.5, -140, 0.3, -20)
            WalkSpeedTextBox.Size = UDim2.new(0, 280, 0, 40)
            WalkSpeedTextBox.Font = Enum.Font.SourceSans
            WalkSpeedTextBox.PlaceholderText = "Enter walk speed"
            WalkSpeedTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            WalkSpeedTextBox.TextSize = 18

            SetWalkSpeedButton.Parent = WalkSpeedFrame
            SetWalkSpeedButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
            SetWalkSpeedButton.Position = UDim2.new(0.5, -60, 0.6, 20)
            SetWalkSpeedButton.Size = UDim2.new(0, 120, 0, 30)
            SetWalkSpeedButton.Font = Enum.Font.SourceSans
            SetWalkSpeedButton.Text = "Set"
            SetWalkSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            SetWalkSpeedButton.TextSize = 20
            SetWalkSpeedButton.MouseButton1Click:Connect(function()
                local speed = tonumber(WalkSpeedTextBox.Text)
                if speed then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
                end
            end)

            BackButton.Parent = WalkSpeedFrame
            BackButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
            BackButton.Position = UDim2.new(0.5, -60, 0.8, 20)
            BackButton.Size = UDim2.new(0, 120, 0, 30)
            BackButton.Font = Enum.Font.SourceSans
            BackButton.Text = "Back"
            BackButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            BackButton.TextSize = 20
            BackButton.MouseButton1Click:Connect(function()
                WalkSpeedFrame:Destroy()
                ExecFrame.Visible = true
            end)
        end)
    else
        TextBox.Text = "Incorrect Key"
        wait(1)
        TextBox.Text = ""
    end
end)