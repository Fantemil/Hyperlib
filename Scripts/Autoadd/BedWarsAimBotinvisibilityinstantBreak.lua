-- Instances:

local NEWScriptHub = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TopLabel = Instance.new("TextLabel")
local LoadButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Executor = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Exit = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local DragIndicator = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local DetectedGame = Instance.new("TextLabel")


-- Variables:
local Returned = loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Game_List.lua"))() -- Grab Game List
local GameScript = ""

local Market = game:GetService("MarketplaceService")

-- Check if game is appart of library
if Returned[game.PlaceId] then
 local Name = Returned[game.PlaceId].Name
 GameScript = Returned[game.PlaceId].Script
 LoadButton.Visible = true
 DetectedGame.Text = "Detected: " .. Name
 print("Detected: " .. Name)
else
 LoadButton.Active = false
 LoadButton.Selectable = false
 LoadButton.Visible = false
 DetectedGame.Text = "No Game Detected"
 print("No Game Detected") 
end

-- Functions:

function CloseHub()
 Main:TweenSize(UDim2.new(0, 592,0, 15), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.8, true)
 Exit:TweenSize(UDim2.new(0, 184, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.4, true)
 LoadButton:TweenSize(UDim2.new(0, 232, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.4, true)
 Executor:TweenSize(UDim2.new(0, 257, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.4, true)
 DetectedGame:TweenSize(UDim2.new(0, 522, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.4, true)
 TopLabel:TweenSize(UDim2.new(0, 591, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.4, true)
 wait(0.4)
 Exit.Visible = false
 LoadButton.Visible = false
 Executor.Visible = false
 DetectedGame.Visible = false
 TopLabel.Visible = false
 wait(0.35)
     Main:TweenSize(UDim2.new(0, 0,0, 15), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.625, true)
     DragIndicator:TweenSize(UDim2.new(0, 0, 0, 10), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.55, true)
 delay(0.7, function() NEWScriptHub:ClearAllChildren() NEWScriptHub:Destroy() end)
end

--Properties:

NEWScriptHub.Name = "NEW Script Hub"
NEWScriptHub.Parent = game:GetService("CoreGui")
NEWScriptHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = NEWScriptHub
Main.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Main.BorderColor3 = Color3.fromRGB(52, 52, 52)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.284, 0,0.237, 0)
Main.Size = UDim2.new(0, 0, 0, 15)
Main.Active = true
Main.Draggable = true

TopLabel.Name = "TopLabel"
TopLabel.Parent = Main
TopLabel.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TopLabel.BackgroundTransparency = 1
TopLabel.BorderColor3 = Color3.fromRGB(52, 52, 52)
TopLabel.BorderSizePixel = 0
TopLabel.Position = UDim2.new(0, 0, 0.058631923, 0)
TopLabel.Size = UDim2.new(0, 591, 0, 0)
TopLabel.Font = Enum.Font.SourceSans
TopLabel.Text = "Totally Original Script hub by SuperJumpMan63#3843"
TopLabel.TextColor3 = Color3.fromRGB(0, 51, 147)
TopLabel.TextScaled = true
TopLabel.TextSize = 28.000
TopLabel.TextWrapped = true
TopLabel.Visible = false

LoadButton.Name = "Load"
LoadButton.Parent = Main
LoadButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
LoadButton.BorderColor3 = Color3.fromRGB(53, 53, 53)
LoadButton.Position = UDim2.new(0.084, 0,0.509, 0)
LoadButton.Size = UDim2.new(0, 232, 0, 0)
LoadButton.Font = Enum.Font.SourceSans
LoadButton.Text = "Load Script"
LoadButton.TextColor3 = Color3.fromRGB(85, 85, 85)
LoadButton.TextScaled = true
LoadButton.TextSize = 14.000
LoadButton.TextWrapped = true
LoadButton.MouseButton1Down:Connect(function()
 delay(0.1, function() loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/master/Scripts/"..GameScript))() end)
 CloseHub()
end)

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = LoadButton

Executor.Name = "Executor"
Executor.Parent = Main
Executor.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Executor.BorderColor3 = Color3.fromRGB(53, 53, 53)
Executor.Position = UDim2.new(0.551, 0, 0.509, 0)
Executor.Size = UDim2.new(0, 257, 0, 0)
Executor.Font = Enum.Font.SourceSans
Executor.Text = "Load Executor"
Executor.TextColor3 = Color3.fromRGB(85, 85, 85)
Executor.TextScaled = true
Executor.TextSize = 14.000
Executor.TextWrapped = true
Executor.Visible = false
Executor.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/master/Scripts/Executor.lua"))()
end)

UICorner_5.CornerRadius = UDim.new(1, 0)
UICorner_5.Parent = Executor

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Exit.BorderColor3 = Color3.fromRGB(53, 53, 53)
Exit.Position = UDim2.new(0.345365673, 0, 0.755982637, 0)
Exit.Size = UDim2.new(0, 184, 0, 0)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "Exit"
Exit.TextColor3 = Color3.fromRGB(85, 85, 85)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true
Exit.Visible = false

Exit.MouseButton1Down:Connect(function()
 CloseHub()
end)

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = Exit

UICorner_3.CornerRadius = UDim.new(0.075000003, 0)
UICorner_3.Parent = Main

DragIndicator.Name = "Drag Indicator"
DragIndicator.Parent = Main
DragIndicator.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
DragIndicator.BorderSizePixel = 0
DragIndicator.Position = UDim2.new(0, 6, 0.0350000001, 0)
DragIndicator.Size = UDim2.new(0, 0, 0, 10)

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = DragIndicator

DetectedGame.Name = "Detected Game"
DetectedGame.Parent = Main
DetectedGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DetectedGame.BackgroundTransparency = 1.000
DetectedGame.Position = UDim2.new(0.0591216236, 0, 0.237785012, 0)
DetectedGame.Size = UDim2.new(0, 522, 0, 0)
DetectedGame.Font = Enum.Font.SourceSans
DetectedGame.TextColor3 = Color3.fromRGB(85, 85, 85)
DetectedGame.TextScaled = true
DetectedGame.TextSize = 14.000
DetectedGame.TextWrapped = true
DetectedGame.Visible = false


-- Opening:
Main:TweenSize(UDim2.new(0, 596,0, 15), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.625, true)
wait(0.0078625)
DragIndicator:TweenSize(UDim2.new(0, 576, 0, 10), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, .55, true)
wait(0.65)
Exit.Visible = true
Executor.Visible = true
DetectedGame.Visible = true
TopLabel.Visible = true
Main:TweenSize(UDim2.new(0, 592,0, 307), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.8, true)
Exit:TweenSize(UDim2.new(0, 184, 0, 50), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.85, true)
LoadButton:TweenSize(UDim2.new(0, 232, 0, 50), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.85, true)
Executor:TweenSize(UDim2.new(0, 257, 0, 50), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.85, true)
DetectedGame:TweenSize(UDim2.new(0, 522, 0, 50), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.85, true)
TopLabel:TweenSize(UDim2.new(0, 591, 0, 42), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.85, true)