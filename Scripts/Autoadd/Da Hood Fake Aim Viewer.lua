local FakeAimViewer = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UpperFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Down = Instance.new("ImageLabel")
local First = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Pattern = Instance.new("ImageLabel")
local Second = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local Pattern_2 = Instance.new("ImageLabel")
local Search = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Pattern_3 = Instance.new("ImageLabel")
local Toggle = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Pattern_4 = Instance.new("ImageLabel")
local Up = Instance.new("ImageLabel")
local Player2 = Instance.new("ImageLabel")
local UICorner_6 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Player1 = Instance.new("ImageLabel")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")

--Properties:

FakeAimViewer.Name = "Fake Aim Viewer"
FakeAimViewer.Parent = game.CoreGui
FakeAimViewer.Enabled = true
Main.Name = "Main"
Main.Parent = FakeAimViewer
Main.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Main.Position = UDim2.new(0.554961801, 0, 0.411111116, 0)
Main.Size = UDim2.new(0, 313, 0, 353)

UpperFrame.Name = "UpperFrame"
UpperFrame.Parent = Main
UpperFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
UpperFrame.Position = UDim2.new(-0.00171210442, 0, -0.488497198, 0)
UpperFrame.Size = UDim2.new(0, 313, 0, 144)

UICorner.Parent = UpperFrame

Down.Name = "Down"
Down.Parent = UpperFrame
Down.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Down.BackgroundTransparency = 1.000
Down.Position = UDim2.new(-0.000948727131, 0, 1.19583333, 0)
Down.Size = UDim2.new(0, 314, 0, 353)
Down.Image = "rbxassetid://2151741365"
Down.ImageTransparency = 0.600

First.Name = "First"
First.Parent = Down
First.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
First.Position = UDim2.new(0.0923566893, 0, 0.101983003, 0)
First.Size = UDim2.new(0, 259, 0, 50)
First.Font = Enum.Font.SourceSansSemibold
First.PlaceholderText = "First Player here"
First.Text = ""
First.TextColor3 = Color3.fromRGB(198, 198, 198)
First.TextScaled = true
First.TextSize = 14.000
First.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = First

Pattern.Name = "Pattern"
Pattern.Parent = First
Pattern.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Pattern.BackgroundTransparency = 1.000
Pattern.Position = UDim2.new(-0.00193050189, 0, 0, 0)
Pattern.Size = UDim2.new(0, 259, 0, 50)
Pattern.ZIndex = 9
Pattern.Image = "rbxassetid://121480522"
Pattern.ImageTransparency = 0.600
Pattern.ScaleType = Enum.ScaleType.Tile
Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
Pattern.TileSize = UDim2.new(0, 45, 0, 45)

Second.Name = "Second"
Second.Parent = Down
Second.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Second.Position = UDim2.new(0.0859872624, 0, 0.297450423, 0)
Second.Size = UDim2.new(0, 259, 0, 50)
Second.Font = Enum.Font.SourceSansSemibold
Second.PlaceholderText = "Second Player Here"
Second.Text = ""
Second.TextColor3 = Color3.fromRGB(184, 184, 184)
Second.TextScaled = true
Second.TextSize = 14.000
Second.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = Second

Pattern_2.Name = "Pattern"
Pattern_2.Parent = Second
Pattern_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Pattern_2.BackgroundTransparency = 1.000
Pattern_2.Position = UDim2.new(0.0057915058, 0, -0.0145454407, 0)
Pattern_2.Size = UDim2.new(0, 259, 0, 50)
Pattern_2.ZIndex = 9
Pattern_2.Image = "rbxassetid://121480522"
Pattern_2.ImageTransparency = 0.600
Pattern_2.ScaleType = Enum.ScaleType.Tile
Pattern_2.SliceCenter = Rect.new(0, 256, 0, 256)
Pattern_2.TileSize = UDim2.new(0, 45, 0, 45)

Search.Name = "Search"
Search.Parent = Down
Search.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Search.Position = UDim2.new(0.0923566893, 0, 0.560906529, 0)
Search.Size = UDim2.new(0, 256, 0, 52)
Search.Font = Enum.Font.SourceSansSemibold
Search.Text = "Search for players"
Search.TextColor3 = Color3.fromRGB(173, 173, 173)
Search.TextScaled = true
Search.TextSize = 14.000
Search.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = Search

Pattern_3.Name = "Pattern"
Pattern_3.Parent = Search
Pattern_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pattern_3.BackgroundTransparency = 1.000
Pattern_3.Position = UDim2.new(-0.00390625, 0, 1.57692313, 0)
Pattern_3.Size = UDim2.new(0, 258, 0, 52)
Pattern_3.ZIndex = 9
Pattern_3.Image = "rbxassetid://2151743764"
Pattern_3.ImageColor3 = Color3.fromRGB(45, 45, 45)
Pattern_3.ImageTransparency = 0.600
Pattern_3.ScaleType = Enum.ScaleType.Tile
Pattern_3.SliceCenter = Rect.new(0, 256, 0, 256)
Pattern_3.TileSize = UDim2.new(0, 75, 0, 75)

Toggle.Name = "Toggle"
Toggle.Parent = Down
Toggle.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Toggle.Position = UDim2.new(0.0859872624, 0, 0.793201149, 0)
Toggle.Size = UDim2.new(0, 256, 0, 52)
Toggle.Font = Enum.Font.SourceSansSemibold
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.fromRGB(173, 173, 173)
Toggle.TextScaled = true
Toggle.TextSize = 14.000
Toggle.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = Toggle

Pattern_4.Name = "Pattern"
Pattern_4.Parent = Toggle
Pattern_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pattern_4.BackgroundTransparency = 1.000
Pattern_4.Position = UDim2.new(0.01171875, 0, -1.57692313, 0)
Pattern_4.Size = UDim2.new(0, 258, 0, 52)
Pattern_4.ZIndex = 9
Pattern_4.Image = "rbxassetid://2151743764"
Pattern_4.ImageColor3 = Color3.fromRGB(45, 45, 45)
Pattern_4.ImageTransparency = 0.600
Pattern_4.ScaleType = Enum.ScaleType.Tile
Pattern_4.SliceCenter = Rect.new(0, 256, 0, 256)
Pattern_4.TileSize = UDim2.new(0, 75, 0, 75)

Up.Name = "Up"
Up.Parent = UpperFrame
Up.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Up.BackgroundTransparency = 1.000
Up.Position = UDim2.new(-0.000948727131, 0, -0.00385802984, 0)
Up.Size = UDim2.new(0, 314, 0, 144)
Up.Image = "rbxassetid://2151741365"
Up.ImageTransparency = 0.600

Player2.Name = "Player2"
Player2.Parent = Up
Player2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Player2.BackgroundTransparency = 1.000
Player2.Position = UDim2.new(0.576433122, 0, 0.0763888955, 0)
Player2.Size = UDim2.new(0, 105, 0, 105)
Player2.Image = "http://www.roblox.com/asset/?id=10818605405"

UICorner_6.CornerRadius = UDim.new(80, 0)
UICorner_6.Parent = Player2

TextLabel.Parent = Player2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.00952374935, 0, 1.05714297, 0)
TextLabel.Size = UDim2.new(0, 103, 0, 15)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "Player 2"
TextLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Player1.Name = "Player1"
Player1.Parent = Up
Player1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Player1.BackgroundTransparency = 1.000
Player1.Position = UDim2.new(0.0859872699, 0, 0.0763888955, 0)
Player1.Size = UDim2.new(0, 105, 0, 105)
Player1.Image = "http://www.roblox.com/asset/?id=10818605405"

UICorner_7.CornerRadius = UDim.new(80, 0)
UICorner_7.Parent = Player1

TextLabel_2.Parent = Player1
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0190476198, 0, 1.05714297, 0)
TextLabel_2.Size = UDim2.new(0, 103, 0, 15)
TextLabel_2.Font = Enum.Font.SourceSansSemibold
TextLabel_2.Text = "Player 1"
TextLabel_2.TextColor3 = Color3.fromRGB(150, 150, 150)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

UICorner_8.Parent = Main
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:connect(function(key)
    if key.KeyCode == Enum.KeyCode.V then
        Main.Visible = not Main.Visible
    end
end)
local fake_module_scripts = {}
do 
 local script = Instance.new('ModuleScript', Main)
 local function module_script()
  local functions = {}
  local Variables = {Beam = nil,Attachment = nil,Part = nil,player=game:GetService("Players").LocalPlayer,AimView = false}
  functions.Start = function()
   Variables["Beam"] = Instance.new("Beam",game:GetService("Workspace"))
   Variables["Part"] = Instance.new("Part",game:GetService("Workspace"))
   Variables["Attachment"] = Instance.new("Attachment",Variables["Part"])
   Variables["Beam"].Width0 = 0.1
   Variables["Beam"].Width1 = 0.1
            Variables["Beam"].Attachment0 = Variables["Attachment"]
   Variables["Part"].CanCollide = false
   Variables["Part"].Transparency = 1

  end
  functions.getPlayerName = function(Name)
   for _,v in pairs(game:GetService("Players"):GetPlayers()) do
    if string.lower(string.sub(v.Name,1,#Name)) == string.lower(Name) then
     return v
    end
   end
  end
  functions.AimView = function(Player1,Player2)
   if Player1.Character:FindFirstChild("HumanoidRootPart") and Player2.Character:FindFirstChild("HumanoidRootPart") then
    for _,v in pairs(Player1.Character:GetChildren()) do
     if v:IsA("Tool") then
      if v:FindFirstChild("GunScript") then
       if Variables["AimView"] then
        Variables["Part"].Position = Player2.Character:FindFirstChild("HumanoidRootPart").Position
        Variables["Beam"].Attachment1 = Player1.Character:FindFirstChild("HumanoidRootPart").RootRigAttachment
       end
      end
     end
    end 
   end
  end
  functions.Toggle = function()
   script.Parent.UpperFrame.Down.Toggle.MouseButton1Down:Connect(function()
    Variables["AimView"] = not Variables["AimView"]
   end)
  end
  functions.GetUserImage = function(id)
   return game:GetService('Players'):GetUserThumbnailAsync(id, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
  end
  return functions
 end
 fake_module_scripts[script] = module_script
end



local function GHVUPQF_fake_script() 
 local script = Instance.new('LocalScript', Main)
 local req = require
 local require = function(obj)
  local fake = fake_module_scripts[obj]
  if fake then
   return fake()
  end
  return req(obj)
 end

 local Module = require(script.Parent.ModuleScript)
 Module.Start()
 Module.Toggle()
 script.Parent.Draggable = true
 script.Parent.UpperFrame.Down.Search.MouseButton1Down:Connect(function()
  local Player1 =Module.getPlayerName(script.Parent.UpperFrame.Down.First.Text)
  local Player2 = Module.getPlayerName(script.Parent.UpperFrame.Down.Second.Text)
  if Player1 and Player2 ~= nil then
   script.Parent.UpperFrame.Up.Player1.Image = Module.GetUserImage(Player1.UserId)
   script.Parent.UpperFrame.Up.Player2.Image = Module.GetUserImage(Player2.UserId)
   script.Parent.UpperFrame.Up.Player1.TextLabel.Text = Player1.Name
   script.Parent.UpperFrame.Up.Player2.TextLabel.Text = Player2.Name
   while task.wait() do
    Module.AimView(Player1,Player2)
   end
  end
 end)
end
coroutine.wrap(GHVUPQF_fake_script)()