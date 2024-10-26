Title):Require Executer Roblox Console
Creator):09baRavenaaAlt
Description):09baRavenaaAlt Made this script do not skid it or you will pay.im lazy to create.

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 200, 0, 99)
textBox.Position = UDim2.new(0, 0, 0, 0)
textBox.Parent = script.Parent

local button = Instance.new("TextButton")

button.Size = UDim2.new(0, 50, 0, 99)
button.Position = UDim2.new(1, -50, 0, 0)
button.Text = "Execute"
button.Parent = script.Parent

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0, 20)
textLabel.Position = UDim2.new(0, 0, -1, 0)
textLabel.Text = "Roblox Console Require Executer"
textLabel.Parent = script.Parent

button.MouseButton1Click:Connect(function()
    local requireScript = textBox.Text
    require(requireScript)
end)

local dragGui = script.Parent:FindFirstChildOfClass("ClickDetector")
if not dragGui then
    dragGui = Instance.new("ClickDetector")
    dragGui.Parent = script.Parent
end

local isDragging = false
local offset = Vector3.new()

dragGui.MouseClick:Connect(function()
    isDragging = not isDragging
    if isDragging then
        offset = script.Parent.Position - game:GetService("UserInputService"):GetMouseLocation()
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and isDragging then
        script.Parent.Position = game:GetService("UserInputService"):GetMouseLocation() + offset
    end
end)