game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "RTX GUI";
    Text = "Made by Sx-p0t#8992";
    Icon = "rbxthumb://type=Asset&id=12361535956&w=150&h=150"})
Duration = 16;

game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "RTX GUI";
    Text = "Credits to @Im_Patrick on Youtube!";
    Icon = "rbxthumb://type=Asset&id=12361535956&w=150&h=150"})
Duration = 16;

-- Gui to Lua
-- Version: 3.2

-- Instances:

local RTXGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Morning = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Afternoon = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Evening = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Credits = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local Night = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Stop = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer

--Properties:

RTXGUI.Name = "RTX GUI"
--RTXGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
RTXGUI.Parent = game:GetService('CoreGui')
RTXGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = RTXGUI
Frame.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Frame.Position = UDim2.new(0.0811881199, 0, 0.144948751, 0)
Frame.Size = UDim2.new(0, 405, 0, 262)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Frame

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.Size = UDim2.new(0, 405, 0, 50)
Title.Font = Enum.Font.FredokaOne
Title.Text = "RTX GUI"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Title

Morning.Name = "Morning"
Morning.Parent = Frame
Morning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Morning.Position = UDim2.new(0.0493827164, 0, 0.22325556, 0)
Morning.Size = UDim2.new(0, 170, 0, 50)
Morning.Font = Enum.Font.FredokaOne
Morning.Text = "Morning"
Morning.TextColor3 = Color3.fromRGB(0, 0, 0)
Morning.TextSize = 43.000
Morning.MouseButton1Click:Connect(function()
 local Vignette = true -- change to false if you don't want a shadow frame



 local Lighting = game:GetService("Lighting")
 local StarterGui = game:GetService("StarterGui")
 local Bloom = Instance.new("BloomEffect")
 local Blur = Instance.new("BlurEffect")
 local ColorCor = Instance.new("ColorCorrectionEffect")
 local SunRays = Instance.new("SunRaysEffect")
 local Sky = Instance.new("Sky")
 local Atm = Instance.new("Atmosphere")


 for i, v in pairs(Lighting:GetChildren()) do
  if v then
   v:Destroy()
  end
 end

 Bloom.Parent = Lighting
 Blur.Parent = Lighting
 ColorCor.Parent = Lighting
 SunRays.Parent = Lighting
 Sky.Parent = Lighting
 Atm.Parent = Lighting

 if Vignette == true then
  local Gui = Instance.new("ScreenGui")
  Gui.Parent = StarterGui
  Gui.IgnoreGuiInset = true

  local ShadowFrame = Instance.new("ImageLabel")
  ShadowFrame.Parent = Gui
  ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
  ShadowFrame.Position = UDim2.new(0.5,0,1,0)
  ShadowFrame.Size = UDim2.new(1,0,1.05,0)
  ShadowFrame.BackgroundTransparency = 1
  ShadowFrame.Image = "rbxassetid://4576475446"
  ShadowFrame.ImageTransparency = 0.3
  ShadowFrame.ZIndex = 10
 end

 Bloom.Intensity = 0.3
 Bloom.Size = 10
 Bloom.Threshold = 0.8

 Blur.Size = 5

 ColorCor.Brightness = 0.1
 ColorCor.Contrast = 0.5
 ColorCor.Saturation = -0.3
 ColorCor.TintColor = Color3.fromRGB(123, 182, 232)

 SunRays.Intensity = 0.075
 SunRays.Spread = 0.727

 Sky.SkyboxBk = "rbxassetid://11832141390"
 Sky.SkyboxDn = "rbxassetid://11832143153"
 Sky.SkyboxFt = "rbxassetid://11832140714"
 Sky.SkyboxLf = "rbxassetid://11832142032"
 Sky.SkyboxRt = "rbxassetid://11832142403"
 Sky.SkyboxUp = "rbxassetid://11832185944"

 Sky.SunAngularSize = 10

 Lighting.Ambient = Color3.fromRGB(2,2,2)
 Lighting.Brightness = 2.25
 Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
 Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
 Lighting.EnvironmentDiffuseScale = 0.2
 Lighting.EnvironmentSpecularScale = 0.2
 Lighting.GlobalShadows = true
 Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
 Lighting.ShadowSoftness = 0.2
 Lighting.ClockTime = 7
 Lighting.GeographicLatitude = 45
 Lighting.ExposureCompensation = 0.5

 Atm.Density = 0.364
 Atm.Offset = 0.556
 Atm.Color = Color3.fromRGB(110, 153, 202)
 Atm.Decay = Color3.fromRGB(13, 105, 172)
 Atm.Glare = 0.36
 Atm.Haze = 1.72
end)

UICorner_3.Parent = Morning

Afternoon.Name = "Afternoon"
Afternoon.Parent = Frame
Afternoon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Afternoon.Position = UDim2.new(0.530864179, 0, 0.22325556, 0)
Afternoon.Size = UDim2.new(0, 170, 0, 50)
Afternoon.Font = Enum.Font.FredokaOne
Afternoon.Text = "Afternoon"
Afternoon.TextColor3 = Color3.fromRGB(0, 0, 0)
Afternoon.TextScaled = true
Afternoon.TextSize = 43.000
Afternoon.TextWrapped = true
Afternoon.MouseButton1Click:Connect(function()
 local Vignette = true -- change to false if you don't want a shadow frame



 local Lighting = game:GetService("Lighting")
 local StarterGui = game:GetService("StarterGui")
 local Bloom = Instance.new("BloomEffect")
 local Blur = Instance.new("BlurEffect")
 local ColorCor = Instance.new("ColorCorrectionEffect")
 local SunRays = Instance.new("SunRaysEffect")
 local Sky = Instance.new("Sky")
 local Atm = Instance.new("Atmosphere")


 for i, v in pairs(Lighting:GetChildren()) do
  if v then
   v:Destroy()
  end
 end

 Bloom.Parent = Lighting
 Blur.Parent = Lighting
 ColorCor.Parent = Lighting
 SunRays.Parent = Lighting
 Sky.Parent = Lighting
 Atm.Parent = Lighting

 if Vignette == true then
  local Gui = Instance.new("ScreenGui")
  Gui.Parent = StarterGui
  Gui.IgnoreGuiInset = true

  local ShadowFrame = Instance.new("ImageLabel")
  ShadowFrame.Parent = Gui
  ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
  ShadowFrame.Position = UDim2.new(0.5,0,1,0)
  ShadowFrame.Size = UDim2.new(1,0,1.05,0)
  ShadowFrame.BackgroundTransparency = 1
  ShadowFrame.Image = "rbxassetid://4576475446"
  ShadowFrame.ImageTransparency = 0.3
  ShadowFrame.ZIndex = 10
 end

 Bloom.Intensity = 0.3
 Bloom.Size = 10
 Bloom.Threshold = 0.8

 Blur.Size = 5

 ColorCor.Brightness = 0.1
 ColorCor.Contrast = 0.5
 ColorCor.Saturation = -0.3
 ColorCor.TintColor = Color3.fromRGB(242, 243, 243)

 SunRays.Enabled = true
 SunRays.Intensity = 0.075
 SunRays.Spread = 0.727



 Sky.SkyboxBk = "http://www.roblox.com/asset/?id=225469345"
 Sky.SkyboxDn = "http://www.roblox.com/asset/?id=225469349"
 Sky.SkyboxFt = "http://www.roblox.com/asset/?id=225469359"
 Sky.SkyboxLf = "http://www.roblox.com/asset/?id=225469364"
 Sky.SkyboxRt = "http://www.roblox.com/asset/?id=225469372"
 Sky.SkyboxUp = "http://www.roblox.com/asset/?id=225469380"

 Sky.SunAngularSize = 10

 Lighting.Ambient = Color3.fromRGB(33, 33, 33)
 Lighting.Brightness = 2.25
 Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
 Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
 Lighting.EnvironmentDiffuseScale = 0.203
 Lighting.EnvironmentSpecularScale = 0.255
 Lighting.GlobalShadows = true
 Lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
 Lighting.ShadowSoftness = 0.19
 Lighting.ClockTime = 10
 Lighting.GeographicLatitude = -15.12
 Lighting.ExposureCompensation = 0.85

 Atm.Density = 0.364
 Atm.Offset = 0.556
 Atm.Color = Color3.fromR GB(175, 221, 255)
 Atm.Decay = Color3.fromRGB(13, 105, 172)
 Atm.Glare = 0.36
 Atm.Haze = 1.72
end)

UICorner_4.Parent = Afternoon

Evening.Name = "Evening"
Evening.Parent = Frame
Evening.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Evening.Position = UDim2.new(0.0493827164, 0, 0.459108353, 0)
Evening.Size = UDim2.new(0, 170, 0, 50)
Evening.Font = Enum.Font.FredokaOne
Evening.Text = "Evening"
Evening.TextColor3 = Color3.fromRGB(0, 0, 0)
Evening.TextSize = 43.000
Evening.MouseButton1Click:Connect(function()
 local Vignette = true -- change to false if you don't want a shadow frame



 local Lighting = game:GetService("Lighting")
 local StarterGui = game:GetService("StarterGui")
 local Bloom = Instance.new("BloomEffect")
 local Blur = Instance.new("BlurEffect")
 local ColorCor = Instance.new("ColorCorrectionEffect")
 local SunRays = Instance.new("SunRaysEffect")
 local Sky = Instance.new("Sky")
 local Atm = Instance.new("Atmosphere")


 for i, v in pairs(Lighting:GetChildren()) do
  if v then
   v:Destroy()
  end
 end

 Bloom.Parent = Lighting
 Blur.Parent = Lighting
 ColorCor.Parent = Lighting
 SunRays.Parent = Lighting
 Sky.Parent = Lighting
 Atm.Parent = Lighting

 if Vignette == true then
  local Gui = Instance.new("ScreenGui")
  Gui.Parent = StarterGui
  Gui.IgnoreGuiInset = true

  local ShadowFrame = Instance.new("ImageLabel")
  ShadowFrame.Parent = Gui
  ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
  ShadowFrame.Position = UDim2.new(0.5,0,1,0)
  ShadowFrame.Size = UDim2.new(1,0,1.05,0)
  ShadowFrame.BackgroundTransparency = 1
  ShadowFrame.Image = "rbxassetid://4576475446"
  ShadowFrame.ImageTransparency = 0.3
  ShadowFrame.ZIndex = 10
 end

 Bloom.Intensity = 0.3
 Bloom.Size = 10
 Bloom.Threshold = 0.8

 Blur.Size = 5

 ColorCor.Brightness = 0.1
 ColorCor.Contrast = 0.5
 ColorCor.Saturation = -0.3
 ColorCor.TintColor = Color3.fromRGB(255, 235, 203)

 SunRays.Intensity = 0.075
 SunRays.Spread = 0.727

 Sky.SkyboxBk = "http://www.roblox.com/asset/?id=151165214"
 Sky.SkyboxDn = "http://www.roblox.com/asset/?id=151165197"
 Sky.SkyboxFt = "http://www.roblox.com/asset/?id=151165224"
 Sky.SkyboxLf = "http://www.roblox.com/asset/?id=151165191"
 Sky.SkyboxRt = "http://www.roblox.com/asset/?id=151165206"
 Sky.SkyboxUp = "http://www.roblox.com/asset/?id=151165227"
 Sky.SunAngularSize = 10

 Lighting.Ambient = Color3.fromRGB(2,2,2)
 Lighting.Brightness = 2.25
 Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
 Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
 Lighting.EnvironmentDiffuseScale = 0.2
 Lighting.EnvironmentSpecularScale = 0.2
 Lighting.GlobalShadows = true
 Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
 Lighting.ShadowSoftness = 0.2
 Lighting.ClockTime = 17
 Lighting.GeographicLatitude = 45
 Lighting.ExposureCompensation = 0.5

 Atm.Density = 0.364
 Atm.Offset = 0.556
 Atm.Color = Color3.fromRGB(199, 175, 166)
 Atm.Decay = Color3.fromRGB(44, 39, 33)
 Atm.Glare = 0.36
 Atm.Haze = 1.72
end)


UICorner_5.Parent = Evening

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.Position = UDim2.new(0.841975331, 0, 0, 0)
Close.Size = UDim2.new(0, 64, 0, 50)
Close.Font = Enum.Font.FredokaOne
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 0, 0)
Close.TextScaled = true
Close.TextSize = 43.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()
 Frame:Destroy()
end)

UICorner_6.Parent = Close

Credits.Name = "Credits"
Credits.Parent = Frame
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.Position = UDim2.new(0, 0, 0.930760145, 0)
Credits.Size = UDim2.new(0, 405, 0, 18)
Credits.Font = Enum.Font.FredokaOne
Credits.Text = "Made By Sx-p0t"
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 15)
UICorner_7.Parent = Credits

Night.Name = "Night"
Night.Parent = Frame
Night.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Night.Position = UDim2.new(0.530864179, 0, 0.459108353, 0)
Night.Size = UDim2.new(0, 170, 0, 50)
Night.Font = Enum.Font.FredokaOne
Night.Text = "Night"
Night.TextColor3 = Color3.fromRGB(0, 0, 0)
Night.TextSize = 43.000
Night.TextWrapped = true
Night.MouseButton1Click:Connect(function()
 local Vignette = true -- change to false if you don't want a shadow frame



 local Lighting = game:GetService("Lighting")
 local StarterGui = game:GetService("StarterGui")
 local Bloom = Instance.new("BloomEffect")
 local Blur = Instance.new("BlurEffect")
 local ColorCor = Instance.new("ColorCorrectionEffect")
 local SunRays = Instance.new("SunRaysEffect")
 local Sky = Instance.new("Sky")
 local Atm = Instance.new("Atmosphere")


 for i, v in pairs(Lighting:GetChildren()) do
  if v then
   v:Destroy()
  end
 end

 Bloom.Parent = Lighting
 Blur.Parent = Lighting
 ColorCor.Parent = Lighting
 SunRays.Parent = Lighting
 Sky.Parent = Lighting
 Atm.Parent = Lighting

 if Vignette == true then
  local Gui = Instance.new("ScreenGui")
  Gui.Parent = StarterGui
  Gui.IgnoreGuiInset = true

  local ShadowFrame = Instance.new("ImageLabel")
  ShadowFrame.Parent = Gui
  ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
  ShadowFrame.Position = UDim2.new(0.5,0,1,0)
  ShadowFrame.Size = UDim2.new(1,0,1.05,0)
  ShadowFrame.BackgroundTransparency = 1
  ShadowFrame.Image = "rbxassetid://4576475446"
  ShadowFrame.ImageTransparency = 0.3
  ShadowFrame.ZIndex = 10
 end

 Bloom.Intensity = 0.3
 Bloom.Size = 10
 Bloom.Threshold = 0.8

 Blur.Size = 5

 ColorCor.Brightness = 0.1
 ColorCor.Contrast = 0.5
 ColorCor.Saturation = -0.3
 ColorCor.TintColor = Color3.fromRGB(242, 243, 243)

 SunRays.Enabled = true
 SunRays.Intensity = 0.075
 SunRays.Spread = 0.727

 Sky.MoonAngularSize =12
 Sky.MoonTextureId = "rbxasset://sky/moon.jpg"
 Sky.SkyboxBk = "http://www.roblox.com/asset/?id=411315762"
 Sky.SkyboxDn = "http://www.roblox.com/asset/?id=411315762"
 Sky.SkyboxFt = "http://www.roblox.com/asset/?id=411315762"
 Sky.SkyboxLf = "http://www.roblox.com/asset/?id=411315762"
 Sky.SkyboxRt = "http://www.roblox.com/asset/?id=411315762"
 Sky.SkyboxUp = "http://www.roblox.com/asset/?id=411315762"
 Sky.StarCount = 5000
 Sky.SunAngularSize = 10

 Lighting.Ambient = Color3.fromRGB(33, 33, 33)
 Lighting.Brightness = 3.25
 Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
 Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
 Lighting.EnvironmentDiffuseScale = 0.203
 Lighting.EnvironmentSpecularScale = 0.255
 Lighting.GlobalShadows = true
 Lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
 Lighting.ShadowSoftness = 0.19
 Lighting.ClockTime = 20
 Lighting.GeographicLatitude = -15.12
 Lighting.ExposureCompensation = 0.85

 Atm.Density = 0.264
 Atm.Offset = 0.156
 Atm.Color = Color3.fromR GB(175, 221, 255)
 Atm.Decay = Color3.fromRGB(13, 105, 172)
 Atm.Glare = 0.36
 Atm.Haze = 1.72
end)

UICorner_8.Parent = Night

Stop.Name = "Stop"
Stop.Parent = Frame
Stop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stop.Position = UDim2.new(0.0493827164, 0, 0.691932738, 0)
Stop.Size = UDim2.new(0, 365, 0, 50)
Stop.Font = Enum.Font.FredokaOne
Stop.Text = "Stop RTX"
Stop.TextColor3 = Color3.fromRGB(0, 0, 0)
Stop.TextScaled = true
Stop.TextSize = 43.000
Stop.TextWrapped = true
Stop.MouseButton1Click:Connect(function()
 ts:Teleport(game.PlaceId, p)
end)

UICorner_9.Parent = Stop

Frame.Active = true
Frame.Draggable = true