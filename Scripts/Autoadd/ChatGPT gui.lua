
-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyScreenGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a frame to contain the title and scrolling frame
local containerFrame = Instance.new("Frame")
containerFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
containerFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
containerFrame.BackgroundColor3 = Color3.new(255, 255, 255)
containerFrame.Parent = screenGui
containerFrame.BackgroundTransparency = 0.25

local initialInputPosition
local initialFramePosition

-- Function to handle mouse/touch drag events
local function onDrag(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        if input.UserInputState == Enum.UserInputState.Begin then
            -- Store the initial click/touch position and frame position
            initialInputPosition = input.Position
            initialFramePosition = containerFrame.Position
        elseif input.UserInputState == Enum.UserInputState.Change then
            -- Calculate the delta movement from the initial click/touch position
            local delta = input.Position - initialInputPosition

            -- Update the frame position based on the delta movement
            containerFrame.Position = UDim2.new(
                initialFramePosition.X.Scale,
                initialFramePosition.X.Offset + delta.X,
                initialFramePosition.Y.Scale,
                initialFramePosition.Y.Offset + delta.Y
            )
        end
    end
end

-- Connect input events to the frame
containerFrame.InputBegan:Connect(onDrag)
containerFrame.InputChanged:Connect(onDrag)

-- Create the title label
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundColor3 = Color3.new(255, 255, 255)
titleLabel.TextColor3 = Color3.new(0, 0, 0)
titleLabel.Text = "My GUI Title"
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.FontSize = Enum.FontSize.Size18
titleLabel.Parent = containerFrame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.BackgroundColor3 = Color3.new(255, 255, 255)
closeButton.TextColor3 = Color3.new(0, 0, 0)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.FontSize = Enum.FontSize.Size18
closeButton.Parent = containerFrame
closeButton.BorderSizePixel = 0 -- Remove the border around the button

-- Function to close the GUI
local function closeGui()
    screenGui:Destroy()
end

-- Connect the close button click event to the closeGui function
closeButton.MouseButton1Click:Connect(closeGui)

-- Create a scrolling frame to contain the buttons
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, 0, 1, -30) -- Adjust size to leave space for the title
scrollingFrame.Position = UDim2.new(0, 0, 0, 30) -- Position below the title
scrollingFrame.BackgroundTransparency = 0.75
scrollingFrame.ScrollingEnabled = true
scrollingFrame.Parent = containerFrame
scrollingFrame.BackgroundColor3 = Color3.new(255, 255, 255)

-- Create a UIListLayout to position the buttons inside the scrolling frame with spacing
local listLayout = Instance.new("UIListLayout")
listLayout.FillDirection = Enum.FillDirection.Vertical
listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center -- Align buttons to the center
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 10) -- Set the vertical padding between buttons
listLayout.Parent = scrollingFrame

-- Function to add buttons to the scrolling frame
local function addButton(text, clickFunction)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0, 40)
    button.BackgroundColor3 = Color3.new(255, 255, 255)
    button.TextColor3 = Color3.new(0, 0, 0)
    button.Text = text
    button.Font = Enum.Font.SourceSansBold
    button.FontSize = Enum.FontSize.Size14
    button.Parent = scrollingFrame

    -- Update the position of the next button
    

    -- Add function to button click
    button.MouseButton1Click:Connect(clickFunction)

    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y)

    -- Update CanvasSize whenever a new button is added
    listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, listLayout.AbsoluteContentSize.Y)
    end)
end

-- Add some buttons to the scrolling frame
addButton("Button 1", function()
    print("Button 1 clicked!")
end)

addButton("Button 2", function()
    print("Button 2 clicked!")
end)

addButton("Button 3", function()
    print("Button 3 clicked!")
end)

addButton("Button 4", function()
    print("Button 4 clicked!")
end)

addButton("Button 5", function()
    print("Button 5 clicked!")
end)

local function createToggle(text, clickFunction)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0, 40)
    button.BackgroundColor3 = Color3.new(255, 255, 255)
    button.TextColor3 = Color3.new(0, 0, 0)
    button.Text = text
    button.Font = Enum.Font.SourceSansBold
    button.FontSize = Enum.FontSize.Size14
    button.Parent = scrollingFrame

    local buttonColors = {
        off = Color3.new(1, 1, 1),
        on = Color3.new(0, 1, 0)
    }
    local customToggleState = false

    -- Function to handle the toggle button click event
    local function onToggleButtonClicked()
        customToggleState = not customToggleState
        button.BackgroundColor3 = customToggleState and buttonColors.on or buttonColors.off
        clickFunction(customToggleState) -- Pass the custom toggle state to the clickFunction
    end

    -- Add function to button click
    button.MouseButton1Click:Connect(onToggleButtonClicked)

    return button
end

local function addNewToggle(text, clickFunction)
    local button = createToggle(text, clickFunction)
    button.Parent = scrollingFrame
end

-- Add toggle button with auto-clicking behavior
addNewToggle("Auto Clicker", function(customToggleState)
    if customToggleState then
            _G.loop = true
        while _G.loop == true do wait()
            print("geu")
        end
    else
            _G.loop = false
        while _G.loop == true do wait()
        print("geu")
    end
    end
end)

addNewToggle("Auto Click2er", function(customToggleState)
    if customToggleState then
            _G.loop = true
        while _G.loop == true do wait()
            print("geu")
        end
    else
            _G.loop = false
        while _G.loop == true do wait()
        print("geu")
    end
    end
end)