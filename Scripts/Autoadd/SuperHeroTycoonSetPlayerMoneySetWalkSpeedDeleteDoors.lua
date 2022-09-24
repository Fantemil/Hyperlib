local SuperHeroTycoonGui = Instance.new("ScreenGui")
local SiperHeroTycoonFrame = Instance.new("Frame")
local SuperHeroTycoonTitle = Instance.new("TextLabel")
local PlayerToKill = Instance.new("TextBox")
local KillPlayerButton = Instance.new("TextButton")
local LineFrame = Instance.new("Frame")
local KickPlayerButton = Instance.new("TextButton")
local PlayerMoney = Instance.new("TextBox")
local Money = Instance.new("TextBox")
local SetMoneyButton = Instance.new("TextButton")
local OpenSecondFrame = Instance.new("TextButton")
local SecondFrame = Instance.new("Frame")
local SetWalkSpeed = Instance.new("TextButton")
local JumpPowerAmount = Instance.new("TextBox")
local WalkSpeedAmount = Instance.new("TextBox")
local SetJumpPowerButton = Instance.new("TextButton")
local OpenThirdFrame = Instance.new("TextButton")
local ThirdFrame = Instance.new("Frame")
local GiveGear = Instance.new("TextButton")
local DestroyMap = Instance.new("TextButton")
local DeleteTool = Instance.new("TextButton")
local DeleteDoors = Instance.new("TextButton")
local RemoveToolsButton = Instance.new("TextButton")
local ShoutsButton = Instance.new("TextButton")
local CreditsFrame = Instance.new("Frame")
local ObitoXDm8OICredits = Instance.new("TextLabel")
local Shootingisgood9Credits = Instance.new("TextLabel")
local CreditsLabel = Instance.new("TextLabel")
local OpenCreditsButton = Instance.new("TextButton")
--Properties:
SuperHeroTycoonGui.Name = "SuperHeroTycoonGui"
SuperHeroTycoonGui.Parent = game.CoreGui

SiperHeroTycoonFrame.Name = "SiperHeroTycoonFrame"
SiperHeroTycoonFrame.Parent = SuperHeroTycoonGui
SiperHeroTycoonFrame.BackgroundColor3 = Color3.new(0.419608, 0.419608, 0.419608)
SiperHeroTycoonFrame.BackgroundTransparency = 0.30000001192093
SiperHeroTycoonFrame.BorderColor3 = Color3.new(0, 0, 0)
SiperHeroTycoonFrame.Position = UDim2.new(0.349934459, 0, 0.125498012, 0)
SiperHeroTycoonFrame.Size = UDim2.new(0, 210, 0, 221)
SiperHeroTycoonFrame.Visible = true
SiperHeroTycoonFrame.Active = true
SiperHeroTycoonFrame.Draggable = true

SuperHeroTycoonTitle.Name = "SuperHeroTycoonTitle"
SuperHeroTycoonTitle.Parent = SiperHeroTycoonFrame
SuperHeroTycoonTitle.BackgroundColor3 = Color3.new(1, 0, 0)
SuperHeroTycoonTitle.BorderColor3 = Color3.new(0, 0, 0)
SuperHeroTycoonTitle.Size = UDim2.new(0, 210, 0, 17)
SuperHeroTycoonTitle.Font = Enum.Font.SourceSans
SuperHeroTycoonTitle.Text = "Super Hero Tycoon Gui By: Tex30942"
SuperHeroTycoonTitle.TextColor3 = Color3.new(0, 0, 0)
SuperHeroTycoonTitle.TextSize = 14

PlayerToKill.Name = "PlayerToKill"
PlayerToKill.Parent = SiperHeroTycoonFrame
PlayerToKill.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
PlayerToKill.Position = UDim2.new(0.217256442, 0, 0.126976252, 0)
PlayerToKill.Size = UDim2.new(0, 118, 0, 21)
PlayerToKill.Font = Enum.Font.SourceSans
PlayerToKill.PlaceholderColor3 = Color3.new(0, 0, 0)
PlayerToKill.PlaceholderText = "Player Name Here"
PlayerToKill.Text = "Player Name Here"
PlayerToKill.TextColor3 = Color3.new(0, 0, 0)
PlayerToKill.TextSize = 14

KillPlayerButton.Name = "KillPlayerButton"
KillPlayerButton.Parent = SiperHeroTycoonFrame
KillPlayerButton.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
KillPlayerButton.Position = UDim2.new(0.219047621, 0, 0.285067886, 0)
KillPlayerButton.Size = UDim2.new(0, 60, 0, 21)
KillPlayerButton.Font = Enum.Font.SourceSans
KillPlayerButton.Text = "Kill"
KillPlayerButton.TextColor3 = Color3.new(0, 0, 0)
KillPlayerButton.TextSize = 14

LineFrame.Name = "LineFrame"
LineFrame.Parent = SiperHeroTycoonFrame
LineFrame.BackgroundColor3 = Color3.new(0, 0, 0)
LineFrame.Position = UDim2.new(0, 0, 0.416289598, 0)
LineFrame.Size = UDim2.new(0, 210, 0, 1)

KickPlayerButton.Name = "KickPlayerButton"
KickPlayerButton.Parent = SiperHeroTycoonFrame
KickPlayerButton.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
KickPlayerButton.Position = UDim2.new(0.504761934, 0, 0.285067886, 0)
KickPlayerButton.Size = UDim2.new(0, 58, 0, 21)
KickPlayerButton.Font = Enum.Font.SourceSans
KickPlayerButton.Text = "Kick"
KickPlayerButton.TextColor3 = Color3.new(0, 0, 0)
KickPlayerButton.TextSize = 14

PlayerMoney.Name = "PlayerMoney"
PlayerMoney.Parent = SiperHeroTycoonFrame
PlayerMoney.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
PlayerMoney.BorderColor3 = Color3.new(0, 0, 0)
PlayerMoney.Position = UDim2.new(0.0817387402, 0, 0.498467684, 0)
PlayerMoney.Size = UDim2.new(0, 89, 0, 25)
PlayerMoney.Font = Enum.Font.SourceSans
PlayerMoney.PlaceholderColor3 = Color3.new(0, 0, 0)
PlayerMoney.PlaceholderText = "Player"
PlayerMoney.Text = "Player"
PlayerMoney.TextColor3 = Color3.new(0, 0, 0)
PlayerMoney.TextSize = 14

Money.Name = "Money"
Money.Parent = SiperHeroTycoonFrame
Money.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
Money.BorderColor3 = Color3.new(0, 0, 0)
Money.Position = UDim2.new(0.503145516, 0, 0.498467684, 0)
Money.Size = UDim2.new(0, 89, 0, 25)
Money.Font = Enum.Font.SourceSans
Money.PlaceholderColor3 = Color3.new(0, 0, 0)
Money.PlaceholderText = "Amount of Money"
Money.Text = "Amount of Money"
Money.TextColor3 = Color3.new(0, 0, 0)
Money.TextScaled = true
Money.TextSize = 14
Money.TextWrapped = true

SetMoneyButton.Name = "SetMoneyButton"
SetMoneyButton.Parent = SiperHeroTycoonFrame
SetMoneyButton.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
SetMoneyButton.BorderColor3 = Color3.new(0, 0, 0)
SetMoneyButton.Position = UDim2.new(0.0817387402, 0, 0.695796013, 0)
SetMoneyButton.Size = UDim2.new(0, 178, 0, 27)
SetMoneyButton.Font = Enum.Font.SourceSans
SetMoneyButton.Text = "Set Player Money"
SetMoneyButton.TextColor3 = Color3.new(0, 0, 0)
SetMoneyButton.TextSize = 14

OpenSecondFrame.Name = "OpenSecondFrame"
OpenSecondFrame.Parent = SiperHeroTycoonFrame
OpenSecondFrame.BackgroundColor3 = Color3.new(0, 0, 0)
OpenSecondFrame.BorderColor3 = Color3.new(0, 0, 0)
OpenSecondFrame.Position = UDim2.new(0.461467892, 0, 0.921012759, 0)
OpenSecondFrame.Size = UDim2.new(0, 17, 0, 17)
OpenSecondFrame.Font = Enum.Font.SourceSans
OpenSecondFrame.Text = "v"
OpenSecondFrame.TextColor3 = Color3.new(1, 1, 1)
OpenSecondFrame.TextSize = 14

SecondFrame.Name = "SecondFrame"
SecondFrame.Parent = SiperHeroTycoonFrame
SecondFrame.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
SecondFrame.BackgroundTransparency = 0.30000001192093
SecondFrame.BorderColor3 = Color3.new(0, 0, 0)
SecondFrame.Position = UDim2.new(0.00231540157, 0, 1.00012624, 0)
SecondFrame.Size = UDim2.new(0, 210, 0, 99)
SecondFrame.Visible = false

SetWalkSpeed.Name = "SetWalkSpeed"
SetWalkSpeed.Parent = SecondFrame
SetWalkSpeed.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
SetWalkSpeed.BorderColor3 = Color3.new(0, 0, 0)
SetWalkSpeed.Position = UDim2.new(0.0809523836, 0, 0.556104064, 0)
SetWalkSpeed.Size = UDim2.new(0, 89, 0, 25)
SetWalkSpeed.Font = Enum.Font.SourceSans
SetWalkSpeed.Text = "Set WalkSpeed"
SetWalkSpeed.TextColor3 = Color3.new(0, 0, 0)
SetWalkSpeed.TextSize = 14

JumpPowerAmount.Name = "JumpPowerAmount"
JumpPowerAmount.Parent = SecondFrame
JumpPowerAmount.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
JumpPowerAmount.Position = UDim2.new(0.504761934, 0, 0.115955949, 0)
JumpPowerAmount.Size = UDim2.new(0, 89, 0, 25)
JumpPowerAmount.Font = Enum.Font.SourceSans
JumpPowerAmount.PlaceholderColor3 = Color3.new(0, 0, 0)
JumpPowerAmount.PlaceholderText = "JumpPower"
JumpPowerAmount.Text = "JumpPower"
JumpPowerAmount.TextColor3 = Color3.new(0, 0, 0)
JumpPowerAmount.TextSize = 14

WalkSpeedAmount.Name = "WalkSpeedAmount"
WalkSpeedAmount.Parent = SecondFrame
WalkSpeedAmount.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
WalkSpeedAmount.Position = UDim2.new(0.0809523836, 0, 0.115955949, 0)
WalkSpeedAmount.Size = UDim2.new(0, 89, 0, 25)
WalkSpeedAmount.Font = Enum.Font.SourceSans
WalkSpeedAmount.PlaceholderColor3 = Color3.new(0, 0, 0)
WalkSpeedAmount.PlaceholderText = "WalkSpeed"
WalkSpeedAmount.Text = "WalkSpeed"
WalkSpeedAmount.TextColor3 = Color3.new(0, 0, 0)
WalkSpeedAmount.TextSize = 14

SetJumpPowerButton.Name = "SetJumpPowerButton"
SetJumpPowerButton.Parent = SecondFrame
SetJumpPowerButton.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
SetJumpPowerButton.BorderColor3 = Color3.new(0, 0, 0)
SetJumpPowerButton.Position = UDim2.new(0.503905892, 0, 0.557719946, 0)
SetJumpPowerButton.Size = UDim2.new(0, 89, 0, 25)
SetJumpPowerButton.Font = Enum.Font.SourceSans
SetJumpPowerButton.Text = "Set JumpPower"
SetJumpPowerButton.TextColor3 = Color3.new(0, 0, 0)
SetJumpPowerButton.TextSize = 14

OpenThirdFrame.Name = "OpenThirdFrame"
OpenThirdFrame.Parent = SiperHeroTycoonFrame
OpenThirdFrame.BackgroundColor3 = Color3.new(0, 0, 0)
OpenThirdFrame.BorderColor3 = Color3.new(0, 0, 0)
OpenThirdFrame.Position = UDim2.new(0.929314137, 0, 0.61161691, 0)
OpenThirdFrame.Size = UDim2.new(0, 15, 0, 19)
OpenThirdFrame.Font = Enum.Font.SourceSans
OpenThirdFrame.Text = ">"
OpenThirdFrame.TextColor3 = Color3.new(1, 1, 1)
OpenThirdFrame.TextSize = 14

ThirdFrame.Name = "ThirdFrame"
ThirdFrame.Parent = SiperHeroTycoonFrame
ThirdFrame.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ThirdFrame.BackgroundTransparency = 0.30000001192093
ThirdFrame.BorderColor3 = Color3.new(0, 0, 0)
ThirdFrame.Position = UDim2.new(1.00135434, 0, -0.00119882822, 0)
ThirdFrame.Size = UDim2.new(0, 103, 0, 320)
ThirdFrame.Visible = false

GiveGear.Name = "GiveGear"
GiveGear.Parent = ThirdFrame
GiveGear.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
GiveGear.BorderColor3 = Color3.new(0, 0, 0)
GiveGear.Position = UDim2.new(0.0958912969, 0, 0.0531125516, 0)
GiveGear.Size = UDim2.new(0, 82, 0, 38)
GiveGear.Font = Enum.Font.SourceSans
GiveGear.Text = "Give Gear"
GiveGear.TextColor3 = Color3.new(0, 0, 0)
GiveGear.TextSize = 14

DestroyMap.Name = "Destroy Map"
DestroyMap.Parent = ThirdFrame
DestroyMap.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
DestroyMap.BorderColor3 = Color3.new(0, 0, 0)
DestroyMap.Position = UDim2.new(0.0958912969, 0, 0.196862549, 0)
DestroyMap.Size = UDim2.new(0, 82, 0, 38)
DestroyMap.Font = Enum.Font.SourceSans
DestroyMap.Text = "Destroy Map"
DestroyMap.TextColor3 = Color3.new(0, 0, 0)
DestroyMap.TextSize = 14

DeleteTool.Name = "Delete Tool"
DeleteTool.Parent = ThirdFrame
DeleteTool.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
DeleteTool.BorderColor3 = Color3.new(0, 0, 0)
DeleteTool.Position = UDim2.new(0.0958912969, 0, 0.343737543, 0)
DeleteTool.Size = UDim2.new(0, 82, 0, 38)
DeleteTool.Font = Enum.Font.SourceSans
DeleteTool.Text = "Delete Tool"
DeleteTool.TextColor3 = Color3.new(0, 0, 0)
DeleteTool.TextSize = 14

DeleteDoors.Name = "DeleteDoors"
DeleteDoors.Parent = ThirdFrame
DeleteDoors.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
DeleteDoors.BorderColor3 = Color3.new(0, 0, 0)
DeleteDoors.Position = UDim2.new(0.0960000008, 0, 0.49000001, 0)
DeleteDoors.Size = UDim2.new(0, 82, 0, 38)
DeleteDoors.SizeConstraint = Enum.SizeConstraint.RelativeXX
DeleteDoors.Font = Enum.Font.SourceSans
DeleteDoors.Text = "Delete Doors"
DeleteDoors.TextColor3 = Color3.new(0, 0, 0)
DeleteDoors.TextSize = 14

RemoveToolsButton.Name = "RemoveToolsButton"
RemoveToolsButton.Parent = ThirdFrame
RemoveToolsButton.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
RemoveToolsButton.BorderColor3 = Color3.new(0, 0, 0)
RemoveToolsButton.Position = UDim2.new(0.0960000008, 0, 0.636875033, 0)
RemoveToolsButton.Size = UDim2.new(0, 82, 0, 38)
RemoveToolsButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
RemoveToolsButton.Font = Enum.Font.SourceSans
RemoveToolsButton.Text = "Remove Tools"
RemoveToolsButton.TextColor3 = Color3.new(0, 0, 0)
RemoveToolsButton.TextSize = 14

ShoutsButton.Name = "ShoutsButton"
ShoutsButton.Parent = ThirdFrame
ShoutsButton.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0.498039)
ShoutsButton.BorderColor3 = Color3.new(0, 0, 0)
ShoutsButton.Position = UDim2.new(0.0960000008, 0, 0.783750057, 0)
ShoutsButton.Size = UDim2.new(0, 82, 0, 38)
ShoutsButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
ShoutsButton.Font = Enum.Font.SourceSans
ShoutsButton.Text = "Unlimited Shouts"
ShoutsButton.TextColor3 = Color3.new(0, 0, 0)
ShoutsButton.TextSize = 14
ShoutsButton.TextWrapped = true

CreditsFrame.Name = "CreditsFrame"
CreditsFrame.Parent = SiperHeroTycoonFrame
CreditsFrame.BackgroundColor3 = Color3.new(0.333333, 0, 1)
CreditsFrame.BorderColor3 = Color3.new(0, 0, 0)
CreditsFrame.Position = UDim2.new(-0.838095248, 0, 0, 0)
CreditsFrame.Size = UDim2.new(0, 176, 0, 320)
CreditsFrame.Visible = false

ObitoXDm8OICredits.Name = "ObitoXDm8OI Credits"
ObitoXDm8OICredits.Parent = CreditsFrame
ObitoXDm8OICredits.BackgroundColor3 = Color3.new(0.333333, 0, 1)
ObitoXDm8OICredits.BorderColor3 = Color3.new(0, 0, 0)
ObitoXDm8OICredits.BorderSizePixel = 0
ObitoXDm8OICredits.Position = UDim2.new(0, 0, 0.106250003, 0)
ObitoXDm8OICredits.Size = UDim2.new(0, 176, 0, 83)
ObitoXDm8OICredits.Font = Enum.Font.SourceSans
ObitoXDm8OICredits.Text = "Big Thanks to ObitoXDm8OI for letting me use some of his scripts from his admin script"
ObitoXDm8OICredits.TextColor3 = Color3.new(0, 0, 0)
ObitoXDm8OICredits.TextScaled = true
ObitoXDm8OICredits.TextSize = 14
ObitoXDm8OICredits.TextWrapped = true

Shootingisgood9Credits.Name = "Shootingisgood9Credits"
Shootingisgood9Credits.Parent = CreditsFrame
Shootingisgood9Credits.BackgroundColor3 = Color3.new(0.333333, 0, 1)
Shootingisgood9Credits.BorderSizePixel = 0
Shootingisgood9Credits.Position = UDim2.new(-5.21242619e-05, 0, 0.364815742, 0)
Shootingisgood9Credits.Size = UDim2.new(0, 176, 0, 65)
Shootingisgood9Credits.Font = Enum.Font.SourceSans
Shootingisgood9Credits.Text = "Another big thanks to Shootingisgood9 for his delete tool"
Shootingisgood9Credits.TextColor3 = Color3.new(0, 0, 0)
Shootingisgood9Credits.TextScaled = true
Shootingisgood9Credits.TextSize = 13
Shootingisgood9Credits.TextWrapped = true

CreditsLabel.Name = "CreditsLabel"
CreditsLabel.Parent = CreditsFrame
CreditsLabel.BackgroundColor3 = Color3.new(0.94902, 0.219608, 1)
CreditsLabel.Position = UDim2.new(0.00281381607, 0, 0, 0)
CreditsLabel.Size = UDim2.new(0, 176, 0, 34)
CreditsLabel.Font = Enum.Font.SourceSans
CreditsLabel.Text = "Credits"
CreditsLabel.TextColor3 = Color3.new(0, 0, 0)
CreditsLabel.TextSize = 14

OpenCreditsButton.Name = "OpenCreditsButton"
OpenCreditsButton.Parent = SiperHeroTycoonFrame
OpenCreditsButton.BackgroundColor3 = Color3.new(0, 0, 0)
OpenCreditsButton.BorderColor3 = Color3.new(0, 0, 0)
OpenCreditsButton.Position = UDim2.new(0, 0, 0.610859752, 0)
OpenCreditsButton.Size = UDim2.new(0, 17, 0, 19)
OpenCreditsButton.Font = Enum.Font.SourceSans
OpenCreditsButton.Text = "<"
OpenCreditsButton.TextColor3 = Color3.new(1, 1, 1)
OpenCreditsButton.TextSize = 14
-- Scripts:
KickPlayerButton.MouseButton1Click:connect(function()
               if PlayerToKill.Text == "others" or  PlayerToKill.Text == "all" then
                       for i,v in pairs(game.Players:GetChildren()) do
                           if v.Name ~= game.Players.LocalPlayer.Name then
                               game.ReplicatedStorage.Events.destryObj:FireServer(v)
                           end
                       end
               else
               for i,v in pairs(game.Players:GetChildren()) do
if v.Name == PlayerToKill.Text then
game.ReplicatedStorage.Events.destryObj:FireServer(v)
end
end
               end
end)
KillPlayerButton.MouseButton1Click:connect(function()
               if PlayerToKill.Text == "others" or  PlayerToKill.Text == "all" then
                       for i,v in pairs(game.Players:GetChildren()) do
                           if v.Name ~= game.Players.LocalPlayer.Name then
                               game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Head)
                       end
end
               else
               for i,v in pairs(game.Players:GetChildren()) do
if v.Name == PlayerToKill.Text then
game.ReplicatedStorage.Events.destryObj:FireServer(v.Character.Torso.Neck)
end
end
               end
end)
SetMoneyButton.MouseButton1Click:connect(function()
               if PlayerMoney.Text == "others" then
                       for i,v in pairs(game.ReplicatedStorage.PlayerMoney:GetChildren()) do
                           if v.Name ~= game.Players.LocalPlayer.Name then
                               game.ReplicatedStorage.Events.changeValue:InvokeServer(v, Money.Text)
                           end
                       end
               else
               if PlayerMoney.Text == "all" then
                       for i,v in pairs(game.ReplicatedStorage.PlayerMoney:GetChildren()) do
                               game.ReplicatedStorage.Events.changeValue:InvokeServer(v, Money.Text)
                           end
                      
               else
               if PlayerMoney.Text == "me" then
                       for i,v in pairs(game.ReplicatedStorage.PlayerMoney:GetChildren()) do
                           if v.Name == game.Players.LocalPlayer.Name then
                               game.ReplicatedStorage.Events.changeValue:InvokeServer(v, Money.Text)
                           end
                       end
else
               for i,v in pairs(game.ReplicatedStorage.PlayerMoney:GetChildren()) do
if v.Name == PlayerMoney.Text then
game.ReplicatedStorage.Events.changeValue:InvokeServer(v, Money.Text)
end
end
end
end
end
end)
OpenSecondFrame.MouseButton1Click:connect(function()
if SecondFrame.Visible == false then
SecondFrame.Visible = true
OpenSecondFrame.Text = "^"
else
SecondFrame.Visible = false
OpenSecondFrame.Text = "v"

end
end)
SetWalkSpeed.MouseButton1Click:connect(function()
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeedAmount.Text
end)
SetJumpPowerButton.MouseButton1Click:connect(function()
game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = JumpPowerAmount.Text
end)
OpenThirdFrame.MouseButton1Click:connect(function()
if ThirdFrame.Visible == false then
ThirdFrame.Visible = true
OpenThirdFrame.Text = "<"
else
ThirdFrame.Visible = false
OpenThirdFrame.Text = ">"

end
end)
DeleteTool.MouseButton1Click:connect(function()
local cunt = Instance.new("Tool")
local biggercunt = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
local rekt = game.ReplicatedStorage.Events.destryObj
biggercunt.Parent = cunt
biggercunt.Size = Vector3.new(0.2, 0.2, 0.2)
cunt.Parent = plr.Backpack
cunt.Name = "Delete"
biggercunt.Name = "Handle"
cunt.Equipped:Connect(function(m_S)
print("m")
   
m_S.Button1Down:Connect(function()
print("M")
       
tar_obj = m_S.Target
       
rekt:FireServer(tar_obj)
   
end)
end)
end)
DeleteDoors.MouseButton1Click:connect(function()
for i,v in pairs(game.Workspace["Zednov's Tycoon Kit"].Tycoons:GetChildren()) do
if v.Owner ~= game.Players.LocalPlayer.Name then
potato = v.PurchasedObjects:FindFirstChild("Door")
if potato then
game.ReplicatedStorage.Events.destryObj:FireServer(v.PurchasedObjects.Door)
else
print("Door be gone")
end
end
end
end)
DestroyMap.MouseButton1Click:connect(function()
for i,v in pairs(game.Workspace:GetChildren()) do
                   if not v:IsA("Model") or not v:IsA("Camera") or not v:IsA("Terrain") then
                       game.ReplicatedStorage.Events.destryObj:FireServer(v)
                   end
               end
end)
GiveGear.MouseButton1Click:connect(function()
for i,v in pairs(game.ReplicatedStorage.BoxItems:GetChildren()) do
game:GetService("ReplicatedStorage").Events.CrateClaim:FireServer("Gear", v)
end
end)
RemoveToolsButton.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
for i,z in pairs(v.Backpack:GetChildren()) do
game.ReplicatedStorage.Events.destryObj:FireServer(z)

end
end
end
end)
ShoutsButton.MouseButton1Click:connect(function()
game.ReplicatedStorage.Events.changeValue:InvokeServer(game.Players.LocalPlayer.Shouts, 2e9)
end)
OpenCreditsButton.MouseButton1Click:connect(function()
if CreditsFrame.Visible == false then
CreditsFrame.Visible = true
OpenCreditsButton.Text = ">"
else
CreditsFrame.Visible = false
OpenCreditsButton.Text = "<"

end
end)
plr = game:GetService("Players").LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "z" then
if SiperHeroTycoonFrame.Visible == true
then SiperHeroTycoonFrame.Visible = false
else SiperHeroTycoonFrame.Visible = true
end
end
end)
print("Credits to Shootingisgood9 for his delete tool")
print("Credits to ObitoXDm8OI for letting me use some of his scripts")