local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local TextLabel_4 = Instance.new("TextLabel")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
local TextButton_8 = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(249, 185, 255)
Frame.BackgroundTransparency = 0.500
Frame.Position = UDim2.new(0.563469648, 0, 0.384039909, 0)
Frame.Size = UDim2.new(0, 442, 0, 307)
Frame.Draggable = true
Frame.Active = true

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Size = UDim2.new(0, 442, 0, 60)
ImageLabel.Image = "http://www.roblox.com/asset/?id=7112218123"
ImageLabel.ScaleType = Enum.ScaleType.Crop

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.27375567, 0, 0.0162866451, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "DA HOOD LEAN"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 41.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(185, 5, 230)
TextLabel.TextStrokeTransparency = 0.000

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 175, 254)
ScrollingFrame.Position = UDim2.new(0, 0, 0.234527692, 0)
ScrollingFrame.Size = UDim2.new(0, 442, 0, 196)

TextLabel_2.Parent = ScrollingFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 129, 255)
TextLabel_2.Position = UDim2.new(0, 0, 0.0114006512, 0)
TextLabel_2.Size = UDim2.new(0, 428, 0, 41)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Gun Cheats"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 14.000

TextButton.Parent = ScrollingFrame
TextButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextButton.BackgroundTransparency = 0.600
TextButton.Position = UDim2.new(0, 0, 0.092550844, 0)
TextButton.Size = UDim2.new(0, 428, 0, 35)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Aimlock [q toggel and untoggel]"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:connect(function()
 loadstring(game:HttpGet("https://pastebin.com/raw/6EuxbjFL",true))()
end)

TextButton_2.Parent = ScrollingFrame
TextButton_2.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextButton_2.BackgroundTransparency = 0.600
TextButton_2.Position = UDim2.new(0, 0, 0.159326091, 0)
TextButton_2.Size = UDim2.new(0, 428, 0, 35)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Silent aimbot"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000
TextButton_2.MouseButton1Down:connect(function()
 loadstring(game:HttpGet("https://pastebin.com/raw/xqr18Ap6",true))()
end)

TextLabel_3.Parent = ScrollingFrame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 129, 255)
TextLabel_3.Position = UDim2.new(0, 0, 0.231270358, 0)
TextLabel_3.Size = UDim2.new(0, 428, 0, 41)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Player  Cheats"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextSize = 14.000

TextButton_3.Parent = ScrollingFrame
TextButton_3.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextButton_3.BackgroundTransparency = 0.600
TextButton_3.Position = UDim2.new(0, 0, 0.312420547, 0)
TextButton_3.Size = UDim2.new(0, 428, 0, 35)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Headless"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000
TextButton_3.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.Head.Transparency = 1
 game.Players.LocalPlayer.Character.Head.face:Destroy()
 game.Players.LocalPlayer.Character.Head.face:Destroy()
end)


TextButton_4.Parent = ScrollingFrame
TextButton_4.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextButton_4.BackgroundTransparency = 0.600
TextButton_4.Position = UDim2.new(0, 0, 0.387339115, 0)
TextButton_4.Size = UDim2.new(0, 428, 0, 35)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Fly [e]"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 14.000
TextButton_4.MouseButton1Down:connect(function()
 loadstring(game:HttpGet("https://pastebin.com/raw/dRK3dw7X",true))()
end)


TextButton_5.Parent = ScrollingFrame
TextButton_5.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextButton_5.BackgroundTransparency = 0.600
TextButton_5.Position = UDim2.new(0.0, 0, 0.460847914, 0)
TextButton_5.Size = UDim2.new(0, 428, 0, 35)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "SOON"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextSize = 14.000

TextLabel_4.Parent = ScrollingFrame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 129, 255)
TextLabel_4.Position = UDim2.new(0, 0, 0.537459254, 0)
TextLabel_4.Size = UDim2.new(0, 428, 0, 41)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Teleport (Best Guns/Food)"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextSize = 14.000


TextButton_6.Parent = ScrollingFrame
TextButton_6.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextButton_6.BackgroundTransparency = 0.600
TextButton_6.Position = UDim2.new(0.0022624433, 0, 0.61815989, 0)
TextButton_6.Size = UDim2.new(0, 427, 0, 35)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "Revolver"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextSize = 14.000
TextButton_6.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

TextButton_7.Parent = ScrollingFrame
TextButton_7.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextButton_7.BackgroundTransparency = 0.600
TextButton_7.Position = UDim2.new(-2.32830644e-10, 0, 0.69796443, 0)
TextButton_7.Size = UDim2.new(0, 427, 0, 35)
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "Double Barrel"
TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.TextSize = 14.000
TextButton_7.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)


TextButton_8.Parent = ScrollingFrame
TextButton_8.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
TextButton_8.BackgroundTransparency = 0.600
TextButton_8.Position = UDim2.new(0.0022624433, 0, 0.774511635, 0)
TextButton_8.Size = UDim2.new(0, 427, 0, 35)
TextButton_8.Font = Enum.Font.SourceSans
TextButton_8.Text = "PopCorn"
TextButton_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.TextSize = 14.000
TextButton_8.MouseButton1Down:connect(function()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-995, 21.6998043, -153.100037, 1, 0, 0, 0, 1, 0, 0, 0, 1) 
end)


TextLabel_5.Parent = Frame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.27375567, 0, 0.902280152, 0)
TextLabel_5.Size = UDim2.new(0, 200, 0, 30)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "MADE BY WYLD (Skidder)"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextSize = 14.000