-- Function to copy text to clipboard
local function toClipboard(String)
    local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
    if clipBoard then
        clipBoard(String)
        print("Copied to clipboard")
    else
        print("Your exploit doesn't have the ability to use the clipboard")
    end
end

-- Create a ScreenGui
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create the main frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.BorderSizePixel = 2
frame.Parent = gui
frame.Active = true -- Make the frame draggable
frame.Draggable = true -- Make the frame draggable

-- Create the copy coordinates button
local copyButton = Instance.new("TextButton")
copyButton.Text = "Copy Coordinates"
copyButton.Size = UDim2.new(0, 150, 0, 50)
copyButton.Position = UDim2.new(0.5, -75, 0.6, -25) -- Adjusted position
copyButton.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
copyButton.Parent = frame

-- Function to copy coordinates
local function copyCoordinates()
    local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    toClipboard("Coordinates: " .. tostring(pos))
end

copyButton.MouseButton1Click:Connect(copyCoordinates)

-- Create the close button
local closeButton = Instance.new("TextButton")
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(0, 5, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BorderSizePixel = 0
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)