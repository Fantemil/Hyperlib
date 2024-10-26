-- Create the GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local BetaText = Instance.new("TextLabel")
local UICornerForClose = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local PlayButton = Instance.new("TextButton")
local Sound = Instance.new("Sound")

-- Parent the GUI to the player's screen
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- Frame properties (the main GUI window)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true  -- Make it draggable

-- UICorner for smooth edges on Frame
UICorner.CornerRadius = UDim.new(0.1, 0)  -- Smooth edges
UICorner.Parent = Frame

-- Close Button (a circle with 'X' in it)
CloseButton.Text = "X"
CloseButton.Size = UDim2.new(0, 40, 0, 40)
CloseButton.Position = UDim2.new(1, -45, 0, 5)  -- Position at the top-right corner
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = Frame
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 24

-- UICorner for smooth edges on Close Button
UICornerForClose.CornerRadius = UDim.new(1, 0)  -- Full circle
UICornerForClose.Parent = CloseButton

-- Pop-up text label for beta notice
BetaText.Size = UDim2.new(0, 250, 0, 50)
BetaText.Position = UDim2.new(0.5, -125, 0.5, -25)
BetaText.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
BetaText.Text = "This is still in beta; we will improve this soon"
BetaText.TextColor3 = Color3.fromRGB(255, 255, 255)
BetaText.Font = Enum.Font.SourceSansBold
BetaText.TextSize = 18
BetaText.Parent = ScreenGui
BetaText.Visible = true

-- UICorner for smooth edges on Beta Text
local BetaTextCorner = Instance.new("UICorner")
BetaTextCorner.CornerRadius = UDim.new(0.1, 0)
BetaTextCorner.Parent = BetaText

-- Make beta text disappear after a few seconds
wait(3)
for i = 1, 50 do
    BetaText.TextTransparency = i / 50
    BetaText.BackgroundTransparency = i / 50
    wait(0.05)
end
BetaText:Destroy()

-- Close Button functionality
CloseButton.MouseButton1Click:Connect(function()
    Sound:Stop()  -- Stop the music when the GUI is closed
    ScreenGui:Destroy()
end)

-- TextBox for entering music ID
TextBox.Size = UDim2.new(0, 200, 0, 40)
TextBox.Position = UDim2.new(0.5, -100, 0.3, -20)
TextBox.PlaceholderText = "Enter Song ID"
TextBox.Text = ""
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Font = Enum.Font.SourceSans
TextBox.TextSize = 18

-- Play Button
PlayButton.Size = UDim2.new(0, 100, 0, 40)
PlayButton.Position = UDim2.new(0.5, -50, 0.5, 20)
PlayButton.Text = "Play Music"
PlayButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
PlayButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayButton.Parent = Frame
PlayButton.Font = Enum.Font.SourceSansBold
PlayButton.TextSize = 18

-- Create sound object
Sound.Parent = game.Workspace

-- Play Button functionality
PlayButton.MouseButton1Click:Connect(function()
    local musicId = tonumber(TextBox.Text)
    if musicId then
        Sound.SoundId = "rbxassetid://" .. musicId
        Sound:Play()
    else
        warn("Please enter a valid music ID")
    end
end)
