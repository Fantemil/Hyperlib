local GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Topbar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local SubFrame = Instance.new("Frame")
local AirTP = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local BoolToggle = Instance.new("TextButton")
local AutoRun = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local BoolToggle_2 = Instance.new("TextButton")
local Keybind = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local CurrentBind = Instance.new("TextBox")
local QuickInvis = Instance.new("TextButton")
local Rigtype = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
 
-- Properties
 
GUI.Name = "GUI"
GUI.Parent = game.CoreGui
 
Main.Name = "Main"
Main.Parent = GUI
Main.Active = true
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BackgroundTransparency = 0.5
Main.BorderSizePixel = 0
Main.Draggable = true
Main.Position = UDim2.new(0.318181813, 0, 0.312252969, 0)
Main.Size = UDim2.new(0.363636374, 0, 0.375494063, 0)
 
Topbar.Name = "Topbar"
Topbar.Parent = Main
Topbar.BackgroundColor3 = Color3.new(0, 0, 0)
Topbar.BackgroundTransparency = 0.9990000128746
Topbar.Size = UDim2.new(1, 0, 0.163157895, 0)
 
Title.Name = "Title"
Title.Parent = Topbar
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BackgroundTransparency = 0.9990000128746
Title.Size = UDim2.new(0.784722209, 0, 1, 0)
Title.Font = Enum.Font.SciFi
Title.FontSize = Enum.FontSize.Size14
Title.Text = "FE Invisible By Timeless"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14
 
Exit.Name = "Exit"
Exit.Parent = Topbar
Exit.BackgroundColor3 = Color3.new(0, 0, 0)
Exit.BackgroundTransparency = 0.9990000128746
Exit.Position = UDim2.new(0.892361104, 0, 0, 0)
Exit.Size = UDim2.new(0.107638888, 0, 1, 0)
Exit.Font = Enum.Font.SciFi
Exit.FontSize = Enum.FontSize.Size14
Exit.Text = "X"
Exit.TextColor3 = Color3.new(1, 1, 1)
Exit.TextSize = 14
 
Minimize.Name = "Minimize"
Minimize.Parent = Topbar
Minimize.BackgroundColor3 = Color3.new(0, 0, 0)
Minimize.BackgroundTransparency = 0.9990000128746
Minimize.Position = UDim2.new(0.784722209, 0, 0, 0)
Minimize.Size = UDim2.new(0.107638888, 0, 1, 0)
Minimize.Font = Enum.Font.SciFi
Minimize.FontSize = Enum.FontSize.Size14
Minimize.Text = "-"
Minimize.TextColor3 = Color3.new(1, 1, 1)
Minimize.TextSize = 14
 
SubFrame.Name = "SubFrame"
SubFrame.Parent = Main
SubFrame.BackgroundColor3 = Color3.new(0, 0, 0)
SubFrame.BackgroundTransparency = 0.5
SubFrame.BorderSizePixel = 0
SubFrame.Position = UDim2.new(0, 0, 0.163157895, 0)
SubFrame.Size = UDim2.new(1, 0, 0.83684212, 0)
 
AirTP.Name = "AirTP"
AirTP.Parent = SubFrame
AirTP.BackgroundColor3 = Color3.new(0, 0, 0)
AirTP.BackgroundTransparency = 0.9990000128746
AirTP.BorderSizePixel = 0
AirTP.Position = UDim2.new(0, 0, 0.0628930852, 0)
AirTP.Size = UDim2.new(1, 0, 0.176100627, 0)
 
TextLabel.Parent = AirTP
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.9990000128746
TextLabel.Position = UDim2.new(0.166666672, 0, 0, 0)
TextLabel.Size = UDim2.new(0.284722209, 0, 1, 0)
TextLabel.Font = Enum.Font.SciFi
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "Air TP"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel_2.Parent = AirTP
TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_2.BackgroundTransparency = 0.9990000128746
TextLabel_2.Position = UDim2.new(0.451388896, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0.0972222239, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "-"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 14
 
BoolToggle.Name = "BoolToggle"
BoolToggle.Parent = AirTP
BoolToggle.BackgroundColor3 = Color3.new(0.207843, 1, 0.392157)
BoolToggle.BackgroundTransparency = 0.5
BoolToggle.BorderSizePixel = 0
BoolToggle.Position = UDim2.new(0.784722209, 0, 0, 0)
BoolToggle.Size = UDim2.new(0.215277776, 0, 1, 0)
BoolToggle.Font = Enum.Font.SciFi
BoolToggle.FontSize = Enum.FontSize.Size14
BoolToggle.Text = "true"
BoolToggle.TextColor3 = Color3.new(1, 1, 1)
BoolToggle.TextSize = 14
 
AutoRun.Name = "AutoRun"
AutoRun.Parent = SubFrame
AutoRun.BackgroundColor3 = Color3.new(0, 0, 0)
AutoRun.BackgroundTransparency = 0.9990000128746
AutoRun.Position = UDim2.new(0, 0, 0.238993704, 0)
AutoRun.Size = UDim2.new(1, 0, 0.176100627, 0)
 
TextLabel_3.Parent = AutoRun
TextLabel_3.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_3.BackgroundTransparency = 0.9990000128746
TextLabel_3.Position = UDim2.new(0.166666672, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0.284722209, 0, 1, 0)
TextLabel_3.Font = Enum.Font.SciFi
TextLabel_3.FontSize = Enum.FontSize.Size14
TextLabel_3.Text = "Auto Run"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextSize = 14
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel_4.Parent = AutoRun
TextLabel_4.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_4.BackgroundTransparency = 0.9990000128746
TextLabel_4.Position = UDim2.new(0.451388896, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0.0972222239, 0, 1, 0)
TextLabel_4.Font = Enum.Font.SciFi
TextLabel_4.FontSize = Enum.FontSize.Size14
TextLabel_4.Text = "-"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextSize = 14
 
BoolToggle_2.Name = "BoolToggle"
BoolToggle_2.Parent = AutoRun
BoolToggle_2.BackgroundColor3 = Color3.new(0.207843, 1, 0.392157)
BoolToggle_2.BackgroundTransparency = 0.5
BoolToggle_2.BorderSizePixel = 0
BoolToggle_2.Position = UDim2.new(0.784722209, 0, 0, 0)
BoolToggle_2.Size = UDim2.new(0.215277776, 0, 1, 0)
BoolToggle_2.Font = Enum.Font.SciFi
BoolToggle_2.FontSize = Enum.FontSize.Size14
BoolToggle_2.Text = "true"
BoolToggle_2.TextColor3 = Color3.new(1, 1, 1)
BoolToggle_2.TextSize = 14
 
Keybind.Name = "Keybind"
Keybind.Parent = SubFrame
Keybind.BackgroundColor3 = Color3.new(0, 0, 0)
Keybind.BackgroundTransparency = 0.9990000128746
Keybind.Position = UDim2.new(0, 0, 0.415094346, 0)
Keybind.Size = UDim2.new(1, 0, 0.176100627, 0)
 
TextLabel_5.Parent = Keybind
TextLabel_5.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_5.BackgroundTransparency = 0.9990000128746
TextLabel_5.Position = UDim2.new(0.166666672, 0, 0, 0)
TextLabel_5.Size = UDim2.new(0.284722209, 0, 1, 0)
TextLabel_5.Font = Enum.Font.SciFi
TextLabel_5.FontSize = Enum.FontSize.Size14
TextLabel_5.Text = "Keybind"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextSize = 14
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
 
TextLabel_6.Parent = Keybind
TextLabel_6.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_6.BackgroundTransparency = 0.9990000128746
TextLabel_6.Position = UDim2.new(0.451388896, 0, 0, 0)
TextLabel_6.Size = UDim2.new(0.0972222239, 0, 1, 0)
TextLabel_6.Font = Enum.Font.SciFi
TextLabel_6.FontSize = Enum.FontSize.Size14
TextLabel_6.Text = "-"
TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
TextLabel_6.TextSize = 14
 
CurrentBind.Name = "CurrentBind"
CurrentBind.Parent = Keybind
CurrentBind.BackgroundColor3 = Color3.new(0.262745, 0.964706, 1)
CurrentBind.BackgroundTransparency = 0.5
CurrentBind.BorderSizePixel = 0
CurrentBind.Position = UDim2.new(0.784722209, 0, 0, 0)
CurrentBind.Size = UDim2.new(0.215277776, 0, 1, 0)
CurrentBind.Font = Enum.Font.SciFi
CurrentBind.FontSize = Enum.FontSize.Size14
CurrentBind.Text = "i"
CurrentBind.TextColor3 = Color3.new(1, 1, 1)
CurrentBind.TextSize = 14
 
QuickInvis.Name = "QuickInvis"
QuickInvis.Parent = SubFrame
QuickInvis.BackgroundColor3 = Color3.new(1, 0.227451, 0.227451)
QuickInvis.BackgroundTransparency = 0.5
QuickInvis.BorderSizePixel = 0
QuickInvis.Position = UDim2.new(0, 0, 0.823899388, 0)
QuickInvis.Size = UDim2.new(1, 0, 0.176100627, 0)
QuickInvis.Font = Enum.Font.SciFi
QuickInvis.FontSize = Enum.FontSize.Size14
QuickInvis.Text = "Go Invisible"
QuickInvis.TextColor3 = Color3.new(1, 1, 1)
QuickInvis.TextSize = 14
 
Rigtype.Name = "Rigtype"
Rigtype.Parent = SubFrame
Rigtype.BackgroundColor3 = Color3.new(0, 0, 0)
Rigtype.BackgroundTransparency = 0.69999998807907
Rigtype.BorderSizePixel = 0
Rigtype.Position = UDim2.new(0, 0, 0.647798777, 0)
Rigtype.Size = UDim2.new(1, 0, 0.176100627, 0)
Rigtype.Font = Enum.Font.SciFi
Rigtype.FontSize = Enum.FontSize.Size14
Rigtype.Text = "Your Rigtype - RigTypeHere"
Rigtype.TextColor3 = Color3.new(1, 1, 1)
Rigtype.TextSize = 14
 
TextButton.Parent = GUI
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BackgroundTransparency = 0.5
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0265151523, 0, 0.865612626, 0)
TextButton.Size = UDim2.new(0.0606060624, 0, 0.0948616564, 0)
TextButton.Font = Enum.Font.SciFi
TextButton.FontSize = Enum.FontSize.Size14
TextButton.Text = "Open"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 14
 
local Player   = game:GetService('Players').LocalPlayer
local Mouse    = Player:GetMouse()
 
local AutoRun  = true
local AirTP    = true
local Keybind  = 'i'
 
local Green    = Color3.fromRGB(53, 255, 100)
local Red      = Color3.fromRGB(255, 58, 58)
 
local function CheckRig()
   if Player.Character then
       local Humanoid = Player.Character:WaitForChild('Humanoid')
       if Humanoid.RigType == Enum.HumanoidRigType.R15 then
           return 'R15'
       else
           return 'R6'
       end
   end
end
 
local function InitiateInvis()
   local Character = Player.Character
   local StoredCF = Character.PrimaryPart.CFrame
   if AirTP then
       local Part = Instance.new('Part',workspace)
       Part.Size = Vector3.new(5,0,5)
       Part.Anchored = true
       Part.CFrame = CFrame.new(Vector3.new(9999,9999,9999))
       Character.PrimaryPart.CFrame = Part.CFrame*CFrame.new(0,3,0)
       spawn(function()
           wait(3)
           Part:Destroy()
       end)
   end
   if CheckRig() == 'R6' then
       local Clone = Character.HumanoidRootPart:Clone()
       Character.HumanoidRootPart:Destroy()
       Clone.Parent = Character
   else
       local Clone = Character.LowerTorso.Root:Clone()
       Character.LowerTorso.Root:Destroy()
       Clone.Parent = Character.LowerTorso
   end
   if AirTP then
       wait(1)
       Character.PrimaryPart.CFrame = StoredCF
   end
end
 
local function OnCharacterAdded()
   SubFrame.Rigtype.Text = ('Your Rigtype - %s'):format(CheckRig())
   if AutoRun then
       InitiateInvis()
   end
end
 
local function OnButtonPress(Button)
   if Button == Keybind:lower() then
       InitiateInvis()
   end
end
 
local function OnGoInvisPress()
   InitiateInvis()
end
 
local function OnKeyBindTextChange()
   local cb = SubFrame.Keybind.CurrentBind
   if cb.Text:match('%w') then
       Keybind = cb.Text:match('%w'):lower()
       cb.Text = Keybind
   elseif cb.Text ~= '' then
       Keybind = 'i'
       cb.Text = Keybind
   end
   print(Keybind)
end
 
local function OnAutoRunPress()
   local Ar = SubFrame.AutoRun.BoolToggle
   if AutoRun then
       Ar.BackgroundColor3 = Red
       Ar.Text = tostring(not AutoRun)
       AutoRun = false
   else
       Ar.BackgroundColor3 = Green
       Ar.Text = tostring(not AutoRun)
       AutoRun = true
   end
end
 
local function OnAirTPPress()
   local ATP = SubFrame.AirTP.BoolToggle
   if AirTP then
       ATP.BackgroundColor3 = Red
       ATP.Text = tostring(false)
       AirTP = false
   else
       ATP.BackgroundColor3 = Green
       ATP.Text = tostring(true)
       AirTP = true
   end
end
 
local function OnMinimizePress()
   Main.Visible = false
   GUI.TextButton.Visible = true
end
 
local function OnOpenPress()
   Main.Visible = true
   GUI.TextButton.Visible = false
end
 
local function OnClosePress()
   GUI:Destroy()
end
 
SubFrame.Keybind.CurrentBind:GetPropertyChangedSignal('Text'):connect(OnKeyBindTextChange)
Mouse.KeyDown:connect(OnButtonPress)
SubFrame.AutoRun.BoolToggle.MouseButton1Down:connect(OnAutoRunPress)
SubFrame.AirTP.BoolToggle.MouseButton1Down:connect(OnAirTPPress)
Main.Topbar.Minimize.MouseButton1Down:connect(OnMinimizePress)
GUI.TextButton.MouseButton1Down:connect(OnOpenPress)
Main.Topbar.Exit.MouseButton1Down:connect(OnClosePress)
SubFrame.QuickInvis.MouseButton1Down:connect(OnGoInvisPress)
Player.CharacterAdded:connect(OnCharacterAdded)
 
SubFrame.Rigtype.Text = ('Your Rigtype - %s'):format(CheckRig())