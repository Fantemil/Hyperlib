 function sandbox(var,func)
 local env = getfenv(func)
 local newenv = setmetatable({},{
  __index = function(self,k)
   if k=="script" then
    return var
   else
    return env[k]
   end
  end,
 })
 setfenv(func,newenv)
 return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
TextLabel2 = Instance.new("TextLabel")
TextButton3 = Instance.new("TextButton")
LocalScript4 = Instance.new("LocalScript")
TextLabel5 = Instance.new("TextLabel")
LocalScript6 = Instance.new("LocalScript")
TextLabel7 = Instance.new("TextLabel")
LocalScript8 = Instance.new("LocalScript")
TextButton9 = Instance.new("TextButton")
LocalScript10 = Instance.new("LocalScript")
TextLabel11 = Instance.new("TextLabel")
TextLabel12 = Instance.new("TextLabel")
TextButton13 = Instance.new("TextButton")
LocalScript14 = Instance.new("LocalScript")
TextLabel15 = Instance.new("TextLabel")
TextButton16 = Instance.new("TextButton")
LocalScript17 = Instance.new("LocalScript")
Folder18 = Instance.new("Folder")
Sound19 = Instance.new("Sound")
Sound20 = Instance.new("Sound")
Sound21 = Instance.new("Sound")
Sound22 = Instance.new("Sound")
Sound23 = Instance.new("Sound")
BoolValue24 = Instance.new("BoolValue")
LocalScript25 = Instance.new("LocalScript")
Folder26 = Instance.new("Folder")
Color3Value27 = Instance.new("Color3Value")
Color3Value28 = Instance.new("Color3Value")
Color3Value29 = Instance.new("Color3Value")
Color3Value30 = Instance.new("Color3Value")
Color3Value31 = Instance.new("Color3Value")
TextButton32 = Instance.new("TextButton")
LocalScript33 = Instance.new("LocalScript")
Frame34 = Instance.new("Frame")
TextButton35 = Instance.new("TextButton")
LocalScript36 = Instance.new("LocalScript")
ImageLabel37 = Instance.new("ImageLabel")
ImageLabel38 = Instance.new("ImageLabel")
TextButton39 = Instance.new("TextButton")
LocalScript40 = Instance.new("LocalScript")
Folder41 = Instance.new("Folder")
Frame42 = Instance.new("Frame")
TextButton43 = Instance.new("TextButton")
LocalScript44 = Instance.new("LocalScript")
LocalScript45 = Instance.new("LocalScript")
ImageLabel46 = Instance.new("ImageLabel")
Frame47 = Instance.new("Frame")
Frame48 = Instance.new("Frame")
TextLabel49 = Instance.new("TextLabel")
LocalScript50 = Instance.new("LocalScript")
Folder51 = Instance.new("Folder")
Color3Value52 = Instance.new("Color3Value")
Color3Value53 = Instance.new("Color3Value")
Color3Value54 = Instance.new("Color3Value")
Color3Value55 = Instance.new("Color3Value")
Color3Value56 = Instance.new("Color3Value")
BoolValue57 = Instance.new("BoolValue")
StringValue58 = Instance.new("StringValue")
BoolValue59 = Instance.new("BoolValue")
Script60 = Instance.new("Script")
ScreenGui0.Name = "NDSui"
ScreenGui0.Parent = mas
ScreenGui0.ResetOnSpawn = false
Frame1.Name = "Panel"
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.402971774, 0, 0.298489451, 0)
Frame1.Visible = false
Frame1.Size = UDim2.new(0, 390, 0, 230)
Frame1.Active = true
Frame1.BackgroundColor = BrickColor.new("Black")
Frame1.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame1.BorderSizePixel = 0
Frame1.Draggable = true
TextLabel2.Name = "Title"
TextLabel2.Parent = Frame1
TextLabel2.Position = UDim2.new(0, 5, 0, 0)
TextLabel2.Size = UDim2.new(0, 355, 0, 25)
TextLabel2.Active = true
TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 1
TextLabel2.BorderSizePixel = 0
TextLabel2.Font = Enum.Font.Highway
TextLabel2.FontSize = Enum.FontSize.Size14
TextLabel2.Text = "Natural Disaster Survival GUI"
TextLabel2.TextColor = BrickColor.new("Institutional white")
TextLabel2.TextColor3 = Color3.new(1, 1, 1)
TextLabel2.TextSize = 14
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
TextButton3.Name = "VoteSys"
TextButton3.Parent = Frame1
TextButton3.Position = UDim2.new(0, 5, 0, 35)
TextButton3.Size = UDim2.new(0, 175, 0, 40)
TextButton3.BackgroundColor = BrickColor.new("Dark taupe")
TextButton3.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
TextButton3.BorderSizePixel = 0
TextButton3.Font = Enum.Font.SourceSans
TextButton3.FontSize = Enum.FontSize.Size14
TextButton3.Text = "Open Vote Menu"
TextButton3.TextColor = BrickColor.new("Institutional white")
TextButton3.TextColor3 = Color3.new(1, 1, 1)
TextButton3.TextSize = 14
LocalScript4.Parent = TextButton3
table.insert(cors,sandbox(LocalScript4,function()
local Button = script.Parent
votemenu = game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage

function onClick()
 script.Parent.Parent.Sounds.Click:Play()
 if votemenu.Visible==true then
  script.Parent.Text = "Open Vote Menu"
  votemenu.Visible=false
 elseif votemenu.Visible==false then
  script.Parent.Text = "Close Vote Menu"
  votemenu.Visible=true
 end
end

Button.MouseButton1Click:connect(onClick)

end))
TextLabel5.Name = "DisDSP"
TextLabel5.Parent = Frame1
TextLabel5.Position = UDim2.new(0, 190, 0, 35)
TextLabel5.Size = UDim2.new(0, 195, 0, 40)
TextLabel5.BackgroundColor = BrickColor.new("Dark taupe")
TextLabel5.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
TextLabel5.BorderSizePixel = 0
TextLabel5.Font = Enum.Font.SourceSans
TextLabel5.FontSize = Enum.FontSize.Size14
TextLabel5.Text = "---"
TextLabel5.TextColor = BrickColor.new("Really red")
TextLabel5.TextColor3 = Color3.new(0.870588, 0, 0)
TextLabel5.TextSize = 14
LocalScript6.Parent = TextLabel5
table.insert(cors,sandbox(LocalScript6,function()
--Init
print("Starting Detection Core...")

--Pointers
sounds = script.Parent.Parent.Sounds
colors = script.Parent.Parent.Colors
plyrname = game.Players.LocalPlayer.Name

--------------------------------------------
--Logic
script.Parent.TextColor3 = colors.Red.Value
script.Parent.Text = "Initializing UI Core..."
wait(3)
if game.Players.LocalPlayer.Character:FindFirstChild("SurvivalTag") ~= nil then
 script.Parent.Text = (game.Workspace[plyrname].SurvivalTag.Value)
 script.Parent.TextColor3 = colors.Green.Value
 sounds.Confirm:Play()
 script.Parent.Parent.Parent.AlertPnl.InputText.Value = ("The current disaster is a " ..game.Workspace[plyrname].SurvivalTag.Value .."!")
 script.Parent.Parent.Parent.AlertPnl.Activate.Value = true
else
 sounds.Processing:Play()
 script.Parent.Text = "Waiting for tags..."
 script.Parent.TextColor3 = colors.Yellow.Value
 script.Parent.Parent.Parent.AlertPnl.InputText.Value = "Waiting for tags..."
 script.Parent.Parent.Parent.AlertPnl.Mode.Value = true
 script.Parent.Parent.Parent.AlertPnl.Activate.Value = true
 game.Players.LocalPlayer.Character:WaitForChild("SurvivalTag", 5)
 if game.Players.LocalPlayer.Character:FindFirstChild("SurvivalTag") ~= nil then
  script.Parent.Text = (game.Workspace[plyrname].SurvivalTag.Value)
  script.Parent.TextColor3 = colors.Green.Value
  script.Parent.Parent.Parent.AlertPnl.InputText.Value = ("The current disaster is a " ..game.Workspace[plyrname].SurvivalTag.Value .."!")
  script.Parent.Parent.Parent.AlertPnl.Activate.Value = true
  sounds.Confirm:Play()
 else
  script.Parent.Text = "Waiting for T2 detection..."
 end
end

game.Players.LocalPlayer.Character.ChildAdded:Connect(function(object)
 if object:IsA("StringValue") then
  if game.Workspace:FindFirstChild(plyrname) ~= nil then
   if game.Players.LocalPlayer.Character:FindFirstChild("SurvivalTag") ~= nil then
    script.Parent.Text = (game.Workspace[plyrname].SurvivalTag.Value)
    script.Parent.TextColor3 = colors.Green.Value
    script.Parent.Parent.Parent.AlertPnl.InputText.Value = ("The current disaster is a " ..game.Workspace[plyrname].SurvivalTag.Value .."!")
    script.Parent.Parent.Parent.AlertPnl.Activate.Value = true
    sounds.Confirm:Play()
   else
    sounds.Processing:Play()
    script.Parent.Text = "Waiting for tags..."
    script.Parent.TextColor3 = colors.Yellow.Value
    script.Parent.Parent.Parent.AlertPnl.InputText.Value = "Waiting for tags..."
    script.Parent.Parent.Parent.AlertPnl.Mode.Value = true
    script.Parent.Parent.Parent.AlertPnl.Activate.Value = true
    game.Players.LocalPlayer.Character:WaitForChild("SurvivalTag")
    wait(.5)
    script.Parent.Text = (game.Workspace[plyrname].SurvivalTag.Value)
    script.Parent.Parent.Parent.AlertPnl.InputText.Value = ("The current disaster is a " ..game.Workspace[plyrname].SurvivalTag.Value .."!")
    script.Parent.Parent.Parent.AlertPnl.Activate.Value = true
    script.Parent.TextColor3 = colors.Green.Value
    sounds.Confirm:Play()
   end
  else
   script.Parent.Text = "Waiting for T2 detection..."
  end
 else  
 end
end)

game.Players.LocalPlayer.CharacterAdded:connect(function()
 script.Parent.TextColor3 = colors.Red.Value
 script.Parent.Text = "Initializing UI Core..."
 wait(3)
 if game.Players.LocalPlayer.Character:FindFirstChild("SurvivalTag") ~= nil then
  script.Parent.Text = (game.Workspace[plyrname].SurvivalTag.Value)
  script.Parent.TextColor3 = colors.Green.Value
  sounds.Confirm:Play()
  script.Parent.Parent.Parent.AlertPnl.InputText.Value = ("The current disaster is a " ..game.Workspace[plyrname].SurvivalTag.Value .."!")
  script.Parent.Parent.Parent.AlertPnl.Activate.Value = true
 else
  sounds.Processing:Play()
  script.Parent.Text = "Waiting for tags..."
  script.Parent.TextColor3 = colors.Yellow.Value
  script.Parent.Parent.Parent.AlertPnl.InputText.Value = "Waiting for tags..."
  script.Parent.Parent.Parent.AlertPnl.Mode.Value = true
  script.Parent.Parent.Parent.AlertPnl.Activate.Value = true
  game.Players.LocalPlayer.Character:WaitForChild("SurvivalTag")
  if game.Players.LocalPlayer.Character:FindFirstChild("SurvivalTag") ~= nil then
   script.Parent.Text = (game.Workspace[plyrname].SurvivalTag.Value)
   script.Parent.TextColor3 = colors.Green.Value
   script.Parent.Parent.Parent.AlertPnl.InputText.Value = ("The current disaster is a " ..game.Workspace[plyrname].SurvivalTag.Value .."!")
   script.Parent.Parent.Parent.AlertPnl.Activate.Value = true
   sounds.Confirm:Play()
  else
   script.Parent.Text = "Waiting for T2 detection..."
  end
 end
end)
end))
TextLabel7.Name = "ToolTip"
TextLabel7.Parent = TextLabel5
TextLabel7.Visible = false
TextLabel7.Size = UDim2.new(0, 195, 0, 40)
TextLabel7.BackgroundColor = BrickColor.new("Parsley green")
TextLabel7.BackgroundColor3 = Color3.new(0, 0.333333, 0)
TextLabel7.BorderSizePixel = 0
TextLabel7.ZIndex = 2
TextLabel7.Font = Enum.Font.SourceSans
TextLabel7.FontSize = Enum.FontSize.Size14
TextLabel7.Text = "This panel is automated to show you the current disaster as soon as it's tag becomes available."
TextLabel7.TextColor = BrickColor.new("Institutional white")
TextLabel7.TextColor3 = Color3.new(1, 1, 1)
TextLabel7.TextScaled = true
TextLabel7.TextSize = 14
TextLabel7.TextWrap = true
TextLabel7.TextWrapped = true
LocalScript8.Name = "Tooltip"
LocalScript8.Parent = TextLabel5
table.insert(cors,sandbox(LocalScript8,function()
script.Parent.MouseEnter:Connect(function()
 script.Parent.ToolTip.Visible = true
end)

script.Parent.MouseLeave:Connect(function()
 script.Parent.ToolTip.Visible = false
end)


end))
TextButton9.Name = "ClsBttn"
TextButton9.Parent = Frame1
TextButton9.Position = UDim2.new(0, 365, 0, 5)
TextButton9.Size = UDim2.new(0, 20, 0, 15)
TextButton9.BackgroundColor = BrickColor.new("Really red")
TextButton9.BackgroundColor3 = Color3.new(1, 0, 0)
TextButton9.BackgroundTransparency = 0.15000000596046
TextButton9.BorderSizePixel = 0
TextButton9.Font = Enum.Font.SourceSans
TextButton9.FontSize = Enum.FontSize.Size14
TextButton9.Text = ""
TextButton9.TextSize = 14
LocalScript10.Parent = TextButton9
table.insert(cors,sandbox(LocalScript10,function()
local Button = script.Parent
Frame = script.Parent.Parent

function onClick()
script.Parent.Parent.Sounds.Cancel:Play()
if Frame.Visible == false then
Frame.Visible = true
elseif Frame.Visible == true then
Frame.Visible = false
end
end

Button.MouseButton1Click:connect(onClick)

end))
TextLabel11.Name = "Info"
TextLabel11.Parent = Frame1
TextLabel11.Position = UDim2.new(0, 5, 0, 210)
TextLabel11.Size = UDim2.new(0, 380, 0, 15)
TextLabel11.Active = true
TextLabel11.BackgroundColor = BrickColor.new("Institutional white")
TextLabel11.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel11.BackgroundTransparency = 1
TextLabel11.BorderSizePixel = 0
TextLabel11.Font = Enum.Font.Code
TextLabel11.FontSize = Enum.FontSize.Size11
TextLabel11.Text = "We made it to 1.0 bois!!!  WOOHOOO!!!"
TextLabel11.TextColor = BrickColor.new("Institutional white")
TextLabel11.TextColor3 = Color3.new(1, 1, 1)
TextLabel11.TextSize = 11
TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
TextLabel12.Name = "Ver"
TextLabel12.Parent = Frame1
TextLabel12.Position = UDim2.new(0, 315, 0, 5)
TextLabel12.Size = UDim2.new(0, 35, 0, 15)
TextLabel12.Active = true
TextLabel12.BackgroundColor = BrickColor.new("Dark taupe")
TextLabel12.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
TextLabel12.BackgroundTransparency = 1
TextLabel12.BorderSizePixel = 0
TextLabel12.Font = Enum.Font.Code
TextLabel12.FontSize = Enum.FontSize.Size14
TextLabel12.Text = "v.1.1a"
TextLabel12.TextColor = BrickColor.new("Silver flip/flop")
TextLabel12.TextColor3 = Color3.new(0.54902, 0.54902, 0.54902)
TextLabel12.TextSize = 14
TextLabel12.TextXAlignment = Enum.TextXAlignment.Right
TextButton13.Name = "InfBtn"
TextButton13.Parent = Frame1
TextButton13.Position = UDim2.new(0, 365, 0, 210)
TextButton13.Size = UDim2.new(0, 20, 0, 15)
TextButton13.BackgroundColor = BrickColor.new("Quill grey")
TextButton13.BackgroundColor3 = Color3.new(0.866667, 0.866667, 0.866667)
TextButton13.BackgroundTransparency = 0.5
TextButton13.BorderSizePixel = 0
TextButton13.Font = Enum.Font.SourceSans
TextButton13.FontSize = Enum.FontSize.Size14
TextButton13.Text = "?"
TextButton13.TextSize = 14
LocalScript14.Parent = TextButton13
table.insert(cors,sandbox(LocalScript14,function()
local Button = script.Parent
Frame = script.Parent.Parent.Changelog

function onClick()
script.Parent.Parent.Sounds.Click:Play()
if Frame.Visible == false then
Frame.Visible = true
elseif Frame.Visible == true then
Frame.Visible = false
end
end

Button.MouseButton1Click:connect(onClick)

end))
TextLabel15.Name = "Changelog"
TextLabel15.Parent = Frame1
TextLabel15.Position = UDim2.new(0, 390, 0, 80)
TextLabel15.Visible = false
TextLabel15.Size = UDim2.new(0, 200, 0, 150)
TextLabel15.BackgroundColor = BrickColor.new("Black")
TextLabel15.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextLabel15.BorderSizePixel = 0
TextLabel15.Font = Enum.Font.SourceSans
TextLabel15.FontSize = Enum.FontSize.Size14
TextLabel15.Text = "V.1.1a corrects a minor typo in the notification system as well as adds support for SynapseX and other exploits as well as adding a button to toggle fall damage."
TextLabel15.TextColor = BrickColor.new("Institutional white")
TextLabel15.TextColor3 = Color3.new(1, 1, 1)
TextLabel15.TextSize = 14
TextLabel15.TextWrap = true
TextLabel15.TextWrapped = true
TextLabel15.TextXAlignment = Enum.TextXAlignment.Left
TextLabel15.TextYAlignment = Enum.TextYAlignment.Top
TextButton16.Name = "Tele"
TextButton16.Parent = Frame1
TextButton16.Position = UDim2.new(0, 5, 0, 85)
TextButton16.Size = UDim2.new(0, 175, 0, 40)
TextButton16.BackgroundColor = BrickColor.new("Dark taupe")
TextButton16.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
TextButton16.BorderSizePixel = 0
TextButton16.Font = Enum.Font.SourceSans
TextButton16.FontSize = Enum.FontSize.Size14
TextButton16.Text = "Return To Spawn"
TextButton16.TextColor = BrickColor.new("Institutional white")
TextButton16.TextColor3 = Color3.new(1, 1, 1)
TextButton16.TextSize = 14
LocalScript17.Parent = TextButton16
table.insert(cors,sandbox(LocalScript17,function()
local Button = script.Parent

function onClick()
 script.Parent.Parent.Sounds.Click:Play()
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.226776, 193.849884, 318.382538) + Vector3.new(1,0,0)
end

Button.MouseButton1Click:connect(onClick)

end))
Folder18.Name = "Sounds"
Folder18.Parent = Frame1
Sound19.Name = "Processing"
Sound19.Parent = Folder18
Sound19.SoundId = "rbxassetid://2102111973"
Sound19.Volume = 1
Sound20.Name = "Cancel"
Sound20.Parent = Folder18
Sound20.SoundId = "rbxassetid://2102119175"
Sound20.Volume = 1
Sound21.Name = "Confirm"
Sound21.Parent = Folder18
Sound21.SoundId = "rbxassetid://2102108868"
Sound21.Volume = 1
Sound22.Name = "Click"
Sound22.Parent = Folder18
Sound22.SoundId = "rbxassetid://318763788"
Sound22.Volume = 1
Sound23.Name = "bass"
Sound23.Parent = Folder18
Sound23.SoundId = "rbxassetid://387927244"
Sound23.Volume = 1
BoolValue24.Name = "Mute"
BoolValue24.Parent = Folder18
LocalScript25.Name = "Manager"
LocalScript25.Parent = Folder18
table.insert(cors,sandbox(LocalScript25,function()
script.Parent.Mute.Changed:Connect(function()
 if script.Parent.Mute.Value == true then
  for i, v in pairs(script.Parent:GetChildren()) do
   if v.ClassName == "Sound" then
    v.Volume = 0
   end
   print("NDSui Sound Muted")
  end
 else
  for i, v in pairs(script.Parent:GetChildren()) do
   if v.ClassName == "Sound" then
    v.Volume = 1
   end
   print("NDSui Sound Un-Muted")
  end
 end
end)
end))
Folder26.Name = "Colors"
Folder26.Parent = Frame1
Color3Value27.Name = "Red"
Color3Value27.Parent = Folder26
Color3Value27.Value = Color3.new(1, 0, 0)
Color3Value28.Name = "Green"
Color3Value28.Parent = Folder26
Color3Value28.Value = Color3.new(0.203922, 0.784314, 0.160784)
Color3Value29.Name = "Yellow"
Color3Value29.Parent = Folder26
Color3Value29.Value = Color3.new(0.956863, 0.87451, 0.258824)
Color3Value30.Name = "White"
Color3Value30.Parent = Folder26
Color3Value30.Value = Color3.new(1, 1, 1)
Color3Value31.Name = "Black"
Color3Value31.Parent = Folder26
Color3Value31.Value = Color3.new(0.105882, 0.164706, 0.207843)
TextButton32.Name = "Dab"
TextButton32.Parent = Frame1
TextButton32.Position = UDim2.new(0, 190, 0, 85)
TextButton32.Size = UDim2.new(0, 195, 0, 40)
TextButton32.BackgroundColor = BrickColor.new("Dark taupe")
TextButton32.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
TextButton32.BorderSizePixel = 0
TextButton32.Font = Enum.Font.SourceSans
TextButton32.FontSize = Enum.FontSize.Size14
TextButton32.Text = "Dab on the haters..."
TextButton32.TextColor = BrickColor.new("Institutional white")
TextButton32.TextColor3 = Color3.new(1, 1, 1)
TextButton32.TextSize = 14
LocalScript33.Parent = TextButton32
table.insert(cors,sandbox(LocalScript33,function()
local Button = script.Parent

function onClick()
 script.Disabled = true
 ub = Instance.new("BlurEffect")
 ub.Parent = game.Lighting
 ub.Name = "UIblur"
 ub.Size = 20
 script.Parent.Parent.Sounds.bass:Play()
 AnimationId = "248263260"
 local Anim = Instance.new("Animation")
 Anim.AnimationId = "rbxassetid://"..AnimationId
 local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
 k:Play()
 k:AdjustSpeed(1)
 
 script.Parent.Text = "Dabbing, reset to stop."
 script.Parent.TextColor3 = script.Parent.Parent.Colors.Red.Value
 for i = 1,20 do
  ub.Size = ub.Size -1
  wait(.05)
 end
 for i, v in pairs(game.Lighting:GetChildren()) do
  if v.Name == "UIblur" then
   v:Destroy()
  end
 end
 script.Disabled = false
end

game.Players.LocalPlayer.CharacterAdded:connect(function()
 script.Parent.Text = "Dab on the haters..."
 script.Parent.TextColor3 = script.Parent.Parent.Colors.White.Value
end)
Button.MouseButton1Click:connect(onClick)
end))
Frame34.Name = "SBar"
Frame34.Parent = Frame1
Frame34.Position = UDim2.new(0, 0, 0, 25)
Frame34.Size = UDim2.new(1, 0, 0, 5)
Frame34.BackgroundColor = BrickColor.new("Silver flip/flop")
Frame34.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
Frame34.BorderSizePixel = 0
TextButton35.Name = "MuteBtn"
TextButton35.Parent = Frame1
TextButton35.Position = UDim2.new(0, 335, 0, 210)
TextButton35.Size = UDim2.new(0, 20, 0, 15)
TextButton35.BackgroundColor = BrickColor.new("Quill grey")
TextButton35.BackgroundColor3 = Color3.new(0.866667, 0.866667, 0.866667)
TextButton35.BackgroundTransparency = 0.5
TextButton35.BorderSizePixel = 0
TextButton35.Font = Enum.Font.SourceSans
TextButton35.FontSize = Enum.FontSize.Size14
TextButton35.Text = " "
TextButton35.TextSize = 14
LocalScript36.Parent = TextButton35
table.insert(cors,sandbox(LocalScript36,function()
local Button = script.Parent
mutetogg = script.Parent.Parent.Sounds.Mute

function onClick()
 script.Parent.Parent.Sounds.Click:Play()
 if mutetogg.Value == false then
  mutetogg.Value = true
  script.Parent.Audio.Visible = false
  script.Parent.NoAudio.Visible = true
 else
  mutetogg.Value = false
  script.Parent.Audio.Visible = true
  script.Parent.NoAudio.Visible = false
 end
 
end

Button.MouseButton1Click:connect(onClick)

end))
ImageLabel37.Name = "Audio"
ImageLabel37.Parent = TextButton35
ImageLabel37.Size = UDim2.new(1, 0, 1, 0)
ImageLabel37.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel37.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel37.BackgroundTransparency = 1
ImageLabel37.Image = "rbxassetid://2585360562"
ImageLabel37.ImageColor3 = Color3.new(0.196078, 0.196078, 0.196078)
ImageLabel37.ScaleType = Enum.ScaleType.Fit
ImageLabel38.Name = "NoAudio"
ImageLabel38.Parent = TextButton35
ImageLabel38.Visible = false
ImageLabel38.Size = UDim2.new(1, 0, 1, 0)
ImageLabel38.BackgroundColor = BrickColor.new("Crimson")
ImageLabel38.BackgroundColor3 = Color3.new(0.666667, 0, 0)
ImageLabel38.BackgroundTransparency = 0.80000001192093
ImageLabel38.Image = "rbxassetid://2585365820"
ImageLabel38.ImageColor3 = Color3.new(0.196078, 0.196078, 0.196078)
ImageLabel38.ScaleType = Enum.ScaleType.Fit
TextButton39.Name = "FllDmg"
TextButton39.Parent = Frame1
TextButton39.Position = UDim2.new(0, 5, 0, 135)
TextButton39.Size = UDim2.new(0, 175, 0, 40)
TextButton39.BackgroundColor = BrickColor.new("Dark taupe")
TextButton39.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
TextButton39.BorderSizePixel = 0
TextButton39.Font = Enum.Font.SourceSans
TextButton39.FontSize = Enum.FontSize.Size14
TextButton39.Text = "Disable Fall Damage"
TextButton39.TextColor = BrickColor.new("Institutional white")
TextButton39.TextColor3 = Color3.new(1, 1, 1)
TextButton39.TextSize = 14
LocalScript40.Parent = TextButton39
table.insert(cors,sandbox(LocalScript40,function()
--Pointers
local Button = script.Parent
colors = script.Parent.Parent.Colors
sounds = script.Parent.Parent.Sounds

--Vars
local actv = false

--Logic
function onClick()
 sounds.Click:Play()
 if actv == false then
  script.Parent.Text = "Fall Damage Disabled"
  script.Parent.TextColor3 = colors.Green.Value
  script.Parent.LghtBr.BackgroundColor3 = colors.Green.Value
  actv = true
  game.Players.LocalPlayer.Character.FallDamageScript:Destroy()
 else
  script.Parent.Text = "Chhar Reset required..."
  script.Parent.TextColor3 = colors.Red.Value
  sounds.Confirm:Play()
  wait(2)
  script.Parent.Text = "Fall Damage Disabled"
  script.Parent.TextColor3 = colors.Green.Value
 end
 
end

game.Players.LocalPlayer.CharacterAdded:connect(function()
 script.Parent.Text = "Disable Fall Damage"
 --script.Parent.Storage:ClearAllChildren()
 actv = false
 script.Parent.LghtBr.BackgroundColor3 = colors.White.Value
 script.Parent.TextColor3 = colors.White.Value
end)
Button.MouseButton1Click:connect(onClick)
end))
Folder41.Name = "Storage"
Folder41.Parent = TextButton39
Frame42.Name = "LghtBr"
Frame42.Parent = TextButton39
Frame42.Position = UDim2.new(0.949999988, 0, 0, 0)
Frame42.Size = UDim2.new(0.0500000007, 0, 1, 0)
Frame42.BackgroundColor = BrickColor.new("Institutional white")
Frame42.BackgroundColor3 = Color3.new(1, 1, 1)
Frame42.BorderSizePixel = 0
TextButton43.Name = "OpenButton"
TextButton43.Parent = ScreenGui0
TextButton43.Position = UDim2.new(0, 0, 0.800000012, 0)
TextButton43.Size = UDim2.new(0, 80, 0, 40)
TextButton43.BackgroundColor = BrickColor.new("Black")
TextButton43.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextButton43.BorderSizePixel = 0
TextButton43.Font = Enum.Font.SourceSans
TextButton43.FontSize = Enum.FontSize.Size14
TextButton43.Text = "Toggle UI"
TextButton43.TextColor = BrickColor.new("Institutional white")
TextButton43.TextColor3 = Color3.new(1, 1, 1)
TextButton43.TextSize = 14
LocalScript44.Parent = TextButton43
table.insert(cors,sandbox(LocalScript44,function()
local Button = script.Parent
Frame = script.Parent.Parent.Panel
Openb = script.Parent

function onClick()
 script.Parent.Parent.Panel.Sounds.Click:Play()
 if Frame.Visible == false then
  Frame.Visible = true
 elseif Frame.Visible == true then
  Frame.Visible = false
 end
end


Button.MouseButton1Click:connect(onClick)

local Bttn = Enum.KeyCode.Equals
game:GetService("UserInputService").InputBegan:connect(function(inputObject)
 if inputObject.KeyCode == Bttn then
  script.Parent.Parent.Panel.Sounds.Click:Play()
  if Frame.Visible == false then
   Frame.Visible = true
  elseif Frame.Visible == true then
   Frame.Visible = false
  end
 end
end)
end))
LocalScript45.Name = "mngr"
LocalScript45.Parent = TextButton43
table.insert(cors,sandbox(LocalScript45,function()
Panel = script.Parent.Parent.Panel
OpnB = script.Parent

while wait(.3) do
 if Panel.Visible==true then
  OpnB.Visible=false
 else
  OpnB.Visible=true
 end
end
end))
ImageLabel46.Parent = TextButton43
ImageLabel46.Position = UDim2.new(0, 80, 0, 0)
ImageLabel46.Size = UDim2.new(0, 40, 0, 40)
ImageLabel46.BackgroundColor = BrickColor.new("Black")
ImageLabel46.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
ImageLabel46.BorderSizePixel = 0
ImageLabel46.Image = "rbxassetid://2583751738"
ImageLabel46.ScaleType = Enum.ScaleType.Fit
Frame47.Name = "AlertPnl"
Frame47.Parent = ScreenGui0
Frame47.Position = UDim2.new(0.349999994, 0, -0.300000012, 0)
Frame47.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
Frame47.BackgroundColor = BrickColor.new("Black")
Frame47.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame47.BorderSizePixel = 0
Frame48.Name = "LightBar"
Frame48.Parent = Frame47
Frame48.Position = UDim2.new(0, 0, 0.899999976, 0)
Frame48.Size = UDim2.new(1, 0, 0.100000001, 0)
Frame48.BackgroundColor = BrickColor.new("Institutional white")
Frame48.BackgroundColor3 = Color3.new(1, 1, 1)
Frame48.BorderSizePixel = 0
TextLabel49.Name = "Text"
TextLabel49.Parent = Frame47
TextLabel49.Size = UDim2.new(1, 0, 0.899999976, 0)
TextLabel49.BackgroundColor = BrickColor.new("Institutional white")
TextLabel49.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel49.BackgroundTransparency = 1
TextLabel49.Font = Enum.Font.Highway
TextLabel49.FontSize = Enum.FontSize.Size24
TextLabel49.Text = "nil"
TextLabel49.TextColor = BrickColor.new("Institutional white")
TextLabel49.TextColor3 = Color3.new(1, 1, 1)
TextLabel49.TextSize = 20
TextLabel49.TextWrap = true
TextLabel49.TextWrapped = true
LocalScript50.Name = "Controller"
LocalScript50.Parent = Frame47
table.insert(cors,sandbox(LocalScript50,function()
--Pointers
colors = script.Parent.Colors
txt = script.Parent.Text
Lghtbr = script.Parent.LightBar
uiFrm = script.Parent
inTxt = script.Parent.InputText

--Functions
function BlnkRed()
 for i = 1,5 do
  Lghtbr.BackgroundColor3 = colors.Red.Value
  script.Parent.Parent.Panel.SBar.BackgroundColor3 = colors.Red.Value
  wait(.5)
  Lghtbr.BackgroundColor3 = colors.White.Value
  script.Parent.Parent.Panel.SBar.BackgroundColor3 = colors.White.Value
  wait(.5)
 end
end

function BlnkYllw()
 for i = 1,5 do
  Lghtbr.BackgroundColor3 = colors.Yellow.Value
  script.Parent.Parent.Panel.SBar.BackgroundColor3 = colors.Yellow.Value
  wait(.5)
  Lghtbr.BackgroundColor3 = colors.White.Value
  script.Parent.Parent.Panel.SBar.BackgroundColor3 = colors.White.Value
  wait(.5)
 end
end


script.Parent.Activate.Changed:Connect(function()
 if script.Parent.Activate.Value == true and script.Parent.Mode.Value == false then
  txt.Text = inTxt.Value
  uiFrm:TweenPosition(UDim2.new(0.35,0,0,0), "Out", "Quart", .5)
  BlnkRed()
  wait(1)
  uiFrm:TweenPosition(UDim2.new(0.35,0,-0.3,0), "Out", "Quart", 1)
  script.Parent.Activate.Value = false
 elseif script.Parent.Activate.Value == true and script.Parent.Mode.Value == true then
  script.Parent.Mode.Value = false
  txt.Text = inTxt.Value
  uiFrm:TweenPosition(UDim2.new(0.35,0,0,0), "Out", "Quart", .5)
  BlnkYllw()
  wait(1)
  uiFrm:TweenPosition(UDim2.new(0.35,0,-0.3,0), "Out", "Quart", 1)
  script.Parent.Activate.Value = false
 elseif script.Parent.Activate.Value == false then
  
 end
end)
end))
Folder51.Name = "Colors"
Folder51.Parent = Frame47
Color3Value52.Name = "Red"
Color3Value52.Parent = Folder51
Color3Value52.Value = Color3.new(1, 0, 0)
Color3Value53.Name = "Green"
Color3Value53.Parent = Folder51
Color3Value53.Value = Color3.new(0.156863, 0.6, 0.12549)
Color3Value54.Name = "Yellow"
Color3Value54.Parent = Folder51
Color3Value54.Value = Color3.new(0.956863, 0.87451, 0.258824)
Color3Value55.Name = "White"
Color3Value55.Parent = Folder51
Color3Value55.Value = Color3.new(1, 1, 1)
Color3Value56.Name = "Black"
Color3Value56.Parent = Folder51
Color3Value56.Value = Color3.new(0.105882, 0.164706, 0.207843)
BoolValue57.Name = "Activate"
BoolValue57.Parent = Frame47
StringValue58.Name = "InputText"
StringValue58.Parent = Frame47
StringValue58.Value = "nil"
BoolValue59.Name = "Mode"
BoolValue59.Parent = Frame47
Script60.Name = "Instructions"
Script60.Parent = BoolValue59
table.insert(cors,sandbox(Script60,function()
--[[
 False = Red Alert
 True = Yellow Alert
 ]]
end))
Script60.Disabled = true
for i,v in pairs(mas:GetChildren()) do
 v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
 pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
 spawn(function()
  pcall(v)
 end)
end