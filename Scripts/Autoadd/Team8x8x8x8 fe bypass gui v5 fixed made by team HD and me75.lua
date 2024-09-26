-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create an ImageLabel as a child of ScreenGui
local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(0, 100, 0, 100)
imageLabel.Position = UDim2.new(0, 0, 0, 0)
imageLabel.BackgroundTransparency = 0.5  -- Adjusted transparency to 50%
imageLabel.Image = "rbxassetid://16000894791"
imageLabel.Parent = screenGui

-- Variable to track second screen visibility
local secondScreenVisible = false
local secondScreenGui = nil  -- Variable to store reference to second ScreenGui

-- Create a function to toggle the second screen
local function toggleSecondScreen()
    if secondScreenVisible then
        -- Close the second screen
        if secondScreenGui then
            secondScreenGui:Destroy()
            secondScreenGui = nil
        end
        secondScreenVisible = false
    else
        -- Open the second screen
        secondScreenGui = Instance.new("ScreenGui")
        secondScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        local buttonPositions = {
            UDim2.new(0.1, 0, 0.1, 0),
            UDim2.new(0.1, 0, 0.3, 0),
            UDim2.new(0.1, 0, 0.5, 0),
            UDim2.new(0.1, 0, 0.7, 0),
            UDim2.new(0.1, 0, 0.9, 0),
        }

        for i = 1, 5 do
            local button = Instance.new("TextButton")
            button.Size = UDim2.new(0.2, 0, 0.1, 0)
            button.Position = buttonPositions[i]
            button.Text = "Button " .. i
            button.TextColor3 = Color3.new(1, 1, 1)
            button.TextSize = 14
            button.Font = Enum.Font.SourceSans
            button.BackgroundColor3 = Color3.new(0, 0.5, 1)
            button.Parent = secondScreenGui

            -- Connect a function to each button's click event
            button.MouseButton1Click:Connect(function()
                print("Button " .. i .. " clicked on second screen!")
                -- Add your functionality here for each button click
            end)
        end

        -- Add a close button
        local closeButton = Instance.new("TextButton")
        closeButton.Size = UDim2.new(0, 150, 0, 50)
        closeButton.Position = UDim2.new(0.5, -75, 0.9, 0)
        closeButton.Text = "Close Gui"
        closeButton.TextColor3 = Color3.new(1, 1, 1)
        closeButton.TextSize = 18
        closeButton.Font = Enum.Font.SourceSans
        closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
        closeButton.Parent = secondScreenGui

        -- Connect function to close button click event
        closeButton.MouseButton1Click:Connect(function()
            toggleSecondScreen()  -- Close the second screen
        end)

        secondScreenVisible = true
    end
end

-- Add a button below the ImageLabel to open second screen
local openButton = Instance.new("TextButton")
openButton.Size = UDim2.new(0, 150, 0, 50)
openButton.Position = UDim2.new(0.5, -75, 0, 120)
openButton.Text = "Open Team8x8x8x8 and team Hd gui"
openButton.TextColor3 = Color3.new(1, 1, 1)
openButton.TextSize = 18
openButton.Font = Enum.Font.SourceSans
openButton.BackgroundColor3 = Color3.new(0, 0.5, 1)
openButton.Parent = screenGui

-- Connect a function to open button's click event
openButton.MouseButton1Click:Connect(function()
    print("Toggling second screen...")
    toggleSecondScreen()
end)