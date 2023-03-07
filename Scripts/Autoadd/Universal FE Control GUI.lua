-- Objects
plr = game.Players.LocalPlayer
ControlGui = Instance.new("ScreenGui")
Frame = Instance.new("Frame")
TextButton = Instance.new("TextButton")
TextBox = Instance.new("TextBox")

-- Properties

ControlGui.Name = "ControlGui"
ControlGui.Parent = plr.PlayerGui

Frame.Parent = ControlGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0, 300, 0, 200)
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Position = UDim2.new(0, 50, 0, 90)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.FontSize = Enum.FontSize.Size32
TextButton.Text = "Control"
TextButton.TextSize = 30
TextButton.MouseButton1Down:connect(function()
 if TextButton.Text == "Control" then
 TextButton.Text = "UnControl" 
 workspace[TextBox.Text].Humanoid.PlatformStand = true
 W1 = Instance.new("Weld",workspace)
 W1.Name = "Weld1"
 W1.Part0 = plr.Character.Torso
 W1.Part1 = workspace[TextBox.Text].Torso
 W2 = Instance.new("Weld",workspace)
 W2.Name = "Weld2"
 W2.Part0 = plr.Character.Head
 W2.Part1 = workspace[TextBox.Text].Head
 W3 = Instance.new("Weld",workspace)
 W3.Name = "Weld3"
 W3.Part0 = plr.Character.HumanoidRootPart
 W3.Part1 = workspace[TextBox.Text].HumanoidRootPart
 W4 = Instance.new("Weld",workspace)
 W4.Name = "Weld4"
 W4.Part0 = plr.Character["Left Arm"]
 W4.Part1 = workspace[TextBox.Text]["Left Arm"]
 W5 = Instance.new("Weld",workspace)
 W5.Name = "Weld5"
 W5.Part0 = plr.Character["Left Leg"]
 W5.Part1 = workspace[TextBox.Text]["Left Leg"]
 W6 = Instance.new("Weld",workspace)
 W6.Name = "Weld6"
 W6.Part0 = plr.Character["Right Arm"]
 W6.Part1 = workspace[TextBox.Text]["Right Arm"]
 W7 = Instance.new("Weld",workspace)
 W7.Name = "Weld7"
 W7.Part0 = plr.Character["Right Leg"]
 W7.Part1 = workspace[TextBox.Text]["Right Leg"]
 for i,v in pairs(plr.Character:GetChildren()) do
   if v.ClassName == "Part" then
    v.Transparency = 1
   end
   plr.Character.HumanoidRootPart.Transparency = 1
   if v.ClassName == "Accessory" then
    v.Handle.Transparency = 1
   end
   plr.Character.Humanoid.NameOcclusion = "NoOcclusion"
 end
 elseif TextButton.Text == "UnControl" then
 TextButton.Text = "Control"
 workspace[TextBox.Text].Humanoid.PlatformStand = false
 workspace.Weld1:Remove()
 workspace.Weld2:Remove()
 workspace.Weld3:Remove()
 workspace.Weld4:Remove()
 workspace.Weld5:Remove()
 workspace.Weld6:Remove()
 workspace.Weld7:Remove()
 for i,v in pairs(plr.Character:GetChildren()) do
   if v.ClassName == "Part" then
    v.Transparency = 0
   end
   plr.Character.HumanoidRootPart.Transparency = 1
   if v.ClassName == "Accessory" then
    v.Handle.Transparency = 0
   end
   plr.Character.Humanoid.NameOcclusion = "OccludeAll"
 end
end
end)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.Position = UDim2.new(0, 50, 0, 20)
TextBox.Size = UDim2.new(0, 200, 0, 30)
TextBox.Font = Enum.Font.SourceSans
TextBox.FontSize = Enum.FontSize.Size28
TextBox.Text = "Name"
TextBox.TextSize = 25