
local tappingmania = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")


tappingmania.Name = "tapping mania"
tappingmania.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = tappingmania
Main.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Main.BorderSizePixel = 5
Main.Position = UDim2.new(0.372246683, 0, 0.35025382, 0)
Main.Size = UDim2.new(0, 233, 0, 123)
Main.Active = true
Main.Draggable = true

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
TextLabel.BorderSizePixel = 5
TextLabel.Size = UDim2.new(0, 233, 0, 27)
TextLabel.Font = Enum.Font.JosefinSans
TextLabel.Text = "Tapping Mania| by CokaCola"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(185, 35, 5)
TextButton.Position = UDim2.new(0.0386266112, 0, 0.292682916, 0)
TextButton.Size = UDim2.new(0, 100, 0, 79)
TextButton.Font = Enum.Font.JosefinSans
TextButton.Text = "Start Autotap"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 12.000
TextButton.MouseButton1Down:connect(function()
	getgenv().autotap = true
	while getgenv().autotap == true do
		game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()
		wait()
	end
end)

TextButton_2.Parent = Main
TextButton_2.BackgroundColor3 = Color3.fromRGB(185, 35, 5)
TextButton_2.Position = UDim2.new(0.523605168, 0, 0.292682916, 0)
TextButton_2.Size = UDim2.new(0, 100, 0, 79)
TextButton_2.Font = Enum.Font.JosefinSans
TextButton_2.Text = "End Autotap"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 12.000
TextButton_2.MouseButton1Down:connect(function()
  getgenv().autotap = false
  task.wait()
  end)