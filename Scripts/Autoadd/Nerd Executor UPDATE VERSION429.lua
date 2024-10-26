-- Script to load Infinite Yield
local infiniteYieldScript = [[
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
]]

-- Script to load Nameless Admin
local namelessAdminScript = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source"))();
]]

-- Script to load the Spectator script
local spectatorScript = [[
loadstring(game:HttpGet("https://raw.githubusercontent.com/Khanghfrg/Khanghfrg/main/Spectator"))()
]]

-- Create a ScreenGui to hold the GUI elements
local gui = Instance.new("ScreenGui")
gui.Name = "ScriptExecutorGui"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame to hold the execute button
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 250)  -- Increased width of the frame to fit the bar
frame.Position = UDim2.new(0.1, 0, 0.1, 0)  -- Adjusted position to center the frame
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Active = true
frame.Parent = gui

-- Create a Frame on the right side
local rightFrame = Instance.new("Frame")
rightFrame.Size = UDim2.new(0, 50, 1, 0)  -- Size of the right frame
rightFrame.Position = UDim2.new(1, -50, 0, 0)  -- Adjusted position to align with the right edge of the GUI
rightFrame.BackgroundColor3 = Color3.fromRGB(200, 200, 200)  -- Adjust color as needed
rightFrame.Parent = frame

-- Create a TextLabel for the title
local titleLabel = Instance.new("TextLabel")
titleLabel.Text = "ð¤Nerd Executorð¤"
titleLabel.TextSize = 16  -- Reduced text size
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, -50) -- Move up by 50 pixels
titleLabel.TextColor3 = Color3.fromRGB(0, 162, 255)
titleLabel.Parent = frame

-- Create an ImageButton to serve as the toggle button with an image
local toggleButton = Instance.new("ImageButton")
toggleButton.Image = "rbxassetid://9210647432"  -- Image ID provided
toggleButton.Size = UDim2.new(0, 40, 0, 40)  -- Reduced size of the toggle button
toggleButton.Position = UDim2.new(0, 5, 0, 35)
toggleButton.Parent = gui -- Parenting to the ScreenGui
toggleButton.BackgroundTransparency = 1  -- Make the background transparent
toggleButton.BorderSizePixel = 0  -- Remove the border
toggleButton.ZIndex = 2  -- Ensure it's on top of other elements
toggleButton.Draggable = true -- Make the toggle button draggable

-- Create a black line frame inside the toggle button
local lineFrame = Instance.new("Frame")
lineFrame.Size = UDim2.new(1, 0, 0, 1)  -- Set the size to create a horizontal line
lineFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- Black color for the line
lineFrame.Position = UDim2.new(0, 0, 1, 0)  -- Position the line at the bottom of the toggle button
lineFrame.Parent = toggleButton  -- Parenting to the toggle button

-- Create a TextBox for inputting scripts
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 180, 0, 40)  -- Reduced size of the text box
textBox.Position = UDim2.new(0, 10, 0, 70)
textBox.AnchorPoint = Vector2.new(0, 0) -- Anchor to top-left corner
textBox.PlaceholderText = "Enter script here"
textBox.Parent = frame -- Parenting to the Frame

-- Function to toggle the visibility of the GUI
local function toggleGUI()
    frame.Visible = not frame.Visible
end

toggleButton.MouseButton1Click:Connect(toggleGUI)

-- Create a Button to execute the script from the TextBox
local executeButton = Instance.new("TextButton")
executeButton.Text = "Execute Script"
executeButton.Size = UDim2.new(0, 180, 0, 30)  -- Reduced size of the execute button
executeButton.Position = UDim2.new(0, 10, 0, 120)
executeButton.Parent = frame

-- Function to execute the script from the TextBox
local function executeScript()
    local script = textBox.Text
    if script ~= "" then
        loadstring(script)()
    else
        print("No script entered")
    end
end

executeButton.MouseButton1Click:Connect(executeScript)

-- Create Button 1
local button1 = Instance.new("TextButton")
button1.Text = "Button 1"
button1.Size = UDim2.new(1, 0, 0, 30)
button1.Position = UDim2.new(0, 0, 0, 0)  -- Adjusted position for Button 1
button1.Parent = rightFrame

-- Create Button 2
local button2 = Instance.new("TextButton")
button2.Text = "Button 2"
button2.Size = UDim2.new(1, 0, 0, 30)
button2.Position = UDim2.new(0, 0, 0, 35)  -- Adjusted position for Button 2
button2.Parent = rightFrame

-- Create a Button to execute the INFINITE YIELD script
local executeInfiniteYieldButton = Instance.new("TextButton")
executeInfiniteYieldButton.Text = "INFINITE YIELD"
executeInfiniteYieldButton.Size = UDim2.new(1, 0, 0, 30)  -- Reduced size of the INFINITE YIELD button
executeInfiniteYieldButton.Position = UDim2.new(0, 0, 0, 80)  -- Adjusted position to fit below Button 2
executeInfiniteYieldButton.Parent = rightFrame

-- Function to execute the INFINITE YIELD script
local function executeInfiniteYieldScript()
    loadstring(infiniteYieldScript)()
end

executeInfiniteYieldButton.MouseButton1Click:Connect(executeInfiniteYieldScript)

-- Create a Button to execute the Nameless Admin script
local executeNamelessAdminButton = Instance.new("TextButton")
executeNamelessAdminButton.Text = "Nameless Admin"
executeNamelessAdminButton.Size = UDim2.new(1, 0, 0, 30)  -- Same size as Spectator button
executeNamelessAdminButton.Position = UDim2.new(0, 0, 0, 120)  -- Adjusted position to fit below the INFINITE YIELD button
executeNamelessAdminButton.Parent = rightFrame

-- Function to execute the Nameless Admin script
local function executeNamelessAdminScript()
    loadstring(namelessAdminScript)()
end

executeNamelessAdminButton.MouseButton1Click:Connect(executeNamelessAdminScript)

-- Create a Button to execute the Spectator script
local executeSpectatorButton = Instance.new("TextButton")
executeSpectatorButton.Text = "Spectator"
executeSpectatorButton.Size = UDim2.new(1, 0, 0, 30)  -- Same size as Spectator button
executeSpectatorButton.Position = UDim2.new(0, 0, 0, 160)  -- Adjusted position to fit below the Nameless Admin button
executeSpectatorButton.Parent = rightFrame -- Parenting to the right frame

-- Function to execute the Spectator script
local function executeSpectatorScript()
    loadstring(spectatorScript)()
end

executeSpectatorButton.MouseButton1Click:Connect(executeSpectatorScript)

-- Make the frame undraggable
frame.Draggable = false
