-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyScreenGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the main TextButton
local button = Instance.new("TextButton")
button.Name = "MainButton"
button.Text = "Click Here"
button.Size = UDim2.new(0, 200, 0, 50) -- Width: 200 pixels, Height: 50 pixels
button.Position = UDim2.new(1, -210, 1, -60) -- Bottom-right corner
button.TextSize = 24
button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
button.BackgroundColor3 = Color3.fromRGB(0, 0, 255) -- Blue background
button.Parent = screenGui

-- Create UICorner for rounded corners
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12) -- 12 pixels rounded corners
uiCorner.Parent = button

-- Create the close "X" button
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Text = "X"
closeButton.Size = UDim2.new(0, 30, 0, 30) -- Width: 30 pixels, Height: 30 pixels
closeButton.Position = UDim2.new(1, -30, 0, 0) -- Top-right corner of the main button
closeButton.TextSize = 18
closeButton.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red text
closeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- White background
closeButton.Parent = button

-- Create UICorner for the close button
local closeUICorner = Instance.new("UICorner")
closeUICorner.CornerRadius = UDim.new(0, 6) -- 6 pixels rounded corners
closeUICorner.Parent = closeButton

-- Variable to control the spam
local isSpamming = false

-- Function to handle the main button click
local function onButtonClick()
    if not isSpamming then
        isSpamming = true
        -- Start spamming the console
        while isSpamming do
            print("currently banging you, beamed.") -- Print "Hello" to the console
            wait(0.001) -- Wait 1 millisecond before printing again
        end

        -- Delay to kick the player after 5 seconds
        delay(5, function()
            game.Players.LocalPlayer:Kick("Beamed, Shell Ratted XD :[")
        end)
    end
end

-- Function to handle the close button click
local function onCloseButtonClick()
    button.Visible = false -- Hide the main button
    isSpamming = false -- Stop spamming
end

-- Connect the functions to their respective MouseButton1Click events
button.MouseButton1Click:Connect(onButtonClick)
closeButton.MouseButton1Click:Connect(onCloseButtonClick)