local SilentAssassinV1 = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Inf = Instance.new("TextButton")
local Border = Instance.new("TextLabel")
local Border_2 = Instance.new("TextLabel")
local Tp = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Esp = Instance.new("TextButton")
local Open = Instance.new("TextButton")
 
SilentAssassinV1.Name = "SilentAssassinV1"
SilentAssassinV1.Parent = game.CoreGui
 
Main.Name = "Main"
Main.Parent = SilentAssassinV1
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.new(1, 1, 1)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.439999998, 0, -0.379999995, 0)
Main.Size = UDim2.new(0, 313, 0, 226)
Main.Style = Enum.FrameStyle.RobloxRound
 
Inf.Name = "Inf"
Inf.Parent = Main
Inf.BackgroundColor3 = Color3.new(0.266667, 0.611765, 0.705882)
Inf.Position = UDim2.new(0.293356001, 0, 0.369042367, 0)
Inf.Size = UDim2.new(0, 121, 0, 30)
Inf.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Inf.Font = Enum.Font.SciFi
Inf.Text = "Inf Jump"
Inf.TextColor3 = Color3.new(0.227451, 0.329412, 0.423529)
Inf.TextSize = 16
Inf.TextStrokeColor3 = Color3.new(0.227451, 0.329412, 0.423529)
 
Border.Name = "Border"
Border.Parent = Main
Border.BackgroundColor3 = Color3.new(0.376471, 0.698039, 1)
Border.BorderSizePixel = 0
Border.Position = UDim2.new(-0.0278844871, 0, 0.163740993, 0)
Border.Size = UDim2.new(0, 313, 0, 8)
Border.SizeConstraint = Enum.SizeConstraint.RelativeXX
Border.Font = Enum.Font.SourceSans
Border.Text = ""
Border.TextColor3 = Color3.new(0, 0, 0)
Border.TextSize = 14
 
Border_2.Name = "Border"
Border_2.Parent = Main
Border_2.BackgroundColor3 = Color3.new(0.376471, 0.698039, 1)
Border_2.BorderSizePixel = 0
Border_2.Position = UDim2.new(-0.0283860359, 0, -0.0413680971, 0)
Border_2.Size = UDim2.new(0, 313, 0, 8)
Border_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
Border_2.Font = Enum.Font.SourceSans
Border_2.Text = ""
Border_2.TextColor3 = Color3.new(0, 0, 0)
Border_2.TextSize = 14
 
Tp.Name = "Tp"
Tp.Parent = Main
Tp.BackgroundColor3 = Color3.new(0.266667, 0.611765, 0.705882)
Tp.Position = UDim2.new(0.290669143, 0, 0.738794327, 0)
Tp.Size = UDim2.new(0, 121, 0, 30)
Tp.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Tp.Font = Enum.Font.SciFi
Tp.Text = "Tp Players Head"
Tp.TextColor3 = Color3.new(0.227451, 0.329412, 0.423529)
Tp.TextSize = 16
Tp.TextStrokeColor3 = Color3.new(0.227451, 0.329412, 0.423529)
 
Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.161489859, 0, 0.0452267826, 0)
Title.Size = UDim2.new(0, 200, 0, 16)
Title.Font = Enum.Font.SciFi
Title.Text = "Silent Assassin V1"
Title.TextColor3 = Color3.new(0.819608, 0.819608, 0.819608)
Title.TextSize = 23
 
Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(0.266667, 0.611765, 0.705882)
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(-0.0285393968, 0, 0.891390383, 0)
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Font = Enum.Font.SciFi
Close.Text = "X"
Close.TextColor3 = Color3.new(0.74902, 0, 0)
Close.TextSize = 16
Close.TextStrokeColor3 = Color3.new(0.227451, 0.329412, 0.423529)
 
Esp.Name = "Esp"
Esp.Parent = Main
Esp.BackgroundColor3 = Color3.new(0.266667, 0.611765, 0.705882)
Esp.Position = UDim2.new(0.289959162, 0, 0.553506851, 0)
Esp.Size = UDim2.new(0, 121, 0, 30)
Esp.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Esp.Font = Enum.Font.SciFi
Esp.Text = "Esp"
Esp.TextColor3 = Color3.new(0.227451, 0.329412, 0.423529)
Esp.TextSize = 16
Esp.TextStrokeColor3 = Color3.new(0.227451, 0.329412, 0.423529)
 
Open.Name = "Open"
Open.Parent = SilentAssassinV1
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.Position = UDim2.new(0, 0, 0.761627853, 0)
Open.Size = UDim2.new(0, 174, 0, 43)
Open.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Open.Font = Enum.Font.SciFi
Open.Text = "Open Main"
Open.TextColor3 = Color3.new(0.215686, 0.443137, 0.619608)
Open.TextSize = 28
 
--Making Script--
 
--Open Animation--
 
Open.MouseButton1Click:connect(function()
    Main:TweenPosition(UDim2.new(0.44, 0,0.38, 0), 'In', 'Bounce', 1, true)
    Open.Visible = false
end)
 
--Close Animation--
 
Close.MouseButton1Click:connect(function()
    Main:TweenPosition(UDim2.new(0.44, 0,-0.38, 0), 'Out', 'Bounce', 1, true)
    Open.Visible = true
end)
 
--Tp Head--
 
Tp.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
v.Character.Head.Anchored = true
v.Character.Head.CFrame = game.Players.LocalPlayer.Character.Head.CFrame*CFrame.new(0,0,-5)
end
end
end)
 
--Inf Jumps--
 
Inf.MouseButton1Click:connect(function()
local plr = game:GetService"Players".LocalPlayer
game:GetService("UserInputService").JumpRequest:connect(function()
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
end)
end)
 
--Esp--
 
Esp.MouseButton1Click:connect(function()
wait(0.5)
 
plrs = nil
for _,p in pairs(game:GetChildren()) do
   if p.ClassName == ("Players") then
   plrs = p
   end
end
 
 
while true do
wait(0.1)
for _, v in pairs(plrs:GetChildren()) do
if v.TeamColor ~= plrs.LocalPlayer.TeamColor and not v.Character.Head:FindFirstChild("BillboardGui") then --   ~=
i = Instance.new("BillboardGui",v.Character.Head)
i.Active = true
i.AlwaysOnTop = true
i.Size = UDim2.new(1,0,1,0)
h = Instance.new("Frame",i)
h.Size = UDim2.new(2,0,1,0)
h.AnchorPoint = Vector2.new(0.25, 0)
h.BackgroundColor3 = Color3.new(1,0,0)
h.BorderSizePixel = 0
h.BackgroundTransparency = 0.4
 
i2 = Instance.new("BillboardGui",v.Character.Torso)
i2.Active = true
i2.AlwaysOnTop = true
i2.Size = UDim2.new(2,0,2,0)
t = Instance.new("Frame",i2)
t.Size = UDim2.new(1,0,1,0)
t.AnchorPoint = Vector2.new(0, 0)
t.BackgroundColor3 = Color3.new(0,1,0)
t.BorderSizePixel = 0
t.BackgroundTransparency = 0.4
 
i3 = Instance.new("BillboardGui",v.Character["Left Arm"])
i3.Active = true
i3.AlwaysOnTop = true
i3.Size = UDim2.new(1,0,2,0)
la = Instance.new("Frame",i3)
la.Size = UDim2.new(1,0,1,0)
la.AnchorPoint = Vector2.new(0, 0)
la.BackgroundColor3 = Color3.new(0,0,1)
la.BorderSizePixel = 0
la.BackgroundTransparency = 0.4
 
i4 = Instance.new("BillboardGui",v.Character["Right Arm"])
i4.Active = true
i4.AlwaysOnTop = true
i4.Size = UDim2.new(1,0,2,0)
ra = Instance.new("Frame",i4)
ra.Size = UDim2.new(1,0,1,0)
ra.AnchorPoint = Vector2.new(0, 0)
ra.BackgroundColor3 = Color3.new(0,0,1)
ra.BorderSizePixel = 0
ra.BackgroundTransparency = 0.4
 
i5 = Instance.new("BillboardGui",v.Character["Left Leg"])
i5.Active = true
i5.AlwaysOnTop = true
i5.Size = UDim2.new(1,0,2,0)
ll = Instance.new("Frame",i5)
ll.Size = UDim2.new(1,0,1,0)
ll.AnchorPoint = Vector2.new(0, 0)
ll.BackgroundColor3 = Color3.new(0,0,1)
ll.BorderSizePixel = 0
ll.BackgroundTransparency = 0.4
 
i6 = Instance.new("BillboardGui",v.Character["Right Leg"])
i6.Active = true
i6.AlwaysOnTop = true
i6.Size = UDim2.new(1,0,2,0)
rl = Instance.new("Frame",i6)
rl.Size = UDim2.new(1,0,1,0)
rl.AnchorPoint = Vector2.new(0, 0)
rl.BackgroundColor3 = Color3.new(0,0,1)
rl.BorderSizePixel = 0
rl.BackgroundTransparency = 0.4
 
end
end
end
end)
 
--End Of The Script--