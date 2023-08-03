-- Objects

local SlimeGui = Instance.new("ScreenGui")
local SlimesFrame = Instance.new("Frame")
local MoneyBox = Instance.new("TextBox")
local SetitBoi = Instance.new("TextButton")
local PlayerBox = Instance.new("TextBox")

-- Properties

SlimeGui.Name = "SlimeGui"
SlimeGui.Parent = game.CoreGui

SlimesFrame.Name = "SlimesFrame"
SlimesFrame.Parent = SlimeGui
SlimesFrame.BackgroundColor3 = Color3.new(0, 0, 0)
SlimesFrame.BackgroundTransparency = 0.5
SlimesFrame.Position = UDim2.new(0, 0, 0, 301)
SlimesFrame.Size = UDim2.new(0, 357, 0, 139)

MoneyBox.Name = "MoneyBox"
MoneyBox.Parent = SlimesFrame
MoneyBox.BackgroundColor3 = Color3.new(0, 0, 0)
MoneyBox.Position = UDim2.new(0, 3, 0, 20)
MoneyBox.Size = UDim2.new(0, 175, 0, 50)
MoneyBox.Font = Enum.Font.SourceSans
MoneyBox.FontSize = Enum.FontSize.Size14
MoneyBox.Text = "Any Value here"
MoneyBox.TextColor3 = Color3.new(0, 1, 1)
MoneyBox.TextSize = 14
MoneyBox.TextWrapped = true

SetitBoi.Name = "SetitBoi"
SetitBoi.Parent = SlimesFrame
SetitBoi.BackgroundColor3 = Color3.new(0, 0, 0)
SetitBoi.Position = UDim2.new(0, 53, 0, 94)
SetitBoi.Size = UDim2.new(0, 256, 0, 45)
SetitBoi.Font = Enum.Font.SourceSans
SetitBoi.FontSize = Enum.FontSize.Size14
SetitBoi.Text = "Give Cash"
SetitBoi.TextColor3 = Color3.new(0, 1, 1)
SetitBoi.TextSize = 14

PlayerBox.Name = "PlayerBox"
PlayerBox.Parent = SlimesFrame
PlayerBox.BackgroundColor3 = Color3.new(0, 0, 0)
PlayerBox.Position = UDim2.new(0, 197, 0, 22)
PlayerBox.Size = UDim2.new(0, 160, 0, 47)
PlayerBox.Font = Enum.Font.SourceSans
PlayerBox.FontSize = Enum.FontSize.Size14
PlayerBox.Text = "Any name here"
PlayerBox.TextColor3 = Color3.new(0, 1, 1)
PlayerBox.TextSize = 14

SetitBoi.MouseButton1Click:connect(function()
if game.Players[PlayerBox.Text] then
game.Workspace.DoShopPurchase:InvokeServer(game.Players[PlayerBox.Text].leaderstats.Coins, -tonumber(MoneyBox.Text),"skill3")
end
end)