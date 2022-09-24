local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Pro = Instance.new("TextButton")
local Pro2 = Instance.new("TextButton")
local Pro3 = Instance.new("TextButton")
local Pro4 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.130391181, 0, 0.425816029, 0)
Frame.Size = UDim2.new(0, 154, 0, 134)
Frame.Visible = true
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 2
TextLabel.Size = UDim2.new(0, 154, 0, 34)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Workout  Gui"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

Pro.Name = "Pro"
Pro.Parent = Frame
Pro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pro.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pro.Position = UDim2.new(0.0389610417, 0, 0.305970132, 0)
Pro.Size = UDim2.new(0, 65, 0, 31)
Pro.Font = Enum.Font.SourceSans
Pro.Text = "Auto"
Pro.TextColor3 = Color3.fromRGB(0, 0, 0)
Pro.TextSize = 14.000
Pro.MouseButton1Down:connect(function()
while true do
    wait(0.000000000000000000000000000001)
game:GetService("ReplicatedStorage").Remotes.LiftWeight:FireServer()
end
end)

Pro2.Name = "Pro2"
Pro2.Parent = Frame
Pro2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pro2.Position = UDim2.new(0.0389610529, 0, 0.537313461, 0)
Pro2.Size = UDim2.new(0, 65, 0, 31)
Pro2.Font = Enum.Font.SourceSans
Pro2.Text = "Kill Aura"
Pro2.TextColor3 = Color3.fromRGB(0, 0, 0)
Pro2.TextSize = 14.000
Pro2.MouseButton1Down:connect(function()
while true do
    wait(0.000000001)
game:GetService("ReplicatedStorage").Remotes.PVP.Stomp:InvokeServer()
local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Remotes.PVP.Punch:InvokeServer(unpack(args))
end
end)

Pro3.Name = "Pro3"
Pro3.Parent = Frame
Pro3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pro3.Position = UDim2.new(0.506493509, 0, 0.305970162, 0)
Pro3.Size = UDim2.new(0, 65, 0, 31)
Pro3.Font = Enum.Font.SourceSans
Pro3.Text = "Tp Rings"
Pro3.TextColor3 = Color3.fromRGB(0, 0, 0)
Pro3.TextSize = 14.000
Pro3.MouseButton1Down:connect(function()
local me = game.Players.LocalPlayer.Character

me.HumanoidRootPart.CFrame = CFrame.new(-23.599, 197.412, 111.349)
wait(1)
local me = game.Players.LocalPlayer.Character

me.HumanoidRootPart.CFrame = CFrame.new(672.388, 135.696, 399.843)
wait(15)
local me = game.Players.LocalPlayer.Character

me.HumanoidRootPart.CFrame = CFrame.new(-246.184, 235.647, 129.695)
wait(15)
local me = game.Players.LocalPlayer.Character

me.HumanoidRootPart.CFrame = CFrame.new(268.946, 155.516, -177.895)
wait(15)
local me = game.Players.LocalPlayer.Character

me.HumanoidRootPart.CFrame = CFrame.new(-482.029, 135.547, -755.3)
wait(15)
local me = game.Players.LocalPlayer.Character

me.HumanoidRootPart.CFrame = CFrame.new(-23.599, 197.412, 111.349)
end)

Pro4.Name = "Pro4"
Pro4.Parent = Frame
Pro4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pro4.Position = UDim2.new(0.506493509, 0, 0.537313461, 0)
Pro4.Size = UDim2.new(0, 65, 0, 31)
Pro4.Font = Enum.Font.SourceSans
Pro4.Text = "Auto Sell"
Pro4.TextColor3 = Color3.fromRGB(0, 0, 0)
Pro4.TextSize = 14.000
Pro4.MouseButton1Down:connect(function()
while true do
    wait(1)
local me = game.Players.LocalPlayer.Character

me.HumanoidRootPart.CFrame = CFrame.new(-35.7623, 214.51, 5.81947)
wait(10)
local me = game.Players.LocalPlayer.Character

me.HumanoidRootPart.CFrame = CFrame.new(-23.599, 197.412, 111.349)
end
end)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.Position = UDim2.new(0, 0, 0.835820913, 0)
TextLabel_2.Size = UDim2.new(0, 154, 0, 22)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Made "
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 14.000