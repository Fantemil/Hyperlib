-- Instances:

local Detects = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local GameIcon = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local Supported = Instance.new("TextLabel")
local Game = Instance.new("TextLabel")
local Click = Instance.new("TextLabel")

--Properties:

Detects.Name = "Detects"
Detects.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Detects.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Detects
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.421818167, 0, 0.032482598, 0)
Main.Size = UDim2.new(0, 236, 0, 131)

UICorner.Parent = Main

GameIcon.Name = "GameIcon"
GameIcon.Parent = Main
GameIcon.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
GameIcon.Position = UDim2.new(0.0469999984, 0, -0.159999996, 0)
GameIcon.Size = UDim2.new(0, 236, 0, 131)
GameIcon.ImageColor3 = Color3.fromRGB(185, 185, 185)

UICorner_2.Parent = GameIcon

Supported.Name = "Supported"
Supported.Parent = GameIcon
Supported.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Supported.BackgroundTransparency = 1.000
Supported.BorderColor3 = Color3.fromRGB(255, 255, 255)
Supported.Position = UDim2.new(0.0338983051, 0, 0.618320584, 0)
Supported.Size = UDim2.new(0, 192, 0, 50)
Supported.Font = Enum.Font.SourceSansBold
Supported.Text = "supported game detected:"
Supported.TextColor3 = Color3.fromRGB(255, 255, 255)
Supported.TextSize = 16.000
Supported.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Supported.TextWrapped = true
Supported.TextXAlignment = Enum.TextXAlignment.Left

Game.Name = "Game"
Game.Parent = GameIcon
Game.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Game.BackgroundTransparency = 1.000
Game.BorderColor3 = Color3.fromRGB(255, 255, 255)
Game.Position = UDim2.new(0.0338983051, 0, 0.709923625, 0)
Game.Size = UDim2.new(0, 192, 0, 50)
Game.Font = Enum.Font.SourceSansBold
Game.Text = "game.name"
Game.TextColor3 = Color3.fromRGB(193, 193, 193)
Game.TextSize = 14.000
Game.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Game.TextWrapped = true
Game.TextXAlignment = Enum.TextXAlignment.Left

Click.Name = "Click"
Click.Parent = GameIcon
Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Click.BackgroundTransparency = 1.000
Click.Position = UDim2.new(0.0762711912, 0, 0.320610642, 0)
Click.Size = UDim2.new(0, 200, 0, 50)
Click.Font = Enum.Font.SourceSansBold
Click.Text = "Click to execute"
Click.TextColor3 = Color3.fromRGB(255, 255, 255)
Click.TextSize = 20.000
Click.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Click.TextTransparency = 1.000
Click.TextWrapped = true

-- Scripts:

local function EDELIK_fake_script() -- Game.Game detection 
 local script = Instance.new('LocalScript', Game)

 local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
 
 script.Parent.Text = GameName..""
end
coroutine.wrap(EDELIK_fake_script)()
local function LFXF_fake_script() -- GameIcon.Size 
 local script = Instance.new('LocalScript', GameIcon)

 local mouse = game:GetService("Players").LocalPlayer:GetMouse()
 local Tween = game:GetService("TweenService")
 local time = .5
 local ogSize = script.Parent.Size
 local duration = 0.4
 script.Parent.MouseEnter:Connect(function()
  script.Parent:TweenSize(ogSize + UDim2.new(0.1,0,0.1,0.1), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, duration)
 end)
 
 script.Parent.MouseLeave:Connect(function()
  script.Parent:TweenSize(ogSize, Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, duration)
 end)
 
 script.Parent.MouseButton1Click:Connect(function()
  local thetween1 = Tween:Create(script.Parent, TweenInfo.new(time), {BackgroundTransparency = 1})
  local thetween2 = Tween:Create(script.Parent, TweenInfo.new(time), {ImageTransparency = 1})
  thetween1:Play()
  thetween2:Play()
  wait(1)
  script.Parent:Destroy()
  print("executing script...")
 end)
end
coroutine.wrap(LFXF_fake_script)()
local function VHZVOMY_fake_script() -- GameIcon.Icon 
 local script = Instance.new('LocalScript', GameIcon)

 placeId = game.GameId
 script.Parent.Image = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..placeId.."&fmt=png&wd=420&ht=420"
end
coroutine.wrap(VHZVOMY_fake_script)()
local function MQNV_fake_script() -- Click.LocalScript 
 local script = Instance.new('LocalScript', Click)

 local mouse = game:GetService("Players").LocalPlayer:GetMouse()
 local Tween = game:GetService("TweenService")
 local time = .5
 script.Parent.MouseEnter:Connect(function()
  local thetween1 = Tween:Create(script.Parent, TweenInfo.new(time), {TextTransparency = 0})
  thetween1:Play()
 end)
 
 script.Parent.MouseLeave:Connect(function()
  local thetween = Tween:Create(script.Parent, TweenInfo.new(time), {TextTransparency = 1})
  thetween:Play()
 end)
end
coroutine.wrap(MQNV_fake_script)()