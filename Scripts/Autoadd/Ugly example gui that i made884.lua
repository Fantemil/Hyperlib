-- Create the ScreenGui
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyGui"
screenGui.Parent = playerGui

-- Create the main frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 600, 0, 400)
mainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 0, 120) -- Deep purple
mainFrame.BorderSizePixel = 0
mainFrame.BackgroundTransparency = 0.1
mainFrame.Visible = false
mainFrame.Parent = screenGui

-- Add a rounded corner to the main frame
local mainFrameCorner = Instance.new("UICorner")
mainFrameCorner.CornerRadius = UDim.new(0.2, 0)
mainFrameCorner.Parent = mainFrame

-- Create the open button
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 180, 0, 50)
openButton.Position = UDim2.new(0.5, -90, 0, 10)
openButton.Text = "Open GUI"
openButton.BackgroundColor3 = Color3.fromRGB(130, 50, 180)
openButton.TextColor3 = Color3.new(1, 1, 1)
openButton.Font = Enum.Font.GothamBold
openButton.TextSize = 24
openButton.BorderSizePixel = 0

-- Gradient effect for the open button
local openButtonGradient = Instance.new("UIGradient")
openButtonGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(90, 30, 150)),  -- Darker purple at the top
    ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 100, 200)) -- Lighter purple at the bottom
}
openButtonGradient.Parent = openButton

-- Add a rounded corner to the open button
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0.1, 0)
buttonCorner.Parent = openButton

-- Tween transparency and position for fade effect
local function tweenTransparency(frame, targetTransparency, duration)
    local tweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = tweenService:Create(frame, tweenInfo, {BackgroundTransparency = targetTransparency})
    tween:Play()
end

-- Toggle GUI visibility with tweening
local isOpen = false

local function toggleGUI()
    local tweenService = game:GetService("TweenService")
    if isOpen then
        tweenTransparency(mainFrame, 1, 0.5) -- Fade out
        mainFrame:TweenPosition(UDim2.new(0.5, -300, 0.5, 500), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true, function()
            mainFrame.Visible = false
        end)
    else
        mainFrame.Visible = true
        mainFrame.Position = UDim2.new(0.5, -300, 0.5, 500)
        tweenTransparency(mainFrame, 0.1, 0.5) -- Fade in
        mainFrame:TweenPosition(UDim2.new(0.5, -300, 0.5, -200), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
    end
    isOpen = not isOpen
end

-- Connect the button action to toggle the GUI
openButton.MouseButton1Click:Connect(toggleGUI)

-- Add the open button to the screenGui
openButton.Parent = screenGui

-- Create the buttons layout
local buttonContainer = Instance.new("Frame")
buttonContainer.Size = UDim2.new(1, 0, 1, -60) -- Adjusted to fit below the open button
buttonContainer.Position = UDim2.new(0, 0, 0, 60) -- Below the open button
buttonContainer.BackgroundTransparency = 1
buttonContainer.Parent = mainFrame

-- Button Properties
local buttonSize = UDim2.new(0, 40, 0, 40) -- Cube button size
local buttonSpacing = 10 -- Spacing between buttons
local buttonsInRow = math.floor((mainFrame.Size.X.Offset - 20) / (buttonSize.X.Offset + buttonSpacing)) -- Calculate buttons that fit in one row
local buttonCount = 0 -- Track total buttons added

local function addButton()
    buttonCount = buttonCount + 1

    -- Create a new button
    local newButton = Instance.new("TextButton")
    newButton.Size = buttonSize
    newButton.Text = "Btn " .. buttonCount -- Shortened text for clarity
    newButton.BackgroundColor3 = Color3.fromRGB(100, 50, 150)
    newButton.TextColor3 = Color3.new(1, 1, 1)
    newButton.Font = Enum.Font.GothamBold
    newButton.TextSize = 12 -- Text size for better fit
    newButton.BorderSizePixel = 0

    -- Add a gradient effect to new buttons
    local buttonGradient = Instance.new("UIGradient")
    buttonGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 50, 180)), 
        ColorSequenceKeypoint.new(1, Color3.fromRGB(170, 100, 230)) 
    }
    buttonGradient.Parent = newButton

    -- Add a rounded corner to the new button
    local newButtonCorner = Instance.new("UICorner")
    newButtonCorner.CornerRadius = UDim.new(0.1, 0)
    newButtonCorner.Parent = newButton

    -- Set button position
    local row = math.floor((buttonCount - 1) / buttonsInRow)
    local col = (buttonCount - 1) % buttonsInRow
    newButton.Position = UDim2.new(0, col * (buttonSize.X.Offset + buttonSpacing), 0, row * (buttonSize.Y.Offset + buttonSpacing))

    -- Connect click function for new buttons
    newButton.MouseButton1Click:Connect(function()
        print(newButton.Text .. " clicked") -- Placeholder action
    end)

    -- Add the button to the button container
    newButton.Parent = buttonContainer

    -- Check if the button count exceeds the number of buttons in a row
    if buttonCount % buttonsInRow == 0 then
        addButton() -- Add a button below if the current row is filled
    end
end

-- Add initial buttons
for i = 1, 5 do -- Add 5 initial buttons
    addButton()
end

-- Open the GUI when the script runs
toggleGUI()