-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Scripts = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local Hubs = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Credits = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Home = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local ScriptsTab = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Script = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Script_2 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Script_3 = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local Script_4 = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Script_5 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local Script_6 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local Script_7 = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local HubsTab = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local Script_8 = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local Script_9 = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local Script_10 = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local Script_11 = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local TrollGui = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local TrollGui_2 = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local TrollGui_3 = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local HomeTab = Instance.new("Frame")
local UICorner_24 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local UICorner_25 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local UICorner_26 = Instance.new("UICorner")
local TextLabel_5 = Instance.new("TextLabel")
local UICorner_27 = Instance.new("UICorner")
local TextLabel_6 = Instance.new("TextLabel")
local UICorner_28 = Instance.new("UICorner")
local TextLabel_7 = Instance.new("TextLabel")
local UICorner_29 = Instance.new("UICorner")
local CreditsTab = Instance.new("Frame")
local UICorner_30 = Instance.new("UICorner")
local TextLabel_8 = Instance.new("TextLabel")
local UICorner_31 = Instance.new("UICorner")
local TextLabel_9 = Instance.new("TextLabel")
local UICorner_32 = Instance.new("UICorner")
local TextLabel_10 = Instance.new("TextLabel")
local UICorner_33 = Instance.new("UICorner")
local TextLabel_11 = Instance.new("TextLabel")
local UICorner_34 = Instance.new("UICorner")
local TextLabel_12 = Instance.new("TextLabel")
local UICorner_35 = Instance.new("UICorner")
local TextLabel_13 = Instance.new("TextLabel")
local UICorner_36 = Instance.new("UICorner")
local TextLabel_14 = Instance.new("TextLabel")
local UICorner_37 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(37, 95, 255)
Main.Position = UDim2.new(0.123631611, 0, 0.112618104, 0)
Main.Size = UDim2.new(0, 502, 0, 289)
Main.Active = true
Main.Draggable = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(76, 255, 235)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(76, 255, 235))}
UIGradient.Offset = Vector2.new(0, 39)
UIGradient.Rotation = 4
UIGradient.Parent = Main

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Main

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
TextLabel.Size = UDim2.new(0, 136, 0, 289)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 20)
UICorner_2.Parent = TextLabel

Scripts.Name = "Scripts"
Scripts.Parent = TextLabel
Scripts.BackgroundColor3 = Color3.fromRGB(37, 95, 255)
Scripts.Position = UDim2.new(0.108770803, 0, 0.110629685, 0)
Scripts.Size = UDim2.new(0, 101, 0, 30)
Scripts.Font = Enum.Font.SourceSans
Scripts.Text = "Scripts"
Scripts.TextColor3 = Color3.fromRGB(255, 255, 255)
Scripts.TextSize = 20.000
Scripts.MouseButton1Down:Connect(function()
 ScriptsTab.Visible = true
 HomeTab.Visible = false
 HubsTab.Visible = false
 CreditsTab.Visible = false
end)

UICorner_3.CornerRadius = UDim.new(0, 20)
UICorner_3.Parent = Scripts

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
TextLabel_2.Position = UDim2.new(0.11012093, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 487, 0, 23)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Sonic X Hub V0,1 BETA"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 16.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

UICorner_4.CornerRadius = UDim.new(0, 20)
UICorner_4.Parent = TextLabel_2

Hubs.Name = "Hubs"
Hubs.Parent = TextLabel
Hubs.BackgroundColor3 = Color3.fromRGB(37, 95, 255)
Hubs.Position = UDim2.new(0.108770803, 0, 0.231736958, 0)
Hubs.Size = UDim2.new(0, 101, 0, 30)
Hubs.Font = Enum.Font.SourceSans
Hubs.Text = "Hubs"
Hubs.TextColor3 = Color3.fromRGB(255, 255, 255)
Hubs.TextSize = 20.000
Hubs.MouseButton1Down:Connect(function()
 ScriptsTab.Visible = false
 HomeTab.Visible = false
 HubsTab.Visible = true
 CreditsTab.Visible = false
end)

UICorner_5.CornerRadius = UDim.new(0, 20)
UICorner_5.Parent = Hubs

Credits.Name = "Credits"
Credits.Parent = TextLabel
Credits.BackgroundColor3 = Color3.fromRGB(37, 95, 255)
Credits.Position = UDim2.new(0.108770803, 0, 0.847653925, 0)
Credits.Size = UDim2.new(0, 101, 0, 30)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Credits"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextSize = 20.000
Credits.MouseButton1Down:Connect(function()
 ScriptsTab.Visible = false
 HomeTab.Visible = false
 HubsTab.Visible = false
 CreditsTab.Visible = true
end)

UICorner_6.CornerRadius = UDim.new(0, 20)
UICorner_6.Parent = Credits

Home.Name = "Home"
Home.Parent = TextLabel
Home.BackgroundColor3 = Color3.fromRGB(37, 95, 255)
Home.Position = UDim2.new(0.108770803, 0, 0.719626248, 0)
Home.Size = UDim2.new(0, 101, 0, 30)
Home.Font = Enum.Font.SourceSans
Home.Text = "Home"
Home.TextColor3 = Color3.fromRGB(255, 255, 255)
Home.TextSize = 20.000
Home.MouseButton1Down:Connect(function()
 ScriptsTab.Visible = false
 HomeTab.Visible = true
 HubsTab.Visible = false
 CreditsTab.Visible = false
end)

UICorner_7.CornerRadius = UDim.new(0, 20)
UICorner_7.Parent = Home

ScriptsTab.Name = "ScriptsTab"
ScriptsTab.Parent = Main
ScriptsTab.BackgroundColor3 = Color3.fromRGB(37, 95, 255)
ScriptsTab.Position = UDim2.new(0.270916343, 0, 0.0795847774, 0)
ScriptsTab.Size = UDim2.new(0, 365, 0, 266)
ScriptsTab.Visible = false

UICorner_8.CornerRadius = UDim.new(0, 20)
UICorner_8.Parent = ScriptsTab

Script.Name = "Script"
Script.Parent = ScriptsTab
Script.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script.Position = UDim2.new(0.0327837393, 0, 0.0316823237, 0)
Script.Size = UDim2.new(0, 343, 0, 30)
Script.Font = Enum.Font.SourceSans
Script.Text = "IV Admin"
Script.TextColor3 = Color3.fromRGB(255, 255, 255)
Script.TextSize = 20.000
Script.TextWrapped = true
Script.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\79\109\110\105\112\111\116\101\110\99\101\68\101\118\101\108\111\112\101\114\47\78\117\109\98\101\114\47\109\97\105\110\47\49\46\108\117\97"))()
end)

UICorner_9.CornerRadius = UDim.new(0, 20)
UICorner_9.Parent = Script

Script_2.Name = "Script"
Script_2.Parent = ScriptsTab
Script_2.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script_2.Position = UDim2.new(0.0327837393, 0, 0.167020679, 0)
Script_2.Size = UDim2.new(0, 343, 0, 30)
Script_2.Font = Enum.Font.SourceSans
Script_2.Text = "Fly V2"
Script_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Script_2.TextSize = 20.000
Script_2.TextWrapped = true
Script_2.MouseButton1Down:Connect(function()
 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)

UICorner_10.CornerRadius = UDim.new(0, 20)
UICorner_10.Parent = Script_2

Script_3.Name = "Script"
Script_3.Parent = ScriptsTab
Script_3.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script_3.Position = UDim2.new(0.0327837393, 0, 0.302359045, 0)
Script_3.Size = UDim2.new(0, 343, 0, 30)
Script_3.Font = Enum.Font.SourceSans
Script_3.Text = "Ice Hub"
Script_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Script_3.TextSize = 20.000
Script_3.TextWrapped = true
Script_3.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
end)

UICorner_11.CornerRadius = UDim.new(0, 20)
UICorner_11.Parent = Script_3

Script_4.Name = "Script"
Script_4.Parent = ScriptsTab
Script_4.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script_4.Position = UDim2.new(0.0327837393, 0, 0.441456795, 0)
Script_4.Size = UDim2.new(0, 343, 0, 30)
Script_4.Font = Enum.Font.SourceSans
Script_4.Text = "Sonic Run"
Script_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Script_4.TextSize = 20.000
Script_4.TextWrapped = true
Script_4.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet('https://pastebin.com/raw/3BZLtjB9'))()
end)

UICorner_12.CornerRadius = UDim.new(0, 20)
UICorner_12.Parent = Script_4

Script_5.Name = "Script"
Script_5.Parent = ScriptsTab
Script_5.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script_5.Position = UDim2.new(0.0327837393, 0, 0.576795161, 0)
Script_5.Size = UDim2.new(0, 343, 0, 30)
Script_5.Font = Enum.Font.SourceSans
Script_5.Text = "Rtx Gui"
Script_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Script_5.TextSize = 20.000
Script_5.TextWrapped = true
Script_5.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3%27'))()
end)

UICorner_13.CornerRadius = UDim.new(0, 20)
UICorner_13.Parent = Script_5

Script_6.Name = "Script"
Script_6.Parent = ScriptsTab
Script_6.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script_6.Position = UDim2.new(0.0327837393, 0, 0.712133527, 0)
Script_6.Size = UDim2.new(0, 343, 0, 30)
Script_6.Font = Enum.Font.SourceSans
Script_6.Text = "Sonic Speed Simulator Script"
Script_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Script_6.TextSize = 20.000
Script_6.TextWrapped = true
Script_6.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/Luciquad/credit/main/sonicspeedsimulator.lua"))()
end)

UICorner_14.CornerRadius = UDim.new(0, 20)
UICorner_14.Parent = Script_6

Script_7.Name = "Script"
Script_7.Parent = ScriptsTab
Script_7.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script_7.Position = UDim2.new(0.0327837393, 0, 0.851231277, 0)
Script_7.Size = UDim2.new(0, 343, 0, 30)
Script_7.Font = Enum.Font.SourceSans
Script_7.Text = "Chat Hax"
Script_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Script_7.TextSize = 20.000
Script_7.TextWrapped = true
Script_7.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet('https://pastebin.com/raw/MBpnp3yS'))()
end)

UICorner_15.CornerRadius = UDim.new(0, 20)
UICorner_15.Parent = Script_7

HubsTab.Name = "HubsTab"
HubsTab.Parent = Main
HubsTab.BackgroundColor3 = Color3.fromRGB(37, 95, 255)
HubsTab.Position = UDim2.new(0.270916343, 0, 0.0795847774, 0)
HubsTab.Size = UDim2.new(0, 365, 0, 266)
HubsTab.Visible = false

UICorner_16.CornerRadius = UDim.new(0, 20)
UICorner_16.Parent = HubsTab

Script_8.Name = "Script"
Script_8.Parent = HubsTab
Script_8.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script_8.Position = UDim2.new(0.0300440136, 0, 0.0316824317, 0)
Script_8.Size = UDim2.new(0, 343, 0, 30)
Script_8.Font = Enum.Font.SourceSans
Script_8.Text = "Dark Hub"
Script_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Script_8.TextSize = 20.000
Script_8.TextWrapped = true
Script_8.MouseButton1Down:Connect(function()
 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\117\118\112\49\100\119\78\39\41\41\40\41\10")()
end)

UICorner_17.CornerRadius = UDim.new(0, 20)
UICorner_17.Parent = Script_8

Script_9.Name = "Script"
Script_9.Parent = HubsTab
Script_9.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script_9.Position = UDim2.new(0.0300440136, 0, 0.163261384, 0)
Script_9.Size = UDim2.new(0, 343, 0, 30)
Script_9.Font = Enum.Font.SourceSans
Script_9.Text = "Dark X Hub"
Script_9.TextColor3 = Color3.fromRGB(255, 255, 255)
Script_9.TextSize = 20.000
Script_9.TextWrapped = true
Script_9.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet('https://pastebin.com/raw/qng8aB4u'))()
end)

UICorner_18.CornerRadius = UDim.new(0, 20)
UICorner_18.Parent = Script_9

Script_10.Name = "Script"
Script_10.Parent = HubsTab
Script_10.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script_10.Position = UDim2.new(0.0300440118, 0, 0.301029176, 0)
Script_10.Size = UDim2.new(0, 343, 0, 29)
Script_10.Font = Enum.Font.SourceSans
Script_10.Text = "Fire X Hub"
Script_10.TextColor3 = Color3.fromRGB(255, 255, 255)
Script_10.TextSize = 20.000
Script_10.TextWrapped = true
Script_10.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/tyreltrijo/firex/main/firex%27'))()
end)

UICorner_19.CornerRadius = UDim.new(0, 20)
UICorner_19.Parent = Script_10

Script_11.Name = "Script"
Script_11.Parent = HubsTab
Script_11.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
Script_11.Position = UDim2.new(0.0300440118, 0, 0.435142905, 0)
Script_11.Size = UDim2.new(0, 343, 0, 29)
Script_11.Font = Enum.Font.SourceSans
Script_11.Text = "Sushi Hub"
Script_11.TextColor3 = Color3.fromRGB(255, 255, 255)
Script_11.TextSize = 20.000
Script_11.TextWrapped = true
Script_11.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet("https://paste.ee/r/bf5oO", true))()
end)

UICorner_20.CornerRadius = UDim.new(0, 20)
UICorner_20.Parent = Script_11

TrollGui.Name = "Troll Gui"
TrollGui.Parent = HubsTab
TrollGui.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
TrollGui.Position = UDim2.new(0.0300440118, 0, 0.570481241, 0)
TrollGui.Size = UDim2.new(0, 343, 0, 29)
TrollGui.Font = Enum.Font.SourceSans
TrollGui.Text = "Troll Gui"
TrollGui.TextColor3 = Color3.fromRGB(255, 255, 255)
TrollGui.TextSize = 20.000
TrollGui.TextWrapped = true
TrollGui.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet('https://pastebin.com/raw/0fnFAR9e'))()
end)

UICorner_21.CornerRadius = UDim.new(0, 20)
UICorner_21.Parent = TrollGui

TrollGui_2.Name = "Troll Gui"
TrollGui_2.Parent = HubsTab
TrollGui_2.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
TrollGui_2.Position = UDim2.new(0.0300440118, 0, 0.702060223, 0)
TrollGui_2.Size = UDim2.new(0, 343, 0, 29)
TrollGui_2.Font = Enum.Font.SourceSans
TrollGui_2.Text = "VHUB "
TrollGui_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TrollGui_2.TextSize = 20.000
TrollGui_2.TextWrapped = true
TrollGui_2.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet(('https://raw.githubusercontent.com/itsyaboivincentt5315/script/main/VHub.txt'),true))()
end)

UICorner_22.CornerRadius = UDim.new(0, 20)
UICorner_22.Parent = TrollGui_2

TrollGui_3.Name = "Troll Gui"
TrollGui_3.Parent = HubsTab
TrollGui_3.BackgroundColor3 = Color3.fromRGB(28, 39, 255)
TrollGui_3.Position = UDim2.new(0.0300440118, 0, 0.837398589, 0)
TrollGui_3.Size = UDim2.new(0, 343, 0, 29)
TrollGui_3.Font = Enum.Font.SourceSans
TrollGui_3.Text = "British Hub"
TrollGui_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TrollGui_3.TextSize = 20.000
TrollGui_3.TextWrapped = true
TrollGui_3.MouseButton1Down:Connect(function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/YourLocalNzi/Ye/main/BH%20v4%20Fix"))()
end)

UICorner_23.CornerRadius = UDim.new(0, 20)
UICorner_23.Parent = TrollGui_3

HomeTab.Name = "HomeTab"
HomeTab.Parent = Main
HomeTab.BackgroundColor3 = Color3.fromRGB(37, 95, 255)
HomeTab.Position = UDim2.new(0.270916343, 0, 0.0795847774, 0)
HomeTab.Size = UDim2.new(0, 365, 0, 266)

UICorner_24.CornerRadius = UDim.new(0, 20)
UICorner_24.Parent = HomeTab

TextLabel_3.Parent = HomeTab
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Size = UDim2.new(0, 365, 0, 50)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Home"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextSize = 25.000

UICorner_25.CornerRadius = UDim.new(0, 20)
UICorner_25.Parent = TextLabel_3

TextLabel_4.Parent = HomeTab
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(-0.0027397261, 0, 0.86090225, 0)
TextLabel_4.Size = UDim2.new(0, 365, 0, 50)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Thanks For Using Sonic X Hub"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextSize = 25.000

UICorner_26.CornerRadius = UDim.new(0, 20)
UICorner_26.Parent = TextLabel_4

TextLabel_5.Parent = HomeTab
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.0027397275, 0, 0.187969923, 0)
TextLabel_5.Size = UDim2.new(0, 365, 0, 50)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Welcome To Sonic X Hub"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextSize = 25.000

UICorner_27.CornerRadius = UDim.new(0, 20)
UICorner_27.Parent = TextLabel_5

TextLabel_6.Parent = HomeTab
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(-0.0027397261, 0, 0.240601495, 0)
TextLabel_6.Size = UDim2.new(0, 365, 0, 50)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Sonic X Hub is the idea of "
TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.TextSize = 25.000

UICorner_28.CornerRadius = UDim.new(0, 20)
UICorner_28.Parent = TextLabel_6

TextLabel_7.Parent = HomeTab
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Position = UDim2.new(0, 0, 0.304511279, 0)
TextLabel_7.Size = UDim2.new(0, 365, 0, 50)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "SUPERSONIC GAMERZ"
TextLabel_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.TextSize = 25.000

UICorner_29.CornerRadius = UDim.new(0, 20)
UICorner_29.Parent = TextLabel_7

CreditsTab.Name = "CreditsTab"
CreditsTab.Parent = Main
CreditsTab.BackgroundColor3 = Color3.fromRGB(37, 95, 255)
CreditsTab.Position = UDim2.new(0.270916343, 0, 0.0795847774, 0)
CreditsTab.Size = UDim2.new(0, 365, 0, 266)
CreditsTab.Visible = false

UICorner_30.CornerRadius = UDim.new(0, 20)
UICorner_30.Parent = CreditsTab

TextLabel_8.Parent = CreditsTab
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Size = UDim2.new(0, 365, 0, 50)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Credits "
TextLabel_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.TextSize = 25.000

UICorner_31.CornerRadius = UDim.new(0, 20)
UICorner_31.Parent = TextLabel_8

TextLabel_9.Parent = CreditsTab
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.Position = UDim2.new(0.0027397261, 0, 0.187969923, 0)
TextLabel_9.Size = UDim2.new(0, 365, 0, 50)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "Owner : SuperSonic Gamerz"
TextLabel_9.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.TextSize = 25.000

UICorner_32.CornerRadius = UDim.new(0, 20)
UICorner_32.Parent = TextLabel_9

TextLabel_10.Parent = CreditsTab
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.Position = UDim2.new(0.0027397261, 0, 0.251879692, 0)
TextLabel_10.Size = UDim2.new(0, 365, 0, 50)
TextLabel_10.Font = Enum.Font.SourceSans
TextLabel_10.Text = "Developer : ItzzJoshua_"
TextLabel_10.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.TextSize = 25.000

UICorner_33.CornerRadius = UDim.new(0, 20)
UICorner_33.Parent = TextLabel_10

TextLabel_11.Parent = CreditsTab
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.Position = UDim2.new(0, 0, 0.439849645, 0)
TextLabel_11.Size = UDim2.new(0, 365, 0, 50)
TextLabel_11.Font = Enum.Font.SourceSans
TextLabel_11.Text = "Sub to Us"
TextLabel_11.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.TextSize = 25.000

UICorner_34.CornerRadius = UDim.new(0, 20)
UICorner_34.Parent = TextLabel_11

TextLabel_12.Parent = CreditsTab
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.Position = UDim2.new(0, 0, 0.575187981, 0)
TextLabel_12.Size = UDim2.new(0, 365, 0, 50)
TextLabel_12.Font = Enum.Font.SourceSans
TextLabel_12.Text = "ItzzJoshua_"
TextLabel_12.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.TextSize = 25.000

UICorner_35.CornerRadius = UDim.new(0, 20)
UICorner_35.Parent = TextLabel_12

TextLabel_13.Parent = CreditsTab
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.Position = UDim2.new(0, 0, 0.763157845, 0)
TextLabel_13.Size = UDim2.new(0, 365, 0, 50)
TextLabel_13.Font = Enum.Font.SourceSans
TextLabel_13.Text = "SUPERSONIC GAMERZ"
TextLabel_13.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.TextSize = 25.000

UICorner_36.CornerRadius = UDim.new(0, 20)
UICorner_36.Parent = TextLabel_13

TextLabel_14.Parent = CreditsTab
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.Position = UDim2.new(0, 0, 0.669172883, 0)
TextLabel_14.Size = UDim2.new(0, 365, 0, 50)
TextLabel_14.Font = Enum.Font.SourceSans
TextLabel_14.Text = "&"
TextLabel_14.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.TextSize = 25.000

UICorner_37.CornerRadius = UDim.new(0, 20)
UICorner_37.Parent = TextLabel_14