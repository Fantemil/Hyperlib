local AFK = Instance.new("ScreenGui")
local AFKframe = Instance.new("Frame")
local timebar = Instance.new("Frame")
local timemeter = Instance.new("Frame")
local header = Instance.new("TextLabel")
local timer = Instance.new("TextButton")
local green = Instance.new("TextLabel")
local red = Instance.new("TextLabel")
local destroy = Instance.new("TextButton")
AFK.Parent = game.CoreGui
AFK.Name = "AFK"
AFK.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AFKframe.Parent = AFK
AFKframe.Name = "AFKframe"
AFKframe.Active = true
AFKframe.BackgroundColor3 = Color3.new(0.2,0.2,0.2)
AFKframe.Draggable = true
AFKframe.Position = UDim2.new(0.406,0,0.015,0)
AFKframe.Size = UDim2.new(0,200,0,100)
header.Parent = AFKframe
header.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
header.Position = UDim2.new(0.035,0,0.06,0)
header.Size = UDim2.new(0,186,0,40)
header.Font = Enum.Font.SourceSansSemibold
header.Text = "Anti-AFK"
header.TextColor3 = Color3.new(.8,.8,.8)
header.TextSize = 25
header.Font = Enum.Font.SciFi
timer.Parent = AFKframe
timer.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
timer.Position = UDim2.new(0.035,0,0.53,0)
timer.Size = UDim2.new(0,186,0,40)
timer.Font = Enum.Font.ArialBold
timer.Text = "      TIMER:"
timer.TextColor3 = Color3.new(.8,.8,.8)
timer.TextSize = 20
timer.Font = Enum.Font.SciFi
timer.TextXAlignment = Enum.TextXAlignment.Left
green.Parent = AFKframe
green.Name = "green"
green.BackgroundColor3 = Color3.new(0,255,0)
green.Position = UDim2.new(0.632,0,0.56,0)
green.Size = UDim2.new(0,35,0,34)
green.Text = " "
green.Visible = false
red.Parent = AFKframe
red.Name = "red"
red.BackgroundColor3 = Color3.new(255,0,0)
red.Position = UDim2.new(0.632,0,0.56,0)
red.Size = UDim2.new(0,35,0,34)
red.Text = " "
red.Visible = true
timebar.Parent = AFKframe
timebar.Name = "timebar"
timebar.BackgroundColor3 = Color3.new(0,0,0)
timebar.Position = UDim2.new(0,0,0.93,0)
timebar.Size = UDim2.new(0,200,0,7)
timemeter.Parent = timebar
timemeter.Name = "timemeter"
timemeter.BackgroundColor3 = Color3.new(0,255,0)
timemeter.Position = UDim2.new(0,0,0,0)
timemeter.Size = UDim2.new(0,0,1,0)
destroy.Parent = AFKframe
destroy.Name = "destroy"
destroy.BackgroundColor3 = Color3.new(0.2,0.2,0.2)
destroy.Position = UDim2.new(0,0,0,0)
destroy.Size = UDim2.new(0,200,0,7)
destroy.Text = "- "
destroy.TextSize = 15
destroy.TextXAlignment = Enum.TextXAlignment.Right
destroy.Font = Enum.Font.SourceSansBold
local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(1200, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local frame = game.CoreGui.AFK.AFKframe.timebar.timemeter
local tween = TweenService:Create(frame, tweenInfo, {Size = UDim2.new(1,0,1,0)})
timer.MouseButton1Click:connect(function()
 if game.CoreGui.AFK.AFKframe.green.Visible == true then
   game.CoreGui.AFK.AFKframe.red.Visible = true
  game.CoreGui.AFK.AFKframe.green.Visible = false
 elseif game.CoreGui.AFK.AFKframe.green.Visible == false then
   game.CoreGui.AFK.AFKframe.red.Visible = false
  game.CoreGui.AFK.AFKframe.green.Visible = true
    end
 if game.CoreGui.AFK.AFKframe.green.Visible == true then
 wait()
  tween:Play()
 elseif game.CoreGui.AFK.AFKframe.green.Visible == false then
  wait()
  tween:Cancel()
  wait()
  game.CoreGui.AFK.AFKframe.timebar.timemeter.Size = UDim2.new(0,0,1,0)
 end
end)
local ss = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
ss:CaptureController()
ss:ClickButton2(Vector2.new())
end)
destroy.MouseButton1Click:connect(function()
AFK:Destroy()
end)