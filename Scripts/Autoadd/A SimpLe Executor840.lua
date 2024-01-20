local entranceGui = Instance.new("ScreenGui")
entranceGui.Name = "EntranceGui"
entranceGui.ResetOnSpawn = false
entranceGui.Parent = game:GetService("CoreGui")

local smileyFace = Instance.new("TextLabel")
smileyFace.Size = UDim2.new(0, 50, 0, 50)
smileyFace.Position = UDim2.new(0.5, -25, 0, 10)
smileyFace.TextColor3 = Color3.new(0.529412, 0.807843, 0.980392)
smileyFace.BackgroundTransparency = 1
smileyFace.Text = ":>"
smileyFace.Font = Enum.Font.SourceSansBold
smileyFace.TextSize = 24
smileyFace.Parent = entranceGui

local entranceText = Instance.new("TextLabel")
entranceText.Size = UDim2.new(1, 0, 0, 50)
entranceText.Position = UDim2.new(0, 0, 0.5, -25)
entranceText.BackgroundTransparency = 1
entranceText.TextColor3 = Color3.fromRGB(173, 216, 230)
entranceText.Text = "Welcome! To V1-SimpLe Type your script in the textbox and press Execute."
entranceText.TextSize = 16
entranceText.Parent = entranceGui

local madeByText = Instance.new("TextLabel")
madeByText.Size = UDim2.new(0, 200, 0, 20)
madeByText.Position = UDim2.new(0.5, -100, 1, -30)
madeByText.BackgroundTransparency = 1
madeByText.TextColor3 = Color3.fromRGB(173, 216, 230)
madeByText.Text = "Made By Memetector!"
madeByText.TextSize = 16
madeByText.Parent = entranceGui

local originalPosition = madeByText.Position
madeByText.Position = UDim2.new(1, 0, 0.5, -25)
madeByText:TweenPosition(originalPosition, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 1, true)

for transparency = 1, 0, -0.05 do
    entranceText.TextTransparency = transparency
    madeByText.TextTransparency = transparency
    wait(0.1)
end

wait(3)

entranceGui:Destroy()

-- V1-SimpLe
-- (Works With All Mobile Executors! Doesn't Work With Computers Mac's or Anything Outside of Mobile)
local gui = Instance.new("ScreenGui")
gui.Name = "ColorChangingGui"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 180, 0, 150)
frame.BackgroundColor3 = Color3.new(1, 0, 0)
frame.Active = true
frame.Draggable = true
frame.Position = UDim2.new(0, 0, 0, 0)
frame.Parent = gui

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0.6, 0)
textBox.Position = UDim2.new(0.1, 0, 0.1, 0)
textBox.Text = ""
textBox.TextWrapped = true
textBox.ClearTextOnFocus = false
textBox.Parent = frame

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.4, 0, 0.1, 0)
executeButton.Position = UDim2.new(0.1, 0, 0.8, 0)
executeButton.BackgroundColor3 = Color3.new(1, 1, 1)
executeButton.TextColor3 = Color3.new(0, 0, 0)
executeButton.Text = "Execute"
executeButton.Parent = frame

local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.4, 0, 0.1, 0)
clearButton.Position = UDim2.new(0.5, 0, 0.8, 0)
clearButton.BackgroundColor3 = Color3.new(1, 1, 1)
clearButton.TextColor3 = Color3.new(0, 0, 0)
clearButton.Text = "Clear"
clearButton.Parent = frame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.1, 0, 0.1, 0)
closeButton.Position = UDim2.new(0.9, 0, 0, 0)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Text = "X"
closeButton.Parent = frame

local colors = {Color3.new(1, 0, 0), Color3.new(1, 1, 0), Color3.new(0, 1, 0)}
local currentIndex = 1

executeButton.MouseButton1Click:Connect(function()
    local codeToExecute = textBox.Text
    pcall(loadstring(codeToExecute))
    local consoleOutput = "Code executed successfully."
    print(consoleOutput)
end)

clearButton.MouseButton1Click:Connect(function()
    textBox.Text = ""
    print("")
end)

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

while wait(1) do
    frame.BackgroundColor3 = colors[currentIndex]
    currentIndex = (currentIndex % #colors) + 1
end