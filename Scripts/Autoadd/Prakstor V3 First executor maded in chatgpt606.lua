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

-- Create a TextBox for mobile inside the Frame
local mobileTextBox = Instance.new("TextBox")
mobileTextBox.Size = UDim2.new(1, 0, 0, 234)
mobileTextBox.Position = UDim2.new(0, 0, 0.2, 0)
mobileTextBox.ClearTextOnFocus = false
mobileTextBox.Text = ""
mobileTextBox.TextSize = 18
mobileTextBox.TextWrapped = true
mobileTextBox.Parent = frame

-- Create an Execute button with a smaller size
local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.5, 0, 0.2, 0)
executeButton.Position = UDim2.new(0, 0, 0.8, 0)
executeButton.BackgroundColor3 = Color3.new(0, 1, 0)
executeButton.Text = "Execute"
executeButton.Parent = frame

-- Create a Clear button with a smaller size
local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.5, 0, 0.2, 0)
clearButton.Position = UDim2.new(0.5, 0, 0.8, 0)
clearButton.BackgroundColor3 = Color3.new(1, 0, 0)
clearButton.Text = "Clear"
clearButton.Parent = frame

-- Connect the Clear button to a function
clearButton.MouseButton1Click:Connect(function()
    -- Create a confirmation dialog for clearing the TextBox
    local clearConfirmationDialog = Instance.new("ScreenGui")
    clearConfirmationDialog.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local clearDialogFrame = Instance.new("Frame")
    clearDialogFrame.Size = UDim2.new(0, 200 * 3, 0, 100 * 3)
    clearDialogFrame.Position = UDim2.new(0.5, -100 * 3, 0.5, -50 * 3)
    clearDialogFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    clearDialogFrame.BackgroundTransparency = 0.5
    clearDialogFrame.Parent = clearConfirmationDialog

    local clearOption = Instance.new("TextButton")
    clearOption.Size = UDim2.new(0.4, 0, 0.2, 0)
    clearOption.Position = UDim2.new(0.1, 0, 0.7, 0)
    clearOption.BackgroundColor3 = Color3.new(0, 1, 0)
    clearOption.Text = "Clear"
    clearOption.Parent = clearDialogFrame

    local cancelOption = Instance.new("TextButton")
    cancelOption.Size = UDim2.new(0.4, 0, 0.2, 0)
    cancelOption.Position = UDim2.new(0.5, 0, 0.7, 0)
    cancelOption.BackgroundColor3 = Color3.new(1, 0, 0)
    cancelOption.Text = "Cancel"
    cancelOption.Parent = clearDialogFrame

    clearOption.MouseButton1Click:Connect(function()
        clearConfirmationDialog:Destroy()
        mobileTextBox.Text = "" -- Clear the TextBox content
    end)

    cancelOption.MouseButton1Click:Connect(function()
        clearConfirmationDialog:Destroy()
    end)
end)

-- Create a function to execute the script
local function executeScript()
    local scriptText = mobileTextBox.Text
    
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
