local Speed = 60

 -- Gui to Lua
 -- Version: 3.2
 local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
 -- Instances:

 local ScreenGui = Instance.new("ScreenGui")
 local W = Instance.new("TextButton")
 local S = Instance.new("TextButton")
 local A = Instance.new("TextButton")
 local D = Instance.new("TextButton")
 local Fly = Instance.new("TextButton")
 local unfly = Instance.new("TextButton")
 local StopFly = Instance.new("TextButton")

 --Properties:

 ScreenGui.Parent = game.CoreGui
 ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

 unfly.Name = "unfly"
 unfly.Parent = ScreenGui
 unfly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 unfly.Position = UDim2.new(0.694387913, 0, 0.181818187, 0)
 unfly.Size = UDim2.new(0, 72, 0, 50)
 unfly.Font = Enum.Font.SourceSans
 unfly.Text = "unfly"
 unfly.TextColor3 = Color3.fromRGB(170, 0, 255)
 unfly.TextScaled = true
 unfly.TextSize = 14.000
 unfly.TextWrapped = 
  unfly.MouseButton1Down:Connect(function()
  HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
  HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
 end)

 StopFly.Name = "Stop Fly"
 StopFly.Parent = ScreenGui
 StopFly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
 StopFly.Size = UDim2.new(0, 71, 0, 50)
 StopFly.Font = Enum.Font.SourceSans
 StopFly.Text = "Stop fly"
 StopFly.TextColor3 = Color3.fromRGB(170, 0, 255)
 StopFly.TextScaled = true
 StopFly.TextSize = 14.000
 StopFly.TextWrapped = true
 StopFly.MouseButton1Down:Connect(function()
  HumanoidRP.Anchored = true
 end)

 Fly.Name = "Fly"
 Fly.Parent = ScreenGui
 Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
 Fly.Size = UDim2.new(0, 66, 0, 50)
 Fly.Font = Enum.Font.SourceSans
 Fly.Text = "Fly"
 Fly.TextColor3 = Color3.fromRGB(170, 0, 127)
 Fly.TextScaled = true
 Fly.TextSize = 14.000
 Fly.TextWrapped = true
 Fly.MouseButton1Down:Connect(function()
  local BV = Instance.new("BodyVelocity",HumanoidRP)
  local BG = Instance.new("BodyGyro",HumanoidRP)
  BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
  BG.D = 5000
  BG.P = 50000
  BG.CFrame = game.Workspace.CurrentCamera.CFrame
  BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
 end)

 W.Name = "W"
 W.Parent = ScreenGui
 W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 W.Position = UDim2.new(0.161668837, 0, 0.601604283, 0)
 W.Size = UDim2.new(0, 58, 0, 50)
 W.Font = Enum.Font.SourceSans
 W.Text = "â"
 W.TextColor3 = Color3.fromRGB(226, 226, 226)
 W.TextScaled = true
 W.TextSize = 5.000
 W.TextWrapped = true
 W.MouseButton1Down:Connect(function()
  HumanoidRP.Anchored = false
  HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
  HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
  wait(.1)
  local BV = Instance.new("BodyVelocity",HumanoidRP)
  local BG = Instance.new("BodyGyro",HumanoidRP)
  BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
  BG.D = 5000
  BG.P = 50000
  BG.CFrame = game.Workspace.CurrentCamera.CFrame
  BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
  BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed
 end)


 S.Name = "S"
 S.Parent = ScreenGui
 S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
 S.Position = UDim2.new(0.161668837, 0, 0.735294104, 0)
 S.Size = UDim2.new(0, 58, 0, 50)
 S.Font = Enum.Font.SourceSans
 S.Text = "â"
 S.TextColor3 = Color3.fromRGB(255, 255, 255)
 S.TextScaled = true
 S.TextSize = 14.000
 S.TextWrapped = true
 S.MouseButton1Down:Connect(function()
  HumanoidRP.Anchored = false
  HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
  HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
  wait(.1)
  local BV = Instance.new("BodyVelocity",HumanoidRP)
  local BG = Instance.new("BodyGyro",HumanoidRP)
  BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
  BG.D = 5000
  BG.P = 50000
  BG.CFrame = game.Workspace.CurrentCamera.CFrame
  BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
  BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed
 end)