-- Create GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "GUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
 
-- Create Frame
local Frame = Instance.new("Frame")
Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.6
Frame.BorderColor3 = Color3.fromRGB(0, 194, 253)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, -165, 0.5, -97)
Frame.Size = UDim2.new(0, 330, 0, 195)
Frame.Active = true
Frame.Draggable = true
 
-- Create Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Parent = Frame
TitleBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 30)
 
-- Create Title Text
local TitleText = Instance.new("TextLabel")
TitleText.Name = "TitleText"
TitleText.Parent = TitleBar
TitleText.BackgroundTransparency = 1
TitleText.Position = UDim2.new(0.5, -95, 0, 0)
TitleText.Size = UDim2.new(0, 190, 1, 0)
TitleText.Font = Enum.Font.SourceSansBold
TitleText.Text = "Ragdoll Engine Script Op Fling"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextScaled = true
TitleText.TextSize = 14
TitleText.TextWrapped = true
 
-- Create Run Button
local RunButton = Instance.new("TextButton")
RunButton.Name = "RunButton"
RunButton.Parent = Frame
RunButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RunButton.BorderSizePixel = 0
RunButton.Position = UDim2.new(0.5, -50, 0, 50)
RunButton.Size = UDim2.new(0, 100, 0, 50)
RunButton.Font = Enum.Font.SourceSansBold
RunButton.Text = "Execute"
RunButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RunButton.TextSize = 18
 
-- Create Exit Button
local ExitButton = Instance.new("TextButton")
ExitButton.Name = "ExitButton"
ExitButton.Parent = Frame
ExitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ExitButton.BorderSizePixel = 0
ExitButton.Position = UDim2.new(1, -25, 0, 5)
ExitButton.Size = UDim2.new(0, 20, 0, 20)
ExitButton.Font = Enum.Font.SourceSansBold
ExitButton.Text = "X"
ExitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitButton.TextSize = 14
 
-- Function to show the popup message
local function ShowPopupMessage()
    local popupMessage = Instance.new("Message")
    popupMessage.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    popupMessage.Text = "Script Starting"
    wait(2) -- Adjust the duration as needed
    popupMessage:Destroy()
end
 
-- Event handler for the Run Button click
RunButton.MouseButton1Click:Connect(function()
    -- Show the popup message
    ShowPopupMessage()
 
    -- Replace the script URL with your desired script
    loadstring(game:HttpGet("https://pastebin.com/raw/wtHJ5a48"))()
end)
 
-- Event handler for the Exit Button click
ExitButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
 
return ScreenGui, require