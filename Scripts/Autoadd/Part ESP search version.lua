local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

local gui = Instance.new("ScreenGui")
gui.Name = "ESP Gui"
gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 100, 0, 50)
frame.Position = UDim2.new(0, mouse.X, 0, mouse.Y)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 0.5
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.Parent = gui

local input = Instance.new("TextBox")
input.Size = UDim2.new(0, 75, 0, 20)
input.Position = UDim2.new(0.5, -37, 0, 5)
input.Text = "Part Name"
input.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 50, 0, 20)
button.Position = UDim2.new(0.5, -25, 0, 25)
button.Text = "Highlight"
button.Parent = frame

button.MouseButton1Click:Connect(function()
    local part = game.Workspace:FindFirstChild(input.Text)
    if part then
        local esp = Instance.new("BoxHandleAdornment")
        esp.Adornee = part
        esp.Size = part.Size
        esp.AlwaysOnTop = true
        esp.ZIndex = 5
        esp.Transparency = 0.5
        esp.Color3 = Color3.new(1, 0, 0)
        esp.Parent = part
        part.BrickColor = BrickColor.new("Really red")
    end
end)