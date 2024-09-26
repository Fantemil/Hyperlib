-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame for the GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Add UICorner to the Frame for rounded corners
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = frame

-- Create a TextBox for input
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 180, 0, 30)
textBox.Position = UDim2.new(0, 10, 0, 10)
textBox.Text = "Enter coordinates (x,y,z)"
textBox.Parent = frame

-- Create a TextButton to submit coordinates
local submitButton = Instance.new("TextButton")
submitButton.Size = UDim2.new(0, 180, 0, 30)
submitButton.Position = UDim2.new(0, 10, 0, 50)
submitButton.Text = "Highlight"
submitButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
submitButton.BorderSizePixel = 0
submitButton.Parent = frame

-- Add UICorner to the TextButton for rounded corners
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)
buttonCorner.Parent = submitButton

-- Function to create a shiny square at the given coordinates
local function createHighlight(x, y, z)
    local part = Instance.new("Part")
    part.Size = Vector3.new(4, 1, 4) -- Size of the square
    part.Position = Vector3.new(x, y + 0.5, z) -- Position it slightly above the ground
    part.Anchored = true
    part.Material = Enum.Material.Neon -- Make it shiny
    part.BrickColor = BrickColor.new("Really red") -- Color of the square
    part.Parent = game.Workspace

    -- Make the part transparent after some time
    wait(5)
    for i = 0, 1, 0.1 do
        part.Transparency = i
        wait(0.1)
    end
    part:Destroy()
end

-- Function to highlight coordinates
local function highlightCoordinates()
    local coords = textBox.Text
    local coordTable = {}
    for coord in coords:gmatch("%d+") do
        table.insert(coordTable, tonumber(coord))
    end
    
    if #coordTable == 3 then
        createHighlight(coordTable[1], coordTable[2], coordTable[3])
    else
        print("Please enter valid coordinates in the format: x,y,z")
    end
end

-- Connect the button to the function
submitButton.MouseButton1Click:Connect(highlightCoordinates)

-- Function to toggle the visibility of the main GUI
local function toggleGui()
    frame.Visible = not frame.Visible
end

-- Create a Button to toggle the GUI
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 100, 0, 50)
toggleButton.Position = UDim2.new(0, 0, 0, 0) -- Top left corner
toggleButton.Text = "Toggle GUI"
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
toggleButton.BorderSizePixel = 0
toggleButton.Parent = screenGui

-- Add UICorner to the Toggle Button for rounded corners
local toggleButtonCorner = Instance.new("UICorner")
toggleButtonCorner.CornerRadius = UDim.new(0, 10)
toggleButtonCorner.Parent = toggleButton

-- Connect the button to the toggle function
toggleButton.MouseButton1Click:Connect(toggleGui)
