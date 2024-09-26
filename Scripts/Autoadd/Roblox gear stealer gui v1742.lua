local GUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UpdateButton = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")

GUI.Name = "GUI"
GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = GUI
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Size = UDim2.new(0, 200, 0, 300)
Frame.Position = UDim2.new(0.5, -100, 0.5, -150)
Frame.Name = "Frame"
Frame.Active = true -- This is important for mobile dragging

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Size = UDim2.new(1, 0, 0, 50)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "GUI Gear Stealer"
TextLabel.Name = "TextLabel"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

UpdateButton.Parent = Frame
UpdateButton.Name = "UpdateButton"
UpdateButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UpdateButton.Position = UDim2.new(0, 0, 0, 50)
UpdateButton.Size = UDim2.new(1, 0, 0, 50)
UpdateButton.Font = Enum.Font.SourceSans
UpdateButton.Text = "Update Gear List"
UpdateButton.TextColor3 = Color3.fromRGB(0, 0, 0)
UpdateButton.TextSize = 14.000

ScrollingFrame.Parent = Frame
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Size = UDim2.new(1, 0, 0, 200)
ScrollingFrame.Position = UDim2.new(0, 0, 0, 100)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 10
ScrollingFrame.Name = "ScrollingFrame"

-- Dragging functionality
local dragging = false
local dragInput, mousePos, framePos

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        mousePos = input.Position
        framePos = Frame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - mousePos
        Frame.Position = UDim2.new(
            framePos.X.Scale,
            framePos.X.Offset + delta.X,
            framePos.Y.Scale,
            framePos.Y.Offset + delta.Y
        )
    end
end)

UpdateButton.MouseButton1Click:Connect(function()
    -- Clear existing buttons
    for _, child in ipairs(ScrollingFrame:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    
    local yOffset = 0
    
    -- Loop through all players
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            -- Loop through tools in the player's backpack
            for _, tool in pairs(player.Backpack:GetDescendants()) do
                if tool:IsA("Tool") then
                    local ToolButton = Instance.new("TextButton")
                    ToolButton.Parent = ScrollingFrame
                    ToolButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ToolButton.Size = UDim2.new(1, 0, 0, 50)
                    ToolButton.Position = UDim2.new(0, 0, 0, yOffset)
                    ToolButton.Font = Enum.Font.SourceSans
                    ToolButton.Text = tool.Name
                    ToolButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                    ToolButton.TextSize = 14.000
                    
                    ToolButton.MouseButton1Click:Connect(function()
                        local clonedTool = tool:Clone()
                        clonedTool.Parent = game.Players.LocalPlayer.Backpack
                    end)
                    
                    yOffset = yOffset + 50
                end
            end
        end
    end
    
    -- Update the canvas size to fit all buttons
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, yOffset)
end)
