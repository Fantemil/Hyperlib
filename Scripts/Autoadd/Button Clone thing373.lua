local screenGui = Instance.new("ScreenGui")
screenGui.Name = "sc"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 400)
frame.Position = UDim2.new(0.5, -150, 0.5, -200)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0, 30)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "Button Clonez hub by Rozxino"
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextSize = 18
textLabel.Parent = frame

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, 0, 1, -30)
scrollFrame.Position = UDim2.new(0, 0, 0, 30)
scrollFrame.BackgroundTransparency = 1
scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 200 * 60) -- Adjust the scrollable height
scrollFrame.Parent = frame

local buttonTemplate = Instance.new("TextButton")
buttonTemplate.Size = UDim2.new(0, 200, 0, 50)
buttonTemplate.Position = UDim2.new(0.5, -100, 0, 20)
buttonTemplate.BackgroundTransparency = 0.3
buttonTemplate.BackgroundColor3 = Color3.new(1, 1, 1)
buttonTemplate.Text = "Click Me"
buttonTemplate.TextColor3 = Color3.new(0, 0, 0)
buttonTemplate.Font = Enum.Font.SourceSansBold
buttonTemplate.TextSize = 18

local scripts = {
    "print('Script 1')",  -- You can add and edit this scripts
    "print('Script 2')",
    "print('Script 3')"
}

local function getRandomScript()
    local randomIndex = math.random(1, #scripts)
    return scripts[randomIndex]
end

for i = 1, 200 do -- Set this to how many buttons to close u want
    local newButton = buttonTemplate:Clone()
    newButton.Parent = scrollFrame
    newButton.Text = "Button "..i
    newButton.Position = UDim2.new(0, 0, 0, (i - 1) * 60)
    newButton.MouseButton1Click:Connect(function()
        local script = getRandomScript()
        loadstring(script)()
    end)
end