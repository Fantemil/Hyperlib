repeat wait() makefolder("sandboxSchematics") until isfolder("sandboxSchematics")
getgenv()["IrisAd"] = true
local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()
local Logo = "rbxasset://9845341520"
getgenv().settings = {
    players = {
        selectedPlayer = nil
    },
    building = {
        selectedBlock = nil
    }
}

local ScreenGui = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local BG2 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local PlayerHolder = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local PlayerOptions = Instance.new("Frame")
local SelectedPlayerLabel = Instance.new("TextLabel")
local SelectedPlayerCostLabel = Instance.new("TextLabel")
local SavePlayerBaseButton = Instance.new("TextButton")
local PlayerBaseSaveName = Instance.new("TextBox")
local SelectedPlayerPlot = Instance.new("TextLabel")
local SelecetedPlayerLogoLabel = Instance.new("ImageLabel")
local HelloMessage = Instance.new("TextLabel")
local SchematicStats = Instance.new("Frame")
local BlocksPlacedLabel = Instance.new("TextLabel")
local BaseCostLabel = Instance.new("TextLabel")
local UserLogoLabel = Instance.new("ImageLabel")
local SchematicBuilding = Instance.new("Frame")
local BlocksFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local BlockName_ButtonTemplate = Instance.new("ImageButton")
local SelectedBuildingBlock = Instance.new("TextLabel")
local BuildFloorButton = Instance.new("TextButton")
local UpdateBuildCostButton = Instance.new("TextButton")
local SchematicOptions = Instance.new("Frame")
local SaveBaseNameBox = Instance.new("TextBox")
local SaveCurrentBaseButton = Instance.new("TextButton")
local LoadBaseButton = Instance.new("TextButton")
local LoadBaseNameBox = Instance.new("TextBox")
local WipeBaseButton = Instance.new("TextButton")
local LagServerButton = Instance.new("TextButton")
local Ad = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")

--Properties:

ScreenGui.Parent = game:GetService('CoreGui')
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

BG.Name = "BG"
BG.Parent = ScreenGui
BG.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
BG.BorderSizePixel = 0
BG.Position = UDim2.new(0.330553442, 0, 0.128244564, 0)
BG.Size = UDim2.new(0, 447, 0, 560)

BG2.Name = "BG2"
BG2.Parent = BG
BG2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
BG2.BorderColor3 = Color3.fromRGB(59, 59, 59)
BG2.Position = UDim2.new(0.00984400138, 0, 0.0136599736, 0)
BG2.Size = UDim2.new(0, 438, 0, 542)

Title.Name = "Title"
Title.Parent = BG2
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 161, 0, 35)
Title.Font = Enum.Font.GothamBold
Title.Text = "Sandbox Schematics"
Title.TextColor3 = Color3.fromRGB(238, 238, 238)
Title.TextSize = 14.000

PlayerHolder.Name = "PlayerHolder"
PlayerHolder.Parent = BG2
PlayerHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlayerHolder.BorderColor3 = Color3.fromRGB(59, 59, 59)
PlayerHolder.Position = UDim2.new(0, 13, 0, 34)
PlayerHolder.Size = UDim2.new(0, 114, 0, 127)

UIListLayout.Parent = PlayerHolder
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
UIListLayout.Padding = UDim.new(0, 3)

PlayerOptions.Name = "PlayerOptions"
PlayerOptions.Parent = BG2
PlayerOptions.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlayerOptions.BorderColor3 = Color3.fromRGB(59, 59, 59)
PlayerOptions.Position = UDim2.new(0, 135, 0, 34)
PlayerOptions.Size = UDim2.new(0, 289, 0, 127)

SelectedPlayerLabel.Name = "SelectedPlayerLabel"
SelectedPlayerLabel.Parent = PlayerOptions
SelectedPlayerLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedPlayerLabel.BackgroundTransparency = 1.000
SelectedPlayerLabel.Position = UDim2.new(0.0215591379, 0, 0.0708661377, 0)
SelectedPlayerLabel.Size = UDim2.new(0, 282, 0, 21)
SelectedPlayerLabel.Font = Enum.Font.GothamMedium
SelectedPlayerLabel.Text = "Selected Player: None"
SelectedPlayerLabel.TextColor3 = Color3.fromRGB(238, 238, 238)
SelectedPlayerLabel.TextSize = 10.000
SelectedPlayerLabel.TextXAlignment = Enum.TextXAlignment.Left

SelectedPlayerCostLabel.Name = "SelectedPlayerCostLabel"
SelectedPlayerCostLabel.Parent = PlayerOptions
SelectedPlayerCostLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedPlayerCostLabel.BackgroundTransparency = 1.000
SelectedPlayerCostLabel.Position = UDim2.new(0.0215591379, 0, 0.236220464, 0)
SelectedPlayerCostLabel.Size = UDim2.new(0, 282, 0, 21)
SelectedPlayerCostLabel.Font = Enum.Font.GothamMedium
SelectedPlayerCostLabel.Text = "Base Cost: $0"
SelectedPlayerCostLabel.TextColor3 = Color3.fromRGB(238, 238, 238)
SelectedPlayerCostLabel.TextSize = 10.000
SelectedPlayerCostLabel.TextXAlignment = Enum.TextXAlignment.Left

SavePlayerBaseButton.Name = "SavePlayerBaseButton"
SavePlayerBaseButton.Parent = PlayerOptions
SavePlayerBaseButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SavePlayerBaseButton.BorderColor3 = Color3.fromRGB(59, 59, 59)
SavePlayerBaseButton.Position = UDim2.new(0.0215749238, 0, 0.811759412, 0)
SavePlayerBaseButton.Size = UDim2.new(0, 274, 0, 18)
SavePlayerBaseButton.Font = Enum.Font.Gotham
SavePlayerBaseButton.Text = "Save Players Base"
SavePlayerBaseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SavePlayerBaseButton.TextSize = 10.000

PlayerBaseSaveName.Name = "PlayerBaseSaveName"
PlayerBaseSaveName.Parent = PlayerOptions
PlayerBaseSaveName.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlayerBaseSaveName.BorderColor3 = Color3.fromRGB(59, 59, 59)
PlayerBaseSaveName.Position = UDim2.new(0.0215591379, 0, 0.653543293, 0)
PlayerBaseSaveName.Size = UDim2.new(0, 274, 0, 17)
PlayerBaseSaveName.Font = Enum.Font.Gotham
PlayerBaseSaveName.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
PlayerBaseSaveName.PlaceholderText = "Example.json"
PlayerBaseSaveName.Text = ""
PlayerBaseSaveName.TextColor3 = Color3.fromRGB(255, 255, 255)

SelectedPlayerPlot.Name = "SelectedPlayerPlot"
SelectedPlayerPlot.Parent = PlayerOptions
SelectedPlayerPlot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedPlayerPlot.BackgroundTransparency = 1.000
SelectedPlayerPlot.Position = UDim2.new(0.0215591379, 0, 0.40157479, 0)
SelectedPlayerPlot.Size = UDim2.new(0, 282, 0, 21)
SelectedPlayerPlot.Font = Enum.Font.GothamMedium
SelectedPlayerPlot.Text = "Plot: 0"
SelectedPlayerPlot.TextColor3 = Color3.fromRGB(238, 238, 238)
SelectedPlayerPlot.TextSize = 10.000
SelectedPlayerPlot.TextXAlignment = Enum.TextXAlignment.Left

SelecetedPlayerLogoLabel.Name = "SelecetedPlayerLogoLabel"
SelecetedPlayerLogoLabel.Parent = PlayerOptions
SelecetedPlayerLogoLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelecetedPlayerLogoLabel.BackgroundTransparency = 1.000
SelecetedPlayerLogoLabel.Position = UDim2.new(0.749027371, 0, 0.0719909668, 0)
SelecetedPlayerLogoLabel.Size = UDim2.new(0, 62, 0, 62)
SelecetedPlayerLogoLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

HelloMessage.Name = "HelloMessage"
HelloMessage.Parent = BG2
HelloMessage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HelloMessage.BackgroundTransparency = 1.000
HelloMessage.Position = UDim2.new(0.367579907, 0, 0, 0)
HelloMessage.Size = UDim2.new(0, 269, 0, 35)
HelloMessage.Font = Enum.Font.GothamMedium
HelloMessage.Text = "Hello, Username"
HelloMessage.TextColor3 = Color3.fromRGB(238, 238, 238)
HelloMessage.TextSize = 12.000
HelloMessage.TextXAlignment = Enum.TextXAlignment.Right

SchematicStats.Name = "SchematicStats"
SchematicStats.Parent = BG2
SchematicStats.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SchematicStats.BorderColor3 = Color3.fromRGB(59, 59, 59)
SchematicStats.Position = UDim2.new(0, 13, 0, 169)
SchematicStats.Size = UDim2.new(0, 411, 0, 63)

BlocksPlacedLabel.Name = "BlocksPlacedLabel"
BlocksPlacedLabel.Parent = SchematicStats
BlocksPlacedLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BlocksPlacedLabel.BackgroundTransparency = 1.000
BlocksPlacedLabel.Position = UDim2.new(0.0215591472, 0, 0.166104376, 0)
BlocksPlacedLabel.Size = UDim2.new(0.956204355, 0, 0.333333343, 0)
BlocksPlacedLabel.Font = Enum.Font.GothamMedium
BlocksPlacedLabel.Text = "Blocks Placed: 0"
BlocksPlacedLabel.TextColor3 = Color3.fromRGB(238, 238, 238)
BlocksPlacedLabel.TextSize = 10.000
BlocksPlacedLabel.TextXAlignment = Enum.TextXAlignment.Left

BaseCostLabel.Name = "BaseCostLabel"
BaseCostLabel.Parent = SchematicStats
BaseCostLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BaseCostLabel.BackgroundTransparency = 1.000
BaseCostLabel.Position = UDim2.new(0.0215591472, 0, 0.493325293, 0)
BaseCostLabel.Size = UDim2.new(0.956204355, 0, 0.333333343, 0)
BaseCostLabel.Font = Enum.Font.GothamMedium
BaseCostLabel.Text = "Base Cost (Manual Update): $0"
BaseCostLabel.TextColor3 = Color3.fromRGB(238, 238, 238)
BaseCostLabel.TextSize = 10.000
BaseCostLabel.TextXAlignment = Enum.TextXAlignment.Left

UserLogoLabel.Name = "UserLogoLabel"
UserLogoLabel.Parent = SchematicStats
UserLogoLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserLogoLabel.BackgroundTransparency = 1.000
UserLogoLabel.Position = UDim2.new(0.866180062, 0, 0.142857149, 0)
UserLogoLabel.Size = UDim2.new(0, 45, 0, 45)
UserLogoLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

SchematicBuilding.Name = "SchematicBuilding"
SchematicBuilding.Parent = BG2
SchematicBuilding.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SchematicBuilding.BorderColor3 = Color3.fromRGB(59, 59, 59)
SchematicBuilding.Position = UDim2.new(0, 13, 0, 239)
SchematicBuilding.Size = UDim2.new(0, 411, 0, 159)

BlocksFrame.Name = "BlocksFrame"
BlocksFrame.Parent = SchematicBuilding
BlocksFrame.Active = true
BlocksFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
BlocksFrame.BorderColor3 = Color3.fromRGB(59, 59, 59)
BlocksFrame.Position = UDim2.new(0.0215591472, 0, 0.0483870581, 0)
BlocksFrame.Size = UDim2.new(0, 393, 0, 78)
BlocksFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
BlocksFrame.ScrollBarThickness = 4
BlocksFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

UIGridLayout.Parent = BlocksFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 3, 0, 3)
UIGridLayout.CellSize = UDim2.new(0, 40, 0, 40)

BlockName_ButtonTemplate.Name = "BlockName_ButtonTemplate"
BlockName_ButtonTemplate.Parent = BlocksFrame
BlockName_ButtonTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BlockName_ButtonTemplate.BackgroundTransparency = 1.000
BlockName_ButtonTemplate.Position = UDim2.new(0.0152671747, 0, 0.0214546546, 0)
BlockName_ButtonTemplate.Size = UDim2.new(0, 34, 0, 34)
BlockName_ButtonTemplate.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
BlockName_ButtonTemplate.ImageTransparency = 1.000

SelectedBuildingBlock.Name = "SelectedBuildingBlock"
SelectedBuildingBlock.Parent = SchematicBuilding
SelectedBuildingBlock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedBuildingBlock.BackgroundTransparency = 1.000
SelectedBuildingBlock.Position = UDim2.new(0.0191260576, 0, 0.53717351, 0)
SelectedBuildingBlock.Size = UDim2.new(0.956204355, 0, 0.144654095, 0)
SelectedBuildingBlock.Font = Enum.Font.GothamMedium
SelectedBuildingBlock.Text = "Selected Block: None"
SelectedBuildingBlock.TextColor3 = Color3.fromRGB(238, 238, 238)
SelectedBuildingBlock.TextSize = 10.000
SelectedBuildingBlock.TextXAlignment = Enum.TextXAlignment.Left

BuildFloorButton.Name = "BuildFloorButton"
BuildFloorButton.Parent = SchematicBuilding
BuildFloorButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
BuildFloorButton.BorderColor3 = Color3.fromRGB(59, 59, 59)
BuildFloorButton.Position = UDim2.new(0.0167087447, 0, 0.679684043, 0)
BuildFloorButton.Size = UDim2.new(0, 395, 0, 18)
BuildFloorButton.Font = Enum.Font.Gotham
BuildFloorButton.Text = "Build Floor"
BuildFloorButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BuildFloorButton.TextSize = 10.000

UpdateBuildCostButton.Name = "UpdateBuildCostButton"
UpdateBuildCostButton.Parent = SchematicBuilding
UpdateBuildCostButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
UpdateBuildCostButton.BorderColor3 = Color3.fromRGB(59, 59, 59)
UpdateBuildCostButton.Position = UDim2.new(0.0167087447, 0, 0.830627441, 0)
UpdateBuildCostButton.Size = UDim2.new(0, 395, 0, 18)
UpdateBuildCostButton.Font = Enum.Font.Gotham
UpdateBuildCostButton.Text = "Update Build Cost"
UpdateBuildCostButton.TextColor3 = Color3.fromRGB(255, 255, 255)
UpdateBuildCostButton.TextSize = 10.000

SchematicOptions.Name = "SchematicOptions"
SchematicOptions.Parent = BG2
SchematicOptions.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SchematicOptions.BorderColor3 = Color3.fromRGB(59, 59, 59)
SchematicOptions.Position = UDim2.new(0, 13, 0, 406)
SchematicOptions.Size = UDim2.new(0, 411, 0, 77)

SaveBaseNameBox.Name = "SaveBaseNameBox"
SaveBaseNameBox.Parent = SchematicOptions
SaveBaseNameBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SaveBaseNameBox.BorderColor3 = Color3.fromRGB(59, 59, 59)
SaveBaseNameBox.Position = UDim2.new(0.0217522755, 0, 0.118902467, 0)
SaveBaseNameBox.Size = UDim2.new(0, 189, 0, 17)
SaveBaseNameBox.Font = Enum.Font.Gotham
SaveBaseNameBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
SaveBaseNameBox.PlaceholderText = "Example.json"
SaveBaseNameBox.Text = ""
SaveBaseNameBox.TextColor3 = Color3.fromRGB(255, 255, 255)

SaveCurrentBaseButton.Name = "SaveCurrentBaseButton"
SaveCurrentBaseButton.Parent = SchematicOptions
SaveCurrentBaseButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SaveCurrentBaseButton.BorderColor3 = Color3.fromRGB(59, 59, 59)
SaveCurrentBaseButton.Position = UDim2.new(0.0199999288, 0, 0.409999996, 0)
SaveCurrentBaseButton.Size = UDim2.new(0, 189, 0, 18)
SaveCurrentBaseButton.Font = Enum.Font.Gotham
SaveCurrentBaseButton.Text = "Save Base"
SaveCurrentBaseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveCurrentBaseButton.TextSize = 10.000

LoadBaseButton.Name = "LoadBaseButton"
LoadBaseButton.Parent = SchematicOptions
LoadBaseButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
LoadBaseButton.BorderColor3 = Color3.fromRGB(59, 59, 59)
LoadBaseButton.Position = UDim2.new(0.516866207, 0, 0.409999996, 0)
LoadBaseButton.Size = UDim2.new(0, 189, 0, 18)
LoadBaseButton.Font = Enum.Font.Gotham
LoadBaseButton.Text = "Load Base"
LoadBaseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadBaseButton.TextSize = 10.000

LoadBaseNameBox.Name = "LoadBaseNameBox"
LoadBaseNameBox.Parent = SchematicOptions
LoadBaseNameBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
LoadBaseNameBox.BorderColor3 = Color3.fromRGB(59, 59, 59)
LoadBaseNameBox.Position = UDim2.new(0.518102646, 0, 0.118902467, 0)
LoadBaseNameBox.Size = UDim2.new(0, 189, 0, 17)
LoadBaseNameBox.Font = Enum.Font.Gotham
LoadBaseNameBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
LoadBaseNameBox.PlaceholderText = "Example.json"
LoadBaseNameBox.Text = ""
LoadBaseNameBox.TextColor3 = Color3.fromRGB(255, 255, 255)

WipeBaseButton.Name = "WipeBaseButton"
WipeBaseButton.Parent = SchematicOptions
WipeBaseButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
WipeBaseButton.BorderColor3 = Color3.fromRGB(59, 59, 59)
WipeBaseButton.Position = UDim2.new(0.0219999999, 0, 0.699999988, 0)
WipeBaseButton.Size = UDim2.new(0, 393, 0, 18)
WipeBaseButton.Font = Enum.Font.Gotham
WipeBaseButton.Text = "Wipe Base"
WipeBaseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
WipeBaseButton.TextSize = 10.000

LagServerButton.Name = "LagServerButton"
LagServerButton.Parent = BG2
LagServerButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
LagServerButton.BorderColor3 = Color3.fromRGB(59, 59, 59)
LagServerButton.Position = UDim2.new(0, 13, 0, 494)
LagServerButton.Size = UDim2.new(0, 411, 0, 18)
LagServerButton.Font = Enum.Font.Gotham
LagServerButton.Text = "Lag Server (You will eventually get kicked)"
LagServerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LagServerButton.TextSize = 10.000

Ad.Name = "Ad"
Ad.Parent = BG2
Ad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ad.BackgroundTransparency = 1.000
Ad.Position = UDim2.new(0.0296803657, 0, 0.944649458, 0)
Ad.Size = UDim2.new(0, 411, 0, 30)
Ad.Font = Enum.Font.GothamBold
Ad.Text = "discord.gg/arilis for more <3"
Ad.TextColor3 = Color3.fromRGB(238, 238, 238)
Ad.TextSize = 14.000

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.06, Color3.fromRGB(255, 85, 0)), ColorSequenceKeypoint.new(0.11, Color3.fromRGB(255, 170, 0)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(254, 255, 0)), ColorSequenceKeypoint.new(0.22, Color3.fromRGB(169, 255, 0)), ColorSequenceKeypoint.new(0.28, Color3.fromRGB(83, 255, 0)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 1)), ColorSequenceKeypoint.new(0.39, Color3.fromRGB(0, 255, 86)), ColorSequenceKeypoint.new(0.45, Color3.fromRGB(0, 255, 171)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 252, 255)), ColorSequenceKeypoint.new(0.56, Color3.fromRGB(0, 167, 255)), ColorSequenceKeypoint.new(0.61, Color3.fromRGB(0, 82, 255)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(2, 0, 255)), ColorSequenceKeypoint.new(0.72, Color3.fromRGB(88, 0, 255)), ColorSequenceKeypoint.new(0.78, Color3.fromRGB(173, 0, 255)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 0, 251)), ColorSequenceKeypoint.new(0.89, Color3.fromRGB(255, 0, 166)), ColorSequenceKeypoint.new(0.95, Color3.fromRGB(255, 0, 80)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
UIGradient.Parent = Ad

spawn(function()
    local gradient = UIGradient
    local ts = game:GetService("TweenService") 
    local ti = TweenInfo.new(3.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out)
    local offset1 = {Offset = Vector2.new(1, 0)}
    local create = ts:Create(gradient, ti, offset1)
    local startingPos = Vector2.new(-1, 0) --start on the right, tween to the left so it looks like the shine went from left to right
    local addWait = 1
    gradient.Offset = startingPos

    local function animate()
        
        create:Play()
        create.Completed:Wait() --wait for tween to stop
        gradient.Offset = startingPos --reset offset
        create:Play() --play again (I did this only 2 times per "couplet", you can do it more times if you want)
        create.Completed:Wait()
        gradient.Offset = startingPos
        wait(addWait) --wait some bit before the next couplet
        animate() --call itself to make this into a loop
        
    end

    animate()
end)

local dragger = {}; 
local resizer = {};

do
 local mouse = game:GetService("Players").LocalPlayer:GetMouse();
 local inputService = game:GetService('UserInputService');
 local heartbeat = game:GetService("RunService").Heartbeat;
 -- // credits to Ririchi / Inori for this cute drag function :)
 function dragger.new(frame)
     local s, event = pcall(function()
      return frame.MouseEnter
     end)

     if s then
      frame.Active = true;

      event:connect(function()
       local input = frame.InputBegan:connect(function(key)
        if key.UserInputType == Enum.UserInputType.MouseButton1 then
         local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
         while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
          frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true);
         end
        end
       end)

       local leave;
       leave = frame.MouseLeave:connect(function()
        input:disconnect();
        leave:disconnect();
       end)
      end)
     end
 end
 
 function resizer.new(p, s)
  p:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
   s.Size = UDim2.new(s.Size.X.Scale, s.Size.X.Offset, s.Size.Y.Scale, p.AbsoluteSize.Y);
  end)
 end
end

dragger.new(BG)


local Prices = {
 Block1 = {
  Name = "Wood Brick", 
  Info = "It's a block stacked with wood.", 
  ImageId = "rbxassetid://7940613196", 
  Price = 0, 
  Tier = 0, 
  Layout = 0
 }, 
 Block2 = {
  Name = "Log", 
  Info = "It's a block cut out of logs.", 
  ImageId = "rbxassetid://7940615497", 
  Price = 8, 
  Tier = 0, 
  Layout = 1
 }, 
 Block3 = {
  Name = "Plank", 
  Info = "It's a smoothly processed wood.", 
  ImageId = "rbxassetid://7940619925", 
  Price = 12, 
  Tier = 0, 
  Layout = 2
 }, 
 Block4 = {
  Name = "Dirt", 
  Info = "It's a Dirt.It's a little dirty", 
  ImageId = "rbxassetid://8015959645", 
  Price = 25, 
  Tier = 1, 
  Layout = 3
 }, 
 Block5 = {
  Name = "Sand", 
  Info = "It's a clean sand.", 
  ImageId = "rbxassetid://8015957139", 
  Price = 30, 
  Tier = 1, 
  Layout = 4
 }, 
 Block6 = {
  Name = "Green Leaves", 
  Info = "It's a block made of green leaves.", 
  ImageId = "rbxassetid://7940727165", 
  Price = 50, 
  Tier = 1, 
  Layout = 5
 }, 
 Block7 = {
  Name = "Maple Leaves", 
  Info = "It's a block made of maple leaves.", 
  ImageId = "rbxassetid://7940725346", 
  Price = 55, 
  Tier = 1, 
  Layout = 6
 }, 
 Block8 = {
  Name = "Stone", 
  Info = "It's a rough stone block.", 
  ImageId = "rbxassetid://7940657947", 
  Price = 90, 
  Tier = 2, 
  Layout = 7
 }, 
 Block9 = {
  Name = "Red Bricks", 
  Info = "It's a made of red bricks.", 
  ImageId = "rbxassetid://8015900420", 
  Price = 100, 
  Tier = 2, 
  Layout = 8
 }, 
 Block10 = {
  Name = "Dark Bricks", 
  Info = "It's a block made of dark stones.", 
  ImageId = "rbxassetid://7940667273", 
  Price = 110, 
  Tier = 2, 
  Layout = 9
 }, 
 Block11 = {
  Name = "Brights Bricks", 
  Info = "It's a block made of bright stones.", 
  ImageId = "rbxassetid://7940664800", 
  Price = 110, 
  Tier = 2, 
  Layout = 10
 }, 
 Block12 = {
  Name = "Glass", 
  Info = "It's a transparent glass block.", 
  ImageId = "rbxassetid://7940653658", 
  Price = 150, 
  Tier = 2, 
  Layout = 11
 }, 
 Block13 = {
  Name = "Iron", 
  Info = "It's a block made of iron. ", 
  ImageId = "rbxassetid://7940674890", 
  Price = 170, 
  Tier = 3, 
  Layout = 12
 }, 
 Block14 = {
  Name = "Bronze", 
  Info = "It's a block made of bronze.", 
  ImageId = "rbxassetid://8022157446", 
  Price = 250, 
  Tier = 3, 
  Layout = 13
 }, 
 Block15 = {
  Name = "Silver", 
  Info = "It's a block made of silver.", 
  ImageId = "rbxassetid://7946507813", 
  Price = 400, 
  Tier = 3, 
  Layout = 14
 }, 
 Block16 = {
  Name = "Gold", 
  Info = "It's an expensive gold block.", 
  ImageId = "rbxassetid://7940677446", 
  Price = 1000, 
  Tier = 3, 
  Layout = 15
 }, 
 Block17 = {
  Name = "Emerald Ore", 
  Info = "It's an unworked emerald ore.", 
  ImageId = "rbxassetid://8015973065", 
  Price = 950, 
  Tier = 4, 
  Layout = 16
 }, 
 Block18 = {
  Name = "Steel", 
  Info = "It's a block made of steel.", 
  ImageId = "rbxassetid://8015985316", 
  Price = 500, 
  Tier = 4, 
  Layout = 17
 }, 
 Block19 = {
  Name = "Emerald", 
  Info = "It's an too emerald block.It's too expensive", 
  ImageId = "rbxassetid://8015988999", 
  Price = 2300, 
  Tier = 4, 
  Layout = 18
 }, 
 Block20 = {
  Name = "Emerald Glass", 
  Info = "It's a transparent glass block.It's unbreakable glass maybe..?", 
  ImageId = "rbxassetid://8016350753", 
  Price = 2000, 
  Tier = 4, 
  Layout = 19
 }, 
 Block21 = {
  Name = "Ruby Ore", 
  Info = "It's a ruby that hasn't been processed yet.", 
  ImageId = "rbxassetid://8315883549", 
  Price = 3200, 
  Tier = 5, 
  Layout = 20
 }, 
 Block22 = {
  Name = "Ruby", 
  Info = "It is an expensive processed ruby. This price is very cheap!", 
  ImageId = "rbxassetid://8315910206", 
  Price = 12000, 
  Tier = 5, 
  Layout = 21
 }, 
 Block23 = {
  Name = "Diamond Ore", 
  Info = "It's a diamond that hasn't been processed yet.", 
  ImageId = "rbxassetid://8315891414", 
  Price = 5000, 
  Tier = 6, 
  Layout = 22
 }, 
 Block24 = {
  Name = "Diamond", 
  Info = "It's a very solid diamond block. Ice! Ice!", 
  ImageId = "rbxassetid://8315921665", 
  Price = 20000, 
  Tier = 6, 
  Layout = 23
 }, 
 Dropper1 = {
  Name = "Wooden Dropper", 
  Info = "It's an dropper made of wood. \nIt produces $4 per 5 seconds.", 
  ImageId = "rbxassetid://7940707009", 
  Price = 240, 
  Money = 4, 
  Timer = 5, 
  Part = "Part1", 
  Tier = 0, 
  Layout = 0
 }, 
 Dropper2 = {
  Name = "Stone Dropper", 
  Info = "It's an dropper made of stone. \nIt produces $8 per 5 seconds.", 
  ImageId = "rbxassetid://7940709471", 
  Price = 1100, 
  Money = 8, 
  Timer = 5, 
  Part = "Part2", 
  Tier = 1, 
  Layout = 1
 }, 
 Dropper3 = {
  Name = "Iron Dropper", 
  Info = "It's an dropper made of iron. \nIt produces $12 per 5 seconds.", 
  ImageId = "rbxassetid://7940712456", 
  Price = 2500, 
  Money = 12, 
  Timer = 5, 
  Part = "Part3", 
  Tier = 2, 
  Layout = 2
 }, 
 Dropper4 = {
  Name = "Golden Dropper", 
  Info = "It's an dropper made of gold. \nIt produces $18 per 5 seconds.", 
  ImageId = "rbxassetid://7940714006", 
  Price = 5000, 
  Money = 18, 
  Timer = 5, 
  Part = "Part4", 
  Tier = 3, 
  Layout = 3
 }, 
 Dropper5 = {
  Name = "Emerald Dropper", 
  Info = "It's an dropper made of Emerald. \nIt produces $25 per 5 seconds.", 
  ImageId = "rbxassetid://7940718381", 
  Price = 15000, 
  Money = 25, 
  Timer = 5, 
  Part = "Part5", 
  Tier = 4, 
  Layout = 4
 }, 
 Dropper6 = {
  Name = "Ruby Dropper", 
  Info = "It's an dropper made of Ruby. \nIt produces $33 per 5 seconds.", 
  ImageId = "rbxassetid://8308698064", 
  Price = 15000, 
  Money = 33, 
  Timer = 5, 
  Part = "Part6", 
  Tier = 5, 
  Layout = 5
 }, 
 Dropper7 = {
  Name = "Diamond Dropper", 
  Info = "It's an dropper made of Diamond. \nIt produces $42 per 5 seconds.", 
  ImageId = "rbxassetid://8308701531", 
  Price = 15000, 
  Money = 42, 
  Timer = 5, 
  Part = "Part7", 
  Tier = 6, 
  Layout = 6
 }, 
 Mega_Dropper1 = {
  Name = "MEGA Iron", 
  Info = "It's an dropper made of iron.\nOnly one can be placed.\nIt produces $15 per 5 seconds.", 
  ImageId = "rbxassetid://8155318784", 
  Price = 0, 
  Money = 15, 
  Timer = 5, 
  Part = "Part10", 
  Tier = 0, 
  Layout = 1
 }, 
 Mega_Dropper2 = {
  Name = "MEGA Gold", 
  Info = "It's an dropper made of Gold.\nOnly one can be placed.\nIt produces $22 per 5 seconds.", 
  ImageId = "rbxassetid://8155320225", 
  Price = 0, 
  Money = 22, 
  Timer = 5, 
  Part = "Part11", 
  Tier = 0, 
  Layout = 2
 }, 
 Mega_Dropper3 = {
  Name = "MEGA Emerald", 
  Info = "It's an dropper made of Emerald.\nOnly one can be placed.\nIt produces $35 per 5 seconds.", 
  ImageId = "rbxassetid://8155322169", 
  Price = 0, 
  Money = 35, 
  Timer = 5, 
  Part = "Part12", 
  Tier = 0, 
  Layout = 3
 }, 
 Mega_Dropper4 = {
  Name = "MEGA Ruby", 
  Info = "It's an dropper made of Ruby.\nOnly one can be placed.\nIt produces $75 per 8 seconds.", 
  ImageId = "rbxassetid://8308686961", 
  Price = 0, 
  Money = 75, 
  Timer = 5, 
  Part = "Part13", 
  Tier = 0, 
  Layout = 4
 }, 
 Mega_Dropper5 = {
  Name = "MEGA Diamond", 
  Info = "It's an dropper made of Diamond.\nOnly one can be placed.\nIt produces $130 per 10 seconds.", 
  ImageId = "rbxassetid://8308689179", 
  Price = 0, 
  Money = 130, 
  Timer = 5, 
  Part = "Part14", 
  Tier = 0, 
  Layout = 5
 }, 
 Rail1 = {
  Name = "Wooden Rail", 
  Info = "It's a wooden rail.", 
  ImageId = "rbxassetid://7940750584", 
  Price = 25, 
  Speed = 5, 
  Tier = 0, 
  Layout = 0
 }, 
 Rail1_Up = {
  Name = "Wooden Rail Up", 
  Info = "It's a wooden rail that raises money upward.", 
  ImageId = "rbxassetid://7940756180", 
  Price = 25, 
  Speed = 5, 
  Tier = 0, 
  Layout = 1
 }, 
 Rail1_Down = {
  Name = "Wooden Rail Down", 
  Info = "It's a wooden rail that lowers money downward.", 
  ImageId = "rbxassetid://7940753595", 
  Price = 25, 
  Speed = 5, 
  Tier = 0, 
  Layout = 2
 }, 
 Rail2 = {
  Name = "Stone Rail", 
  Info = "It's a rail made of stone . It's a little faster.", 
  ImageId = "rbxassetid://7940758771", 
  Price = 130, 
  Speed = 7, 
  Tier = 2, 
  Layout = 3
 }, 
 Rail2_Up = {
  Name = "Stone Rail Up", 
  Info = "It's a stone rail that raises money upward.", 
  ImageId = "rbxassetid://7940784442", 
  Price = 130, 
  Speed = 7, 
  Tier = 2, 
  Layout = 4
 }, 
 Rail2_Down = {
  Name = "Stone Rail Down", 
  Info = "It's a stone rail that lowers money downward.", 
  ImageId = "rbxassetid://7948268116", 
  Price = 130, 
  Speed = 7, 
  Tier = 2, 
  Layout = 5
 }, 
 Rail3 = {
  Name = "Iron Rail", 
  Info = "It's a rail made of iron. It's pretty fast.", 
  ImageId = "rbxassetid://7940789328", 
  Price = 300, 
  Speed = 10, 
  Tier = 4, 
  Layout = 6
 }, 
 Rail3_Up = {
  Name = "Iron Rail Up", 
  Info = "It's a iron rail that raises money upward.", 
  ImageId = "rbxassetid://7940781521", 
  Price = 300, 
  Speed = 10, 
  Tier = 4, 
  Layout = 7
 }, 
 Rail3_Down = {
  Name = "Iron Rail Down", 
  Info = "It's a iron rail that lowers money downward.", 
  ImageId = "rbxassetid://7940787063", 
  Price = 300, 
  Speed = 10, 
  Tier = 4, 
  Layout = 8
 }, 
 Upgrader1 = {
  Name = "Wooden Upgrader", 
  Info = "It's an wooden upgrader.\nIt increases by $1 per money part.", 
  ImageId = "rbxassetid://7971682052", 
  Money = 1, 
  Price = 400, 
  Tier = 1, 
  Layout = 0
 }, 
 Upgrader2 = {
  Name = "Stone Upgrader", 
  Info = "It's an upgrader made of stone.\nIt increases by $2 per money part", 
  ImageId = "rbxassetid://7971683435", 
  Money = 2, 
  Price = 500, 
  Tier = 3, 
  Layout = 1
 }, 
 Upgrader3 = {
  Name = "Iron Upgrader", 
  Info = "It's an upgrader made of iron.\nIt increases by $3 per money part.", 
  ImageId = "rbxassetid://7971684910", 
  Money = 3, 
  Price = 1000, 
  Tier = 4, 
  Layout = 2
 }, 
 Upgrader4 = {
  Name = "Emerald Upgrader", 
  Info = "It's an upgrader made of Emerald.\nIt increases by $4 per money part.", 
  ImageId = "rbxassetid://8308705879", 
  Money = 4, 
  Price = 10000, 
  Tier = 6, 
  Layout = 3
 }, 
 Collector1 = {
  Name = "One-Way Collector", 
  Info = "It's a collector that only goes in one direction.", 
  ImageId = "rbxassetid://7940685742", 
  Price = 20, 
  Tier = 0, 
  Layout = 0
 }, 
 Collector2 = {
  Name = "Two-Way Collector", 
  Info = "It's a collector that goes in two directions.", 
  ImageId = "rbxassetid://7940689538", 
  Price = 500, 
  Tier = 2, 
  Layout = 1
 }, 
 Collector3 = {
  Name = "Four-Way Collector", 
  Info = "It's a collector that goes in all directions.", 
  ImageId = "rbxassetid://7940692284", 
  Price = 1200, 
  Tier = 4, 
  Layout = 2
 }, 
 Door1 = {
  Name = "Wooden door", 
  Info = "It's wooden door. it's delicate.", 
  ImageId = "rbxassetid://7940697923", 
  Price = 180, 
  Tier = 0, 
  Layout = 0
 }, 
 Door2 = {
  Name = "Double Wooden Door", 
  Info = "It's wooden double door.", 
  ImageId = "rbxassetid://8023795246", 
  Price = 300, 
  Tier = 0, 
  Layout = 1
 }, 
 Stair1 = {
  Name = "Wooden Stair", 
  Info = "It`s wooden stair.", 
  ImageId = "rbxassetid://7940798260", 
  Price = 120, 
  Tier = 0, 
  Layout = 2
 }, 
 Bonfire = {
  Name = "Bonfire", 
  Info = "It's a bonfire made by collecting firewood.", 
  ImageId = "rbxassetid://7971847321", 
  Price = 250, 
  Tier = 1, 
  Layout = 3
 }, 
 Chair1 = {
  Name = "Wooden chair", 
  Info = "It's wooden chair. too small for two people to sit down.", 
  ImageId = "rbxassetid://7946516015", 
  Price = 360, 
  Tier = 1, 
  Layout = 4
 }, 
 Stool = {
  Name = "Wooden stool", 
  Info = "It's wooden stool. too small for two people to sit down.", 
  ImageId = "rbxassetid://7946525252", 
  Price = 250, 
  Tier = 1, 
  Layout = 5
 }, 
 Door3 = {
  Name = "Iron door", 
  Info = "It's a door made of stone.It's sturdy but heavy.", 
  ImageId = "rbxassetid://7940701134", 
  Price = 280, 
  Tier = 1, 
  Layout = 6
 }, 
 Door4 = {
  Name = "Double Iron Door", 
  Info = "It's a door made of stone.It's sturdy but heavy.", 
  ImageId = "rbxassetid://8023789687", 
  Price = 500, 
  Tier = 1, 
  Layout = 7
 }, 
 Bed = {
  Name = "Bed", 
  Info = "It's a wooden bed. It's too small for two people to lie down.", 
  ImageId = "rbxassetid://7940845567", 
  Price = 810, 
  Tier = 1, 
  Layout = 8
 }, 
 Stair2 = {
  Name = "Stone stair", 
  Info = "It's a stair made of stone.It's quite sturdy.", 
  ImageId = "rbxassetid://7940799946", 
  Price = 240, 
  Tier = 2, 
  Layout = 9
 }, 
 Lantern = {
  Name = "Lantern", 
  Info = "It's a lantern made of wood and iron. It's a little bright.", 
  ImageId = "rbxassetid://7971862387", 
  Price = 600, 
  Tier = 2, 
  Layout = 10
 }, 
 Table = {
  Name = "Wooden table", 
  Info = "It's wooden table. It's pretty useful.", 
  ImageId = "rbxassetid://7946545113", 
  Price = 950, 
  Tier = 2, 
  Layout = 11
 }, 
 Bench = {
  Name = "Wooden bench", 
  Info = "It's a bench made of wood.It's quite sturdy.", 
  ImageId = "rbxassetid://7946538198", 
  Price = 1000, 
  Tier = 2, 
  Layout = 12
 }, 
 Door5 = {
  Name = "Heavy iron door", 
  Info = "It's a door made of iron. It's sturdy.", 
  ImageId = "rbxassetid://7940704467", 
  Price = 700, 
  Tier = 3, 
  Layout = 13
 }, 
 Door6 = {
  Name = "Double Heavy iron door", 
  Info = "It's a door made of iron. It's sturdy.", 
  ImageId = "rbxassetid://8023784139", 
  Price = 1300, 
  Tier = 3, 
  Layout = 14
 }, 
 Tree = {
  Name = "Tree", 
  Info = "It's a common tree on the street.", 
  ImageId = "rbxassetid://7971797543", 
  Price = 1500, 
  Tier = 3, 
  Layout = 15
 }, 
 Standlight = {
  Name = "Floor lamp", 
  Info = "It's a floor lamp made of processed wood. It's bright.", 
  ImageId = "rbxassetid://7971755917", 
  Price = 1900, 
  Tier = 3, 
  Layout = 16
 }, 
 MapleTree = {
  Name = "Maple tree", 
  Info = "It's a maple tree. The color is pretty.", 
  ImageId = "rbxassetid://7971784797", 
  Price = 1600, 
  Tier = 4, 
  Layout = 17
 }, 
 Shelf = {
  Name = "Wooden shelf", 
  Info = "It's a shelf made of processed wood. It's sturdy.", 
  ImageId = "rbxassetid://7971753809", 
  Price = 1850, 
  Tier = 4, 
  Layout = 18
 }, 
 CeilingLight = {
  Name = "Ceiling Light", 
  Info = "It's a ceiling light using candles.", 
  ImageId = "rbxassetid://8023725335", 
  Price = 3800, 
  Tier = 4, 
  Layout = 19
 }, 
 Trophy = {
  Name = "Roblox Trophy", 
  Info = "It's shiny Roblox trophy. it's really useless.", 
  ImageId = "rbxassetid://7971776169", 
  Price = 50000, 
  Tier = 4, 
  Layout = 20
 }, 
 Desk = {
  Name = "Desk", 
  Info = "It's a desk, that you can make anything.", 
  ImageId = "rbxassetid://8317172904", 
  Price = 15000, 
  Tier = 5, 
  Layout = 21
 }, 
 TableLamp = {
  Name = "Table Lamp", 
  Info = "It's a small but bright table lamp.", 
  ImageId = "rbxassetid://8317183424", 
  Price = 8000, 
  Tier = 5, 
  Layout = 22
 }, 
 Sofa = {
  Name = "Sofa", 
  Info = "It's big, but you can sit alone.", 
  ImageId = "rbxassetid://8317161076", 
  Price = 13000, 
  Tier = 6, 
  Layout = 23
 }, 
 Fountain = {
  Name = "Fountain", 
  Info = "It's a fountain with cool water.", 
  ImageId = "rbxassetid://8315994089", 
  Price = 100000, 
  Tier = 6, 
  Layout = 24
 }, 
 Color_Red = {
  Name = "Red Block", 
  Info = "It's a red block. It's not hot.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 0
 }, 
 Color_Yellow = {
  Name = "Yellow Block", 
  Info = "It's a yellow block.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 1
 }, 
 Color_Orange = {
  Name = "Orange Block", 
  Info = "It's a orange block.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 2
 }, 
 Color_Green = {
  Name = "Green Block", 
  Info = "It's a green block.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 3
 }, 
 Color_Sky = {
  Name = "Sky Block", 
  Info = "It's a sky block. It's not light", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 4
 }, 
 Color_Blue = {
  Name = "Blue Block", 
  Info = "It's a blue block.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 5
 }, 
 Color_Purple = {
  Name = "Purple Block", 
  Info = "It's a purple block.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 6
 }, 
 Color_Pink = {
  Name = "Pink Block", 
  Info = "It's a pink block.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 7
 }, 
 Color_Opera = {
  Name = "Hotpink Block", 
  Info = "It's a hotpink block.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 8
 }, 
 Color_Black = {
  Name = "Black Block", 
  Info = "It's a black block.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 9
 }, 
 Color_Gray = {
  Name = "Gray Block", 
  Info = "It's a gray block.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 10
 }, 
 Color_White = {
  Name = "White Block", 
  Info = "It's a white block.", 
  ImageId = "rbxassetid://7971589624", 
  Price = 0, 
  Tier = 0, 
  Layout = 11
 }, 
 ["X-Mas_Ice"] = {
  Name = "Ice", 
  Info = "It's a white block.", 
  ImageId = "rbxassetid://8308796155", 
  Price = 5, 
  Tier = 0, 
  Layout = 1
 }, 
 ["X-Mas_White_Snow"] = {
  Name = "White Snow", 
  Info = "It's White snow.", 
  ImageId = "rbxassetid://8308793956", 
  Price = 5, 
  Tier = 0, 
  Layout = 2
 }, 
 ["X-Mas_Red_Snow"] = {
  Name = "Red Snow", 
  Info = "It's Red snow.", 
  ImageId = "rbxassetid://8308798227", 
  Price = 5, 
  Tier = 0, 
  Layout = 3
 }, 
 ["X-Mas_Green_Snow"] = {
  Name = "Green Snow", 
  Info = "It's green snow.", 
  ImageId = "rbxassetid://8308800146", 
  Price = 5, 
  Tier = 0, 
  Layout = 4
 }, 
 ["X-Mas_Fireplace"] = {
  Name = "Fireplace", 
  Info = "It is a warm-lighted fireplace.", 
  ImageId = "rbxassetid://8308802518", 
  Price = 10, 
  Tier = 0, 
  Layout = 5
 }, 
 ["X-Mas_Tree"] = {
  Name = "X-Mas Tree", 
  Info = "It is a snow-covered Christmas tree.", 
  ImageId = "rbxassetid://8308805749", 
  Price = 10, 
  Tier = 0, 
  Layout = 6
 }, 
 ["X-Mas_Snowman"] = {
  Name = "Snowman", 
  Info = "Do You Want to Build a Snowman?", 
  ImageId = "rbxassetid://8308808707", 
  Price = 10, 
  Tier = 0, 
  Layout = 7
 }, 
 ["X-Mas_Dropper"] = {
  Name = "X-Mas Dropper", 
  Info = "It's an special christmas dropper!!\nIt produces $30 per 5 seconds.", 
  ImageId = "rbxassetid://8316346797ss", 
  Price = 0, 
  Money = 30, 
  Timer = 5, 
  Part = "Part14", 
  Tier = 0, 
  Layout = 0
 }
}

local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local Remotes = ReplicatedStorage.Remotes
local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character.Humanoid
local content, isReady = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
UserLogoLabel.Image = content



for i,v in pairs(Prices) do
 if (not v.Name:match("Dropper") and not v.Name:match("Upgrader") and not v.Name:match("MEGA") and not v.Name:match("X-Mas")) then
        local New = BlockName_ButtonTemplate:Clone()
        New.Parent = BlocksFrame
        New.Name = string.format("%s_Button", v.Name)
        New.Image = v.ImageId
        New.ImageTransparency = 0
        New.MouseButton1Click:Connect(function()
            SelectedBuildingBlock.Text = string.format("Selected Block: %s", v.Name)
            settings.building.selectedBlock = i
        end)
    end
end

BlockName_ButtonTemplate:Destroy()

local absoluteSize = UIGridLayout.AbsoluteContentSize
BlocksFrame.CanvasSize = UDim2.new(0, absoluteSize.X, 0, absoluteSize.Y)


local function getPlot(player)
    for i,v in pairs(workspace.Plots:GetChildren()) do
        if (v:FindFirstChild('Owner') and v.Owner.Value == player.Name) then
            return v 
        end
    end
    return nil
end

local function CalculateBaseCost(player)
    local Plot = getPlot(player)
    if (Plot ~= nil) then
        local ItemHolder = Plot.ItemHolder  
        local TotalCost = 0
        for i,v in pairs(ItemHolder:GetChildren()) do
            if (Prices[v.Name] and Prices[v.Name].Price) then
                TotalCost = TotalCost + Prices[v.Name].Price 
            end
        end
        return TotalCost
    else
        return 0
    end
end

local function wipeBase()
    if (getPlot(LocalPlayer) ~= nil) then
        local PlacedBlocks = getPlot(LocalPlayer).ItemHolder
        for i,v in pairs(PlacedBlocks:GetChildren()) do
            Remotes.RemoveEvent:FireServer(v)
        end
    end 
end
local function buildBlock(name, cframe)
    if (getPlot(LocalPlayer ~= nil)) then
        local Plot = getPlot(LocalPlayer)
       
    end
end
local function loadSchematic(name)
    if (not name) then
        print("[debug]: schematic load requires the name of the schematic.") 
        return
    elseif (name and not name:match('.json')) then
        name = name..'.json'
    end
    
    local isValidSchematic = isfile("sandboxSchematics/"..name)
    if (not isValidSchematic) then
        print("[debug]: the schematic '"..name.."' does not exist in workspace.") 
    else
        wipeBase()
        print("[debug]: attempting to build schematic.")
        print("[debug]: block type: wood")
        local SchematicFile = readfile("sandboxSchematics/"..name)
        local SchematicContents = HttpService:JSONDecode(SchematicFile)

        if (getPlot(LocalPlayer) ~= nil) then
            local Plot = getPlot(LocalPlayer)
            for i,v in pairs(SchematicContents) do
                if (v.name and v.cframe) then
                    Remotes.PlacingEvent:FireServer(v.cframe, v.name, 0, Plot.Base.Block, Enum.NormalId.Top)      
                end
            end
        end
        
        print("[debug]: finished building schematic '"..name.."'.")
    end
end


local function getSchematicSlot(name)
    if (not name) then
        print("[debug]: schematic load requires the name of the schematic.") 
        return
    elseif (name and not name:match('.json')) then
        name = name..'.json'
    end
    
    local isValidSchematic = isfile("sandboxSchematics/"..name)
    if (not isValidSchematic) then
        print("[debug]: the schematic '"..name.."' does not exist in workspace.") 
        return nil
    else
        local SchematicFile = readfile("sandboxSchematics/"..name)
        local SchematicContents = HttpService:JSONDecode(SchematicFile)
        return SchematicContents[#SchematicContents].number
    end
end


HelloMessage.Text = string.format("Hello, %s!", LocalPlayer.Name)

for i,v in pairs(Players:GetPlayers()) do
    if (v ~= LocalPlayer) then
        local Name_Button = Instance.new("TextButton")
        Name_Button.Name = v.Name.."_Button"
        Name_Button.Parent = PlayerHolder
        Name_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Name_Button.BackgroundTransparency = 1.000
        Name_Button.Position = UDim2.new(0.0319634713, 0, 0.504672885, 0)
        Name_Button.Size = UDim2.new(0, 114, 0, 18)
        Name_Button.Font = Enum.Font.Gotham
        Name_Button.Text = v.DisplayName
        Name_Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Name_Button.TextSize = 10.000
        Name_Button.MouseButton1Click:Connect(function()
            settings.players.selectedPlayer = v
            SelectedPlayerLabel.Text = string.format("Selected Player: %s", v.DisplayName)
            local userId = v.UserId
            local thumbType = Enum.ThumbnailType.HeadShot
            local thumbSize = Enum.ThumbnailSize.Size420x420
            local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
            SelecetedPlayerLogoLabel.Image = content
            local PlayerBase = getPlot(v)
            if (PlayerBase ~= nil) then
                local PlotNum = string.split(PlayerBase.Name, "plot")[2]
                SelectedPlayerPlot.Text = string.format("Plot: %s", PlotNum)
            end
            local BaseCost = tostring(CalculateBaseCost(v))
            SelectedPlayerCostLabel.Text = string.format("Estimated Base Cost: $%s", BaseCost)
        end)
    end
end

Players.ChildAdded:Connect(function(child)
    local Name_Button = Instance.new("TextButton")
    Name_Button.Name = child.Name.."_Button"
    Name_Button.Parent = PlayerHolder
    Name_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name_Button.BackgroundTransparency = 1.000
    Name_Button.Position = UDim2.new(0.0319634713, 0, 0.504672885, 0)
    Name_Button.Size = UDim2.new(0, 114, 0, 18)
    Name_Button.Font = Enum.Font.Gotham
    Name_Button.Text = child.DisplayName
    Name_Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name_Button.TextSize = 10.000
    Name_Button.MouseButton1Click:Connect(function()
        settings.players.selectedPlayer = child
        SelectedPlayerLabel.Text = string.format("Selected Player: %s", child.DisplayName)
        local userId = child.UserId
        local thumbType = Enum.ThumbnailType.HeadShot
        local thumbSize = Enum.ThumbnailSize.Size420x420
        local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
        SelecetedPlayerLogoLabel.Image = content
        local PlayerBase = getPlot(child)
        if (PlayerBase ~= nil) then
            local PlotNum = string.split(PlayerBase.Name, "plot")[2]
            SelectedPlayerPlot.Text = string.format("Plot: %s", PlotNum)
        end
        local BaseCost = tostring(CalculateBaseCost(child))
        SelectedPlayerCostLabel.Text = string.format("Estimated Base Cost: $%s", BaseCost)
    end)
end)

Players.ChildRemoved:Connect(function(child)
    for i,v in pairs(PlayerHolder:GetChildren()) do
        if (v.Name:match(child.Name)) then
            v:Destroy()
        end
    end
end)

SavePlayerBaseButton.MouseButton1Click:Connect(function()
    local Schematic = {}
    local Name = PlayerBaseSaveName.Text
    if (Name == "") then
        Name = settings.players.selectedPlayer.Name.."_CopiedBase.json"
    end
    if (not Name:match(".json")) then
        Name = string.format("%s.json", Name)
    end
    local Plot = getPlot(settings.players.selectedPlayer)
    local ItemHolder = Plot.ItemHolder
    for i,v in pairs(ItemHolder:GetChildren()) do
        if (v:IsA('Model')) then
            Schematic[i] = {name = v.Name, cframe = tostring(v.PrimaryPart.CFrame)}
        else
            Schematic[i] = {name = v.Name, cframe = tostring(v.CFrame)}
        end
    end
    Schematic[#Schematic] = {number = tostring(string.split(Plot.Name, "plot")[2])}
    writefile("sandboxSchematics/"..Name, HttpService:JSONEncode(Schematic))
end)


BuildFloorButton.MouseButton1Click:Connect(function()
    if (settings.building.selectedBlock ~= nil) then
        local Plot = getPlot(LocalPlayer)
        if (Plot ~= nil) then
            local Base = Plot.Base
            local ExpandBase = Plot.ExpandBase
            for i,v in pairs(Base:GetChildren()) do
                if (v.Name == "Block") then
                    Remotes.PlacingEvent:FireServer(v.CFrame, settings.building.selectedBlock, 0, v, Enum.NormalId.Top)
                end
            end
            for i,v in pairs(ExpandBase:GetChildren()) do
                if (v.Name == "Block") then
                    Remotes.PlacingEvent:FireServer(v.CFrame, settings.building.selectedBlock, 0, v, Enum.NormalId.Top)
                end
            end
        end
    end
end)

UpdateBuildCostButton.MouseButton1Click:Connect(function()
    if (getPlot(LocalPlayer) ~= nil) then
        local amount = CalculateBaseCost(LocalPlayer)
        BaseCostLabel.Text = string.format("Base Cost (Manual Update): $%s", amount)
    end
end)

SaveCurrentBaseButton.MouseButton1Click:Connect(function()
    if (SaveBaseNameBox.Text ~= nil) then
        local Schematic = {}
        local Name = SaveBaseNameBox.Text
        if (not Name:match(".json")) then
            Name = string.format("%s.json", Name)
        end
        local Plot = getPlot(LocalPlayer)
        local ItemHolder = Plot.ItemHolder
        for i,v in pairs(ItemHolder:GetChildren()) do
            if (v:IsA('Model')) then
                Schematic[i] = {name = v.Name, cframe = tostring(v.PrimaryPart.CFrame)}
            else
                Schematic[i] = {name = v.Name, cframe = tostring(v.CFrame)}
            end
        end
        Schematic[#Schematic] = {number = tostring(string.split(Plot.Name, "plot")[2])}
        writefile("sandboxSchematics/"..Name, HttpService:JSONEncode(Schematic))
        local SchematicCost = CalculateBaseCost(LocalPlayer)
        print(string.format("\n[Sandbox Schematics]\nSchematic Price Estimate: $%s", SchematicCost))
        print(string.format("\n[Sandbox Schematics]\nSchematic Plot: %s", string.split(Plot.Name, "plot")[2]))
        Notification.Notify("Schematic Price Estimate", string.format("$%s", SchematicCost), {
            Duration = 2,       
            Main = {
                Rounding = true,
            }
        })
        Notification.Notify("Schematic Price Estimate", "Price also printed to console.", {
            Duration = 2,       
            Main = {
                Rounding = true,
            }
        })
    end
end)

function stringToCFrame(input)
    return CFrame.new(
      unpack(
        game:GetService('HttpService'):JSONDecode(
          '['..input..']'
        )
      )
    )
end

LoadBaseButton.MouseButton1Click:Connect(function()
    local Name = LoadBaseNameBox.Text
    if (Name ~= nil) then
        if (not Name:match('.json')) then Name = string.format("%s.json", Name) end
        if (isfile(string.format("sandboxSchematics/%s", Name))) then
            wipeBase()
            local SchematicFile = readfile("sandboxSchematics/"..Name)
            local SchematicContents = HttpService:JSONDecode(SchematicFile)
            local Plot = getPlot(LocalPlayer)
            if (Plot ~= nil) then
                local Block = Plot.Base:FindFirstChild("Block")
                for i,v in pairs(SchematicContents) do
                    Remotes.PlacingEvent:FireServer(stringToCFrame(v.cframe), v.name, 0, Block, Enum.NormalId.Top)    
                end
            end
        end
    end
end)


WipeBaseButton.MouseButton1Click:Connect(function()
    wipeBase()
end)

LagServerButton.MouseButton1Click:Connect(function()
    while wait() do
        if (getPlot(LocalPlayer) ~= nil) then
            local First = getPlot(LocalPlayer).Base:FindFirstChild('Block')
            for i=1, 1500 do
                wait()
                Remotes.PlacingEvent:FireServer(First.CFrame, "Block1", 0, First, Enum.NormalId.Top)
                Remotes.PlacingEvent:FireServer(First.CFrame, "Block1", 0, First, Enum.NormalId.Top)
                Remotes.PlacingEvent:FireServer(First.CFrame, "Block1", 0, First, Enum.NormalId.Top)
            end
            wipeBase()
        end
    end
end)

while wait() do
    if (getPlot(LocalPlayer) ~= nil) then
        BlocksPlacedLabel.Text = string.format("Blocks Placed: %s", #getPlot(LocalPlayer).ItemHolder:GetChildren())
    end
end