local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "CoreGui" ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.Parent = ScreenGui Frame.Active = true Frame.Draggable = true Frame.Size = UDim2.new(0, 300, 0, 200) Frame.Position = UDim2.new(0.5, -150, 0.5, -100) Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50) Frame.BorderSizePixel = 0 Frame.AnchorPoint = Vector2.new(0.5, 0.5) local CornerRadius = 10 local FrameCorner = Instance.new("UICorner") FrameCorner.CornerRadius = UDim.new(0, CornerRadius) FrameCorner.Parent = Frame local TextLabel = Instance.new("TextLabel") TextLabel.Name = "TitleLabel" TextLabel.Parent = Frame TextLabel.Size = UDim2.new(1, 0, 0, 50) TextLabel.Position = UDim2.new(0, 0, 0, 0) TextLabel.BackgroundTransparency = 1 TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255) TextLabel.Font = Enum.Font.GothamBold TextLabel.TextSize = 24 TextLabel.Text = "Scaffold Gui" local Button = Instance.new("TextButton") Button.Name = "MyButton" Button.Parent = Frame Button.Size = UDim2.new(1, 0, 0, 100) Button.Position = UDim2.new(0, 0, 0, 50) Button.BackgroundColor3 = Color3.fromRGB(80, 80, 80) Button.BackgroundTransparency = 3 Button.BorderSizePixel = 0 Button.TextColor3 = Color3.fromRGB(255, 255, 255) Button.Font = Enum.Font.Gotham Button.TextSize = 18 Button.Text = "Scaffold"

Button.MouseButton1Click:Connect(function()
print('Scaffolding script')
local player = game.Players.LocalPlayer

local humanoid = player.Character:WaitForChild("Humanoid")

humanoid.StateChanged:Connect(function(oldState, newState)
    if newState == Enum.HumanoidStateType.Running or newState == Enum.HumanoidStateType.Jumping then
        local block = Instance.new("Part")
        block.Size = Vector3.new(4, 4, 4) -- Set the size of the block
        block.Position = humanoid.RootPart.Position + Vector3.new(0, -block.Size.Y / 2, 0) 
        block.BrickColor = Color3.fromRGB(36,36,36) -- Edit the color you like!
        block.Parent = workspace
    end
end)
end)