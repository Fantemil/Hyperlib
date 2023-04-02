local ScreenGui = Instance.new("ScreenGui")
local ExploitGUI = Instance.new("Frame")
local ExploitName = Instance.new("TextLabel")
local ExploitName2 = Instance.new("TextLabel")
local DJBoothTeleport = Instance.new("TextButton")
local SceneTeleport = Instance.new("TextButton")
local ToiletTeleport = Instance.new("TextButton")
local FloorTeleport = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Player2Button = Instance.new("TextButton")
local Player1Button = Instance.new("TextButton")

Player2Button.Name = "Player2Button"
Player2Button.Parent = ExploitGUI
Player2Button.BackgroundColor3 = Color3.new(153, 0, 0)
Player2Button.Position = UDim2.new(0.04, 0, 0.82, 0)
Player2Button.Size = UDim2.new(0, 275, 0, 35)
Player2Button.Font = Enum.Font.ArialBold
Player2Button.FontSize = Enum.FontSize.Size14
Player2Button.TextSize = 30
Player2Button.BorderSizePixel = 5

Player1Button.Name = "Player1Button"
Player1Button.Parent = ExploitGUI
Player1Button.BackgroundColor3 = Color3.new(153, 0, 0)
Player1Button.Position = UDim2.new(0.04, 0, 0.63, 0)
Player1Button.Size = UDim2.new(0, 275, 0, 35)
Player1Button.Font = Enum.Font.ArialBold
Player1Button.FontSize = Enum.FontSize.Size14
Player1Button.TextSize = 30
Player1Button.BorderSizePixel = 5


ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

ExploitGUI.Name = "ExploitGUI"
ExploitGUI.Parent = ScreenGui
ExploitGUI.BackgroundColor3 = Color3.new(0, 0, 0)
ExploitGUI.BackgroundTransparency = 0.5
ExploitGUI.Position = UDim2.new(0.3, 0, 0.1, 0)
ExploitGUI.Size = UDim2.new(0, 300, 0, 300)
ExploitGUI.BorderSizePixel = 5
ExploitGUI.Visible = true
ExploitGUI.Draggable = true
ExploitGUI.Active = true
 
ExploitName.Name = "ExploitName"
ExploitName.Parent = ExploitGUI
ExploitName.BackgroundColor3 = Color3.new(0, 0, 0)
ExploitName.Position = UDim2.new(0, 0, 0.09, 0)
ExploitName.Size = UDim2.new(0, 300, 0, 25)
ExploitName.Font = Enum.Font.ArialBold
ExploitName.Text = "Teleport to..."
ExploitName.TextColor3 = Color3.new(1, 1, 1)
ExploitName.TextScaled = true
ExploitName.TextSize = 14
ExploitName.TextWrapped = true

ExploitName2.Name = "ExploitName2"
ExploitName2.Parent = ExploitGUI
ExploitName2.BackgroundColor3 = Color3.new(0, 0, 0)
ExploitName2.Position = UDim2.new(0, 0, 0.5, 0)
ExploitName2.Size = UDim2.new(0, 300, 0, 25)
ExploitName2.Font = Enum.Font.ArialBold
ExploitName2.Text = "Spam vote player"
ExploitName2.TextColor3 = Color3.new(1, 1, 1)
ExploitName2.TextScaled = true
ExploitName2.TextSize = 14
ExploitName2.TextWrapped = true
 
DJBoothTeleport.Name = "DJBoothTeleport"
DJBoothTeleport.Parent = ExploitGUI
DJBoothTeleport.BackgroundColor3 = Color3.new(153, 0, 0)
DJBoothTeleport.Position = UDim2.new(0.1, 0, 0.37, 0)
DJBoothTeleport.Size = UDim2.new(0, 100, 0, 25)
DJBoothTeleport.Font = Enum.Font.Code
DJBoothTeleport.Text = "DJ Booth"
DJBoothTeleport.TextColor3 = Color3.new(0, 0, 0)
DJBoothTeleport.TextScaled = true
DJBoothTeleport.TextSize = 14
DJBoothTeleport.TextWrapped = true
DJBoothTeleport.BorderSizePixel = 5

SceneTeleport.Name = "SceneTeleport"
SceneTeleport.Parent = ExploitGUI
SceneTeleport.BackgroundColor3 = Color3.new(153, 0, 0)
SceneTeleport.Position = UDim2.new(0.55, 0, 0.22, 0)
SceneTeleport.Size = UDim2.new(0, 100, 0, 25)
SceneTeleport.Font = Enum.Font.Code
SceneTeleport.Text = "Scene"
SceneTeleport.TextColor3 = Color3.new(0, 0, 0)
SceneTeleport.TextScaled = true
SceneTeleport.TextSize = 14
SceneTeleport.TextWrapped = true
SceneTeleport.BorderSizePixel = 5

ToiletTeleport.Name = "ToiletTeleport"
ToiletTeleport.Parent = ExploitGUI
ToiletTeleport.BackgroundColor3 = Color3.new(153, 0, 0)
ToiletTeleport.Position = UDim2.new(0.55, 0, 0.37, 0)
ToiletTeleport.Size = UDim2.new(0, 100, 0, 25)
ToiletTeleport.Font = Enum.Font.Code
ToiletTeleport.Text = "Toilet"
ToiletTeleport.TextColor3 = Color3.new(0, 0, 0)
ToiletTeleport.TextScaled = true
ToiletTeleport.TextSize = 14
ToiletTeleport.TextWrapped = true
ToiletTeleport.BorderSizePixel = 5

FloorTeleport.Name = "FloorTeleport"
FloorTeleport.Parent = ExploitGUI
FloorTeleport.BackgroundColor3 = Color3.new(153, 0, 0)
FloorTeleport.Position = UDim2.new(0.1, 0, 0.22, 0)
FloorTeleport.Size = UDim2.new(0, 100, 0, 25)
FloorTeleport.Font = Enum.Font.Code
FloorTeleport.Text = "Floor"
FloorTeleport.TextColor3 = Color3.new(0, 0, 0)
FloorTeleport.TextScaled = true
FloorTeleport.TextSize = 14
FloorTeleport.TextWrapped = true
FloorTeleport.BorderSizePixel = 5
 
Credits.Name = "Credits"
Credits.Parent = ExploitGUI
Credits.BackgroundColor3 = Color3.new(151, 0, 0)
Credits.Position = UDim2.new(0, 0, 0, 0)
Credits.Size = UDim2.new(0, 300, 0, 25)
Credits.Font = Enum.Font.ArialBold
Credits.Text = "RAP BATTLE GUI"
Credits.TextColor3 = Color3.new(0, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 12
Credits.TextWrapped = true
 
Close.Name = "Close"
Close.Parent = ExploitGUI
Close.BackgroundColor3 = Color3.new(204, 0, 0)
Close.Position = UDim2.new(0.925, 0, 0.01, 0)
Close.Size = UDim2.new(0, 19, 0, 19)
Close.Font = Enum.Font.ArialBold
Close.Text = "X"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
 

 
DJBoothTeleport.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-90, 65, -214)
end)
 
SceneTeleport.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-77, 65, -214)
end)

ToiletTeleport.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-60, 62, -278)
end)
 
FloorTeleport.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-60, 62, -214)
end)
 
Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

Player1Button.MouseButton1Down:connect(function()
for i = 0,1 do
   game.Workspace.Votes:FireServer(false,"p1")
   game:GetService("RunService").Heartbeat:Wait()
end
end)
 
Player2Button.MouseButton1Down:connect(function()
for i = 0,1 do
   game.Workspace.Votes:FireServer(false,"p2")
   game:GetService("RunService").Heartbeat:Wait()
end
end)
 
while true do
Player2Button.Text = game.Workspace.RapBattles.Rappers.player2.Value
Player1Button.Text = game.Workspace.RapBattles.Rappers.player1.Value
wait(0.1)
end