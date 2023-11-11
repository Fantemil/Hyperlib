-- Made BY Kaan Playground

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 20)
title.Position = UDim2.new(0, 0, 0, -20)
title.Text = "Prakstor V2 Key System Script"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.Parent = frame

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

title.InputBegan:Connect(function(input)
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

title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

title.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
        dragInput = nil
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

local KeySystem = Instance.new("TextBox")
KeySystem.Size = UDim2.new(1, 0, 0.5, 0)
KeySystem.Position = UDim2.new(0, 0, 0, 0)
KeySystem.Text = "Enter the Key"
KeySystem.TextColor3 = Color3.new(0, 0, 0)
KeySystem.BackgroundTransparency = 0.5
KeySystem.BackgroundColor3 = Color3.new(1, 1, 1)
KeySystem.TextWrapped = true
KeySystem.Parent = frame

local SubmitButton = Instance.new("TextButton")
SubmitButton.Size = UDim2.new(0.5, 0, 0.5, 0)
SubmitButton.Position = UDim2.new(0, 0, 0.5, 0)
SubmitButton.Text = "Submit"
SubmitButton.Parent = frame

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Position = UDim2.new(1, -20, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.BackgroundColor3 = Color3.new(1, 0, 0)
CloseButton.Parent = frame

CloseButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local GetKeyButton = Instance.new("TextButton")
GetKeyButton.Size = UDim2.new(0.5, 0, 0.5, 0)
GetKeyButton.Position = UDim2.new(0.5, 0, 0.5, 0)
GetKeyButton.Text = "Get Key"
GetKeyButton.Parent = frame
--------------------------------------------------------------------------
SubmitButton.MouseButton1Click:Connect(function()
    local KeySystem = KeySystem.Text
    if KeySystem == "lsoejenxp29273nc" then   
screenGui:Destroy()

-- Create a ScreenGui to hold the GUI elements
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame for the draggable GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200 * 3, 0, 100 * 3)
frame.Position = UDim2.new(0.5, -100 * 3, 0.5, -100 * 3) -- Adjusted position for better visibility
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Active = true
frame.Draggable = true
frame.Parent = gui

-- Create a TextLabel for the name
local nameLabel = Instance.new("TextLabel")
nameLabel.Size = UDim2.new(1, 0, 0.2, 0)
nameLabel.Position = UDim2.new(0, 0, 0, 0)
nameLabel.Text = "Prakstor V2"
nameLabel.TextSize = 24
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.Parent = frame

-- Create a TextBox for the script input
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, 0, 0.6, 0)
textBox.Position = UDim2.new(0, 0, 0.2, 0)
textBox.Parent = frame

-- Create an Execute button
local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(1, 0, 0.2, 0)
executeButton.Position = UDim2.new(0, 0, 0.8, 0)
executeButton.BackgroundColor3 = Color3.new(0, 1, 0)
executeButton.Text = "Execute"
executeButton.Parent = frame

-- Create a function to execute the script
local function executeScript()
    local scriptText = textBox.Text
    
    -- Create a confirmation dialog
    local confirmationDialog = Instance.new("ScreenGui")
    confirmationDialog.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local dialogFrame = Instance.new("Frame")
    dialogFrame.Size = UDim2.new(0, 200 * 3, 0, 100 * 3)
    dialogFrame.Position = UDim2.new(0.5, -100 * 3, 0.5, -50 * 3)
    dialogFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    dialogFrame.BackgroundTransparency = 0.5
    dialogFrame.Parent = confirmationDialog
    
    local executeOption = Instance.new("TextButton")
    executeOption.Size = UDim2.new(0.4, 0, 0.2, 0)
    executeOption.Position = UDim2.new(0.1, 0, 0.7, 0)
    executeOption.BackgroundColor3 = Color3.new(0, 1, 0)
    executeOption.Text = "Execute"
    executeOption.Parent = dialogFrame
    
    local cancelOption = Instance.new("TextButton")
    cancelOption.Size = UDim2.new(0.4, 0, 0.2, 0)
    cancelOption.Position = UDim2.new(0.5, 0, 0.7, 0)
    cancelOption.BackgroundColor3 = Color3.new(1, 0, 0)
    cancelOption.Text = "Cancel"
    cancelOption.Parent = dialogFrame
    
    executeOption.MouseButton1Click:Connect(function()
        confirmationDialog:Destroy()
        
        local success, result = pcall(function()
            loadstring(scriptText)()
        end)
        
        if success then
            print("Script executed successfully!")
        else
            warn("Script execution error: " .. result)
        end
    end)
    
    cancelOption.MouseButton1Click:Connect(function()
        confirmationDialog:Destroy()
    end)
end

executeButton.MouseButton1Click:Connect(executeScript)

  
  end
end)

GetKeyButton.MouseButton1Click:Connect(function()
 setclipboard("https://pastebin.com/TutBdPHt") 
end) 