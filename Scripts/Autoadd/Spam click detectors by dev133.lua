-- Version: 3.2
local toggled = false
local debounce = false

-- Function to scan for and fire click detectors
local function scanForClickDetectors()
    while toggled do
        for _, descendant in pairs(workspace:GetDescendants()) do
            if descendant:IsA("ClickDetector") then
                fireclickdetector(descendant)
            end
        end
        wait() -- This will wait for the default 1/30th of a second
    end
end

-- UI setup
local UI = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Toggle = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local Circle = Instance.new("ImageLabel")

--Properties:
UI.Name = "UI"
UI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = UI
Main.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.5, -75, 0.5, -37)
Main.Size = UDim2.new(0, 150, 0, 75)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.fromRGB(48, 48, 48)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120
Main.Active = true
Main.Draggable = true

Toggle.Name = "Toggle"
Toggle.Parent = Main
Toggle.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.5, -23, 0.5, -11)
Toggle.Size = UDim2.new(0, 46, 0, 22)
Toggle.Image = "rbxassetid://3570695787"
Toggle.ImageColor3 = Color3.fromRGB(200, 200, 200)
Toggle.ScaleType = Enum.ScaleType.Slice
Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
Toggle.SliceScale = 0.120

Button.Name = "Button"
Button.Parent = Toggle
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Font = Enum.Font.SourceSans
Button.Text = "Toggle"
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000
Button.TextTransparency = 1.000

Circle.Name = "Circle"
Circle.Parent = Toggle
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.BackgroundTransparency = 1.000
Circle.Position = UDim2.new(0, 2, 0, 2)
Circle.Size = UDim2.new(0, 18, 0, 18)
Circle.Image = "rbxassetid://3570695787"
Circle.ScaleType = Enum.ScaleType.Slice
Circle.SliceCenter = Rect.new(100, 100, 100, 100)
Circle.SliceScale = 0.120

-- Function to handle button click
local function onButtonClick()
    if not debounce then
        debounce = true
        if toggled then
            -- If the toggle is already on
            game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.25), {ImageColor3 = Color3.fromRGB(200, 200, 200)}):Play()
            game:GetService("TweenService"):Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0,2,0,2)}):Play()
            toggled = false
        else
            -- If the toggle isn't already on
            game:GetService("TweenService"):Create(Toggle, TweenInfo.new(0.25), {ImageColor3 = Color3.fromRGB(64, 200, 114)}):Play()
            game:GetService("TweenService"):Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(1,-20,0,2)}):Play()
            toggled = true
            coroutine.wrap(scanForClickDetectors)() -- Start scanning in a new thread
        end
        wait(0.25)
        debounce = false
    end
end

-- Connect the function to the button's click event
Button.MouseButton1Click:Connect(onButtonClick)

-- Make sure the UI is only created once
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("UI") == nil then
    UI.Parent = game.Players.LocalPlayer.PlayerGui
end
