--Made by fablo1358 and team_f0ul1guy!

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local getKeyButton = Instance.new("TextButton")
local submitButton = Instance.new("TextButton")
local textBox = Instance.new("TextBox")
local correctCode = "1234ABCD" --CHANGE "1234ABCD" TO YOUR CODE

screenGui.Parent = PlayerGui

frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.Parent = screenGui

getKeyButton.Size = UDim2.new(0, 100, 0, 50)
getKeyButton.Position = UDim2.new(0.1, 0, 0.7, 0)
getKeyButton.Text = "Get Key"
getKeyButton.Parent = frame

submitButton.Size = UDim2.new(0, 100, 0, 50)
submitButton.Position = UDim2.new(0.6, 0, 0.7, 0)
submitButton.Text = "Submit"
submitButton.Parent = frame

textBox.Size = UDim2.new(0, 200, 0, 50)
textBox.Position = UDim2.new(0.5, -100, 0.3, 0)
textBox.PlaceholderText = "Enter Code"
textBox.Parent = frame

getKeyButton.MouseButton1Click:Connect(function()
    setclipboard(correctCode)
end)

submitButton.MouseButton1Click:Connect(function()
    if textBox.Text == correctCode then
        screenGui:Destroy()
    end
end)