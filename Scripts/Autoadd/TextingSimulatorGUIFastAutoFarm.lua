-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton2 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local credit = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.623072207, 0, 0.286413699, 0)
Frame.Size = UDim2.new(0, 296, 0, 172)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.162162155, 0, 0.539128482, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Enable"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Click:Connect(function()
TextButton.Visible = false
TextButton2.Visible = true
    _G.ez = true
     if _G.ez == true then
      while _G.ez == true do
       local ohNumber1 = 2
       game:GetService("ReplicatedStorage").Events.HackingTermStart:FireServer(ohNumber1)
       local ohInstance2 = workspace.HackingTerminals.Hack2.HackColor.Wedge.Rewards
       game:GetService("ReplicatedStorage").Events.TerminalReward:FireServer(ohInstance2)
       task.wait()
             end
end
end)

TextButton2.Parent = Frame
TextButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton2.BorderSizePixel = 0
TextButton2.Position = UDim2.new(0.162162155, 0, 0.539128482, 0)
TextButton2.Size = UDim2.new(0, 200, 0, 50)
TextButton2.Font = Enum.Font.SourceSans
TextButton2.Text = "Disable"
TextButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.TextSize = 14.000
TextButton2.Visible = false
TextButton2.MouseButton1Click:Connect(function()
    TextButton2.Visible = false
    _G.ez = false
    TextButton.Visible = true
end)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.162162155, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "TEXTING SIMULATOR FAST AUTOFARM!"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

credit.Name = "credit"
credit.Parent = Frame
credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credit.BackgroundTransparency = 1.000
credit.BorderSizePixel = 0
credit.Position = UDim2.new(0, 0, 0.825581372, 0)
credit.Size = UDim2.new(0, 296, 0, 30)
credit.Font = Enum.Font.SourceSans
credit.Text = "Made By VVSCRIPT (VVSCRIPT#8383)"
credit.TextColor3 = Color3.fromRGB(0, 0, 0)
credit.TextSize = 14.000