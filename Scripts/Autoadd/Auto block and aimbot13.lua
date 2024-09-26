-- Create the GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AutoBlockGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false  -- Ensure the GUI doesn't reset on player respawn

-- Create the main frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 250, 0, 180)
mainFrame.Position = UDim2.new(0, -260, 0.5, -90)  -- Start off-screen on the left
mainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
mainFrame.BorderSizePixel = 0
mainFrame.BackgroundTransparency = 1  -- Start invisible
mainFrame.Parent = screenGui

-- Add UI Corner for rounded edges
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 15)
uiCorner.Parent = mainFrame

-- Add UI Gradient for a fancy look
local uiGradient = Instance.new("UIGradient")
uiGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(70, 130, 180)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 128))
}
uiGradient.Rotation = 45
uiGradient.Parent = mainFrame

-- Create the rainbow outline
local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(255, 0, 0)  -- Initial color for the rainbow effect
uiStroke.Thickness = 4
uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke.Parent = mainFrame

-- Create a table of rainbow colors
local rainbowColors = {
    Color3.fromRGB(255, 0, 0),
    Color3.fromRGB(255, 127, 0),
    Color3.fromRGB(255, 255, 0),
    Color3.fromRGB(0, 255, 0),
    Color3.fromRGB(0, 0, 255),
    Color3.fromRGB(75, 0, 130),
    Color3.fromRGB(148, 0, 211)
}

-- Function to animate the rainbow outline
local function animateOutline()
    local index = 1
    while true do
        uiStroke.Color = rainbowColors[index]
        index = index % #rainbowColors + 1
        wait(0.1)  -- Adjust as needed for animation speed
    end
end

-- Start the rainbow outline animation
spawn(animateOutline)

-- Add a title to the frame
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -20, 0, 30)
titleLabel.Position = UDim2.new(0, 10, 0, 10)
titleLabel.Text = "Auto Block"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextScaled = true
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Parent = mainFrame

-- Create the Enable/Disable button
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.8, -10, 0.2, -10)
toggleButton.Position = UDim2.new(0.1, 5, 0.35, 5)
toggleButton.Text = "Enable"
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.BorderSizePixel = 0
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextScaled = true
toggleButton.Parent = mainFrame

-- Add UI Corner to toggle button
local toggleButtonUICorner = Instance.new("UICorner")
toggleButtonUICorner.CornerRadius = UDim.new(0, 10)
toggleButtonUICorner.Parent = toggleButton

-- Create the AIMBOT button
local aimbotButton = Instance.new("TextButton")
aimbotButton.Size = UDim2.new(0.8, -10, 0.2, -10)
aimbotButton.Position = UDim2.new(0.1, 5, 0.6, 5)
aimbotButton.Text = "AIMBOT"
aimbotButton.BackgroundColor3 = Color3.fromRGB(0, 0, 200)
aimbotButton.TextColor3 = Color3.fromRGB(255, 255, 255)
aimbotButton.BorderSizePixel = 0
aimbotButton.Font = Enum.Font.GothamBold
aimbotButton.TextScaled = true
aimbotButton.Parent = mainFrame

-- Add UI Corner to AIMBOT button
local aimbotButtonUICorner = Instance.new("UICorner")
aimbotButtonUICorner.CornerRadius = UDim.new(0, 10)
aimbotButtonUICorner.Parent = aimbotButton

-- Create a footer label
local footerLabel = Instance.new("TextLabel")
footerLabel.Size = UDim2.new(1, -20, 0, 30)
footerLabel.Position = UDim2.new(0, 10, 1, -40)
footerLabel.Text = "Made by PlayerExploits"
footerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
footerLabel.TextScaled = true
footerLabel.BackgroundTransparency = 1
footerLabel.Font = Enum.Font.GothamBold
footerLabel.Parent = mainFrame

-- Boolean to track if auto-block is enabled
local autoBlockEnabled = false

-- Function to toggle auto-block
local function toggleAutoBlock()
    autoBlockEnabled = not autoBlockEnabled
    if autoBlockEnabled then
        toggleButton.Text = "Disable"
        toggleButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
        
        -- Start the auto-block logic
        while autoBlockEnabled do
            wait(0.1) -- Adjust as needed
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local closestPlayer = nil
                local shortestDistance = 20 -- Increased distance for dashing players

                for _, otherPlayer in pairs(game.Players:GetPlayers()) do
                    if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local otherPlayerRootPart = otherPlayer.Character.HumanoidRootPart
                        local distance = (player.Character.HumanoidRootPart.Position - otherPlayerRootPart.Position).magnitude
                        if distance < shortestDistance then
                            closestPlayer = otherPlayer
                            shortestDistance = distance
                        end
                    end
                end

                if closestPlayer then
                    -- Key Press
                    local args = {
                        [1] = {
                            ["Goal"] = "KeyPress",
                            ["Key"] = Enum.KeyCode.F
                        }
                    }
                    pcall(function()
                        game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
                    end)
                else
                    -- Key Release
                    local args = {
                        [1] = {
                            ["Goal"] = "KeyRelease",
                            ["Key"] = Enum.KeyCode.F
                        }
                    }
                    pcall(function()
                        game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
                    end)
                end
            end
        end
    else
        toggleButton.Text = "Enable"
        toggleButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        -- Stop the auto-block logic
        local args = {
            [1] = {
                ["Goal"] = "KeyRelease",
                ["Key"] = Enum.KeyCode.F
            }
        }
        pcall(function()
            game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))
        end)
    end
end

-- Function to run the AIMBOT script
local function runAimbot()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Best-aimbot-script-17026"))()
end

-- Function to animate the GUI
local function animateGui()
    -- Scale the GUI from 0 to 1
    mainFrame.Size = UDim2.new(0, 0, 0, 0)  -- Start with zero size
    mainFrame.BackgroundTransparency = 1 -- Start fully transparent

    -- Tween to grow the GUI to full size
    mainFrame:TweenSize(
        UDim2.new(0, 250, 0, 180),  -- Final size
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.5,  -- Duration
        true
    )

    -- Tween to fade in the GUI
    mainFrame:TweenPosition(
        UDim2.new(0, 10, 0.5, -90),  -- Final position on the left side
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.5,  -- Duration
        true
    )

    wait(0.1)  -- Slight delay to allow the size to adjust before transparency

    -- Tween to make the GUI fully visible
    mainFrame:TweenSizeAndPosition(
        UDim2.new(0, 250, 0, 180),  -- Final size
        UDim2.new(0.5, -125, 0.5, -90),  -- Centered position
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.5,  -- Duration
        true
    )
end

-- Function to handle the small button toggle
local function toggleMainFrameVisibility()
    if mainFrame.Visible then
        mainFrame.Visible = false
        smallButton.Text = "Show"
    else
        mainFrame.Visible = true
        smallButton.Text = "Hide"
    end
end

-- Call the animation function to show the GUI initially
animateGui()

-- Connect the buttons to their functions
toggleButton.MouseButton1Click:Connect(toggleAutoBlock)
aimbotButton.MouseButton1Click:Connect(runAimbot)

-- Create the toggle button
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 50, 0, 50)  -- Size of the button
toggleButton.Position = UDim2.new(0, 10, 0, 10)  -- Top-left corner position
toggleButton.Text = "Hide"  -- Initial text
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- Black color
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text color
toggleButton.BorderSizePixel = 0
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextScaled = true
toggleButton.Parent = screenGui

-- Add UI Corner to the toggle button
local toggleButtonUICorner = Instance.new("UICorner")
toggleButtonUICorner.CornerRadius = UDim.new(0, 10)
toggleButtonUICorner.Parent = toggleButton

-- Create a rainbow outline
local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(255, 0, 0)  -- Initial color for the rainbow effect
uiStroke.Thickness = 4
uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke.Parent = toggleButton

-- Create a table of rainbow colors
local rainbowColors = {
    Color3.fromRGB(255, 0, 0),
    Color3.fromRGB(255, 127, 0),
    Color3.fromRGB(255, 255, 0),
    Color3.fromRGB(0, 255, 0),
    Color3.fromRGB(0, 0, 255),
    Color3.fromRGB(75, 0, 130),
    Color3.fromRGB(148, 0, 211)
}

-- Function to animate the rainbow outline
local function animateOutline()
    local index = 1
    while true do
        uiStroke.Color = rainbowColors[index]
        index = index % #rainbowColors + 1
        wait(0.1)  -- Adjust as needed for animation speed
    end
end

-- Start the rainbow outline animation
spawn(animateOutline)

-- Function to toggle the visibility of the main frame and button text
local function toggleMainFrame()
    if mainFrame.Visible then
        mainFrame.Visible = false
        toggleButton.Text = "Show"
    else
        mainFrame.Visible = true
        toggleButton.Text = "Hide"
    end
end

-- Connect the toggle button to the function
toggleButton.MouseButton1Click:Connect(toggleMainFrame)