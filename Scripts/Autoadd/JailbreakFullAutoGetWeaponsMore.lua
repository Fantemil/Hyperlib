--Veriax Loader

--Thanks to gui2lua plugin
if game.PlaceId == 606849621 then
 local Loader = Instance.new("ScreenGui")
 local Loader_2 = Instance.new("Frame")
 local Title = Instance.new("TextLabel")
 local Load = Instance.new("TextButton")
 local TextLabel = Instance.new("TextLabel")
 local Github = Instance.new("TextButton")
 local Coffe = Instance.new("TextButton")
 local Credits = Instance.new("Frame")
 local TextLabel_2 = Instance.new("TextLabel")
 local Line = Instance.new("Frame")
 local TextLabel_3 = Instance.new("TextLabel")
 local Notification = Instance.new("TextLabel")

 Loader.Name = "Loader"
 Loader.Parent = game.CoreGui
 Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

 Loader_2.Name = "Loader"
 Loader_2.Parent = Loader
 Loader_2.AnchorPoint = Vector2.new(0.5, 0.5)
 Loader_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
 Loader_2.BorderColor3 = Color3.fromRGB(255, 0, 127)
 Loader_2.BorderSizePixel = 2
 Loader_2.Position = UDim2.new(0.49985823, 0, 0.499312282, 0)
 Loader_2.Size = UDim2.new(0, 657, 0, 384)

 Title.Name = "Title"
 Title.Parent = Loader_2
 Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 Title.BackgroundTransparency = 1.000
 Title.Position = UDim2.new(0.444730222, 0, 0.0625, 0)
 Title.Size = UDim2.new(0, 336, 0, 87)
 Title.Font = Enum.Font.Bangers
 Title.Text = "Veriax v1.1"
 Title.TextColor3 = Color3.fromRGB(255, 0, 127)
 Title.TextScaled = true
 Title.TextSize = 14.000
 Title.TextWrapped = true

 Load.Name = "Load"
 Load.Parent = Loader_2
 Load.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
 Load.BorderColor3 = Color3.fromRGB(255, 0, 127)
 Load.BorderSizePixel = 2
 Load.Position = UDim2.new(0.444730222, 0, 0.549479067, 0)
 Load.Size = UDim2.new(0, 336, 0, 84)
 Load.Font = Enum.Font.SourceSans
 Load.Text = "Load"
 Load.TextColor3 = Color3.fromRGB(255, 0, 127)
 Load.TextScaled = true
 Load.TextSize = 14.000
 Load.TextWrapped = true

 TextLabel.Parent = Loader_2
 TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel.BackgroundTransparency = 1.000
 TextLabel.Position = UDim2.new(0.444730222, 0, 0.2890625, 0)
 TextLabel.Size = UDim2.new(0, 336, 0, 91)
 TextLabel.Font = Enum.Font.SourceSans
 TextLabel.Text = "Veriax is a free and open source jailbreak script designed to eliminate lag and also educate people on scripting. If you paid for this script you was scammed!"
 TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel.TextScaled = true
 TextLabel.TextSize = 14.000
 TextLabel.TextWrapped = true

 Github.Name = "Github"
 Github.Parent = Loader_2
 Github.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
 Github.BorderColor3 = Color3.fromRGB(255, 0, 127)
 Github.BorderSizePixel = 2
 Github.Position = UDim2.new(0.444730222, 0, 0.8046875, 0)
 Github.Size = UDim2.new(0, 164, 0, 50)
 Github.Font = Enum.Font.SourceSans
 Github.Text = "Github repository"
 Github.TextColor3 = Color3.fromRGB(255, 0, 127)
 Github.TextScaled = true
 Github.TextSize = 14.000
 Github.TextWrapped = true

 Coffe.Name = "Coffe"
 Coffe.Parent = Loader_2
 Coffe.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
 Coffe.BorderColor3 = Color3.fromRGB(255, 0, 127)
 Coffe.BorderSizePixel = 2
 Coffe.Position = UDim2.new(0.705340624, 0, 0.8046875, 0)
 Coffe.Size = UDim2.new(0, 164, 0, 50)
 Coffe.Font = Enum.Font.SourceSans
 Coffe.Text = "Discord"
 Coffe.TextColor3 = Color3.fromRGB(255, 0, 127)
 Coffe.TextScaled = true
 Coffe.TextSize = 14.000
 Coffe.TextWrapped = true

 Credits.Name = "Credits"
 Credits.Parent = Loader_2
 Credits.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
 Credits.BorderColor3 = Color3.fromRGB(255, 0, 127)
 Credits.BorderSizePixel = 2
 Credits.Size = UDim2.new(0, 271, 0, 383)

 TextLabel_2.Parent = Credits
 TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_2.BackgroundTransparency = 1.000
 TextLabel_2.Position = UDim2.new(0.128006101, 0, 0.0104438644, 0)
 TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
 TextLabel_2.Font = Enum.Font.SourceSans
 TextLabel_2.Text = "Credits"
 TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_2.TextScaled = true
 TextLabel_2.TextSize = 14.000
 TextLabel_2.TextWrapped = true

 Line.Name = "Line"
 Line.Parent = Credits
 Line.BackgroundColor3 = Color3.fromRGB(255, 0, 127)
 Line.BorderSizePixel = 0
 Line.Position = UDim2.new(0, 0, 0.140992165, 0)
 Line.Size = UDim2.new(0, 271, 0, 6)

 TextLabel_3.Parent = Credits
 TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_3.BackgroundTransparency = 1.000
 TextLabel_3.Position = UDim2.new(0.128006101, 0, 0.195822448, 0)
 TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
 TextLabel_3.Font = Enum.Font.SourceSans
 TextLabel_3.Text = "Made by Kuri#1686"
 TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
 TextLabel_3.TextScaled = true
 TextLabel_3.TextSize = 14.000
 TextLabel_3.TextWrapped = true

 Notification.Name = "Notification"
 Notification.Parent = Loader_2
 Notification.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
 Notification.BorderColor3 = Color3.fromRGB(255, 0, 127)
 Notification.BorderSizePixel = 2
 Notification.Position = UDim2.new(0.260273993, 0, 0.288285553, 0)
 Notification.Size = UDim2.new(0, 316, 0, 83)
 Notification.Visible = false
 Notification.Font = Enum.Font.SourceSans
 Notification.Text = "You are about to load an old version of Veriax, press Load again if you wan't to load the old version!"
 Notification.TextColor3 = Color3.fromRGB(255, 0, 127)
 Notification.TextScaled = true
 Notification.TextSize = 14.000
 Notification.TextWrapped = true

 local function LNJHY_fake_script() -- Load.LocalScript 
  local script = Instance.new('LocalScript', Load)

  local currentVersion = "1.1"
  local sure = true

  script.Parent.MouseButton1Click:Connect(function()
   if sure == false then
    sure = true
    script.Parent.Parent.Visible = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KuriWasTaken/Veriax/main/Verisions/" .. currentVersion .. "/Scripts/Jailbreak.lua"))()
   end
   if string.find(game:HttpGet("https://raw.githubusercontent.com/KuriWasTaken/Veriax/main/Verisions/CurrentVersion"), currentVersion) then
    script.Parent.Parent.Visible = false
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KuriWasTaken/Veriax/main/Verisions/" .. currentVersion .. "/Scripts/Jailbreak.lua"))()
    
   else
    script.Parent.Parent.Notification.Visible = true
    script.Parent.Parent.Notification.Text = "You are about to load an old version of Veriax, press Load again if you wan't to load the old version!"
    sure = false
    wait(2)
    script.Parent.Parent.Notification.Visible = false
   end
  end)
 end
 coroutine.wrap(LNJHY_fake_script)()
 local function WQHAHNP_fake_script() -- Github.LocalScript 
  local script = Instance.new('LocalScript', Github)

  script.Parent.MouseButton1Click:Connect(function()
   script.Parent.Parent.Notification.Visible = true
   script.Parent.Parent.Notification.Text = "Copied link to clipboard!"
   setclipboard("https://github.com/KuriWasTaken/Veriax")
   wait(2)
   script.Parent.Parent.Notification.Visible = false
  end)
 end
 coroutine.wrap(WQHAHNP_fake_script)()
 local function QHVCO_fake_script()
  local script = Instance.new('LocalScript', Coffe)

  script.Parent.MouseButton1Click:Connect(function()
   script.Parent.Parent.Notification.Visible = true
   script.Parent.Parent.Notification.Text = "Copied link to clipboard!"
   setclipboard("https://discord.gg/4JxcCNFj7n") --Discord link
   wait(2)
   script.Parent.Parent.Notification.Visible = false
  end)
 end
 coroutine.wrap(QHVCO_fake_script)()
else
game:GetService("Players").LocalPlayer:Kick("Wrong Game bozo")
end