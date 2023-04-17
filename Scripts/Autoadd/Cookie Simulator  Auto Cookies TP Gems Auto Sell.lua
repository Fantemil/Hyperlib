local ScreenGui = Instance.new("ScreenGui")
local mAIN = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local NONE = Instance.new("TextButton")
local NONE_2 = Instance.new("TextButton")
local NONE_3 = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.CoreGui
 
mAIN.Name = "mAIN"
mAIN.Parent = ScreenGui
mAIN.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
mAIN.BorderColor3 = Color3.new(0.00392157, 0.00392157, 0.00392157)
mAIN.Position = UDim2.new(0.222608805, 0, 0.0723016709, 0)
mAIN.Size = UDim2.new(0, 428, 0, 340)
mAIN.Active = true
mAIN.Draggable = true
 
 
TextLabel.Parent = mAIN
TextLabel.BackgroundColor3 = Color3.new(0.556863, 0.266667, 0.678431)
TextLabel.BorderColor3 = Color3.new(0.556863, 0.266667, 0.678431)
TextLabel.Size = UDim2.new(0, 428, 0, 38)
TextLabel.Text = "GUI 2019"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 14
 
TextLabel_2.Parent = mAIN
TextLabel_2.BackgroundColor3 = Color3.new(0.556863, 0.266667, 0.678431)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.0537383147, 0, 0.891176462, 0)
TextLabel_2.Size = UDim2.new(0, 382, 0, 37)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "MADE BY: Chhev YT"
TextLabel_2.TextColor3 = Color3.new(0.180392, 0.8, 0.443137)
TextLabel_2.TextSize = 14
 
NONE.Name = "NONE"
NONE.Parent = mAIN
NONE.BackgroundColor3 = Color3.new(0.945098, 0.768628, 0.0588235)
NONE.Position = UDim2.new(0.294392526, 0, 0.179411769, 0)
NONE.Size = UDim2.new(0, 176, 0, 52)
NONE.Font = Enum.Font.Highway
NONE.Text = "Auto Cookies/Speed"
NONE.TextColor3 = Color3.new(0, 0, 0)
NONE.TextSize = 14
NONE.MouseButton1Down:connect(function()
 game:GetService('RunService').RenderStepped:connect(function()
game:GetService("ReplicatedStorage").Events.ActivatedTool:FireServer("ss>lkiu")
end)
end)
 
NONE_2.Name = "NONE"
NONE_2.Parent = mAIN
NONE_2.BackgroundColor3 = Color3.new(0.180392, 0.8, 0.443137)
NONE_2.Position = UDim2.new(0.294392496, 0, 0.400000036, 0)
NONE_2.Size = UDim2.new(0, 176, 0, 52)
NONE_2.Font = Enum.Font.SourceSans
NONE_2.Text = "TP GEMS"
NONE_2.TextColor3 = Color3.new(0, 0, 0)
NONE_2.TextSize = 14
NONE_2.MouseButton1Down:connect(function()
 local shroud = game.Workspace.Orbs:FindFirstChildOfClass('Folder')
local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
while true do
wait(2)
for _, h in pairs(shroud['SpeedOrb']:GetChildren()) do
   if h.ClassName == "MeshPart" then
    h.CFrame = plr.CFrame
   end 
end 
end
end)
 
NONE_3.Name = "NONE"
NONE_3.Parent = mAIN
NONE_3.BackgroundColor3 = Color3.new(0.945098, 0.768628, 0.0588235)
NONE_3.Position = UDim2.new(0.294392526, 0, 0.647058904, 0)
NONE_3.Size = UDim2.new(0, 176, 0, 52)
NONE_3.Font = Enum.Font.SourceSans
NONE_3.Text = "Auto Sell"
NONE_3.TextColor3 = Color3.new(0, 0, 0)
NONE_3.TextSize = 14
NONE_3.MouseButton1Down:connect(function()
 while true do
   wait()
local sellpoint = game.workspace.SellParts:GetChildren()[7]
sellpoint.CanCollide = false
sellpoint.CFrame = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
end)
-- Scripts:
function SCRIPT_UKQP78_FAKESCRIPT() -- TextLabel.Rainbower 
 local script = Instance.new('LocalScript')
 script.Parent = TextLabel
 while wait() do
  script.Parent.TextColor3 = Color3.new(1,0,0)
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g+(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r-(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b+(17/255))
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g-(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r+(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b-(17/255))
  end
 end
 
end
coroutine.resume(coroutine.create(SCRIPT_UKQP78_FAKESCRIPT))
function SCRIPT_USEE88_FAKESCRIPT() -- TextLabel_2.Rainbower 
 local script = Instance.new('LocalScript')
 script.Parent = TextLabel_2
 while wait() do
  script.Parent.TextColor3 = Color3.new(1,0,0)
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g+(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r-(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b+(17/255))
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g-(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r+(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b-(17/255))
  end
 end
 
end
coroutine.resume(coroutine.create(SCRIPT_USEE88_FAKESCRIPT))
function SCRIPT_EODL73_FAKESCRIPT() -- NONE.Rainbower 
 local script = Instance.new('LocalScript')
 script.Parent = NONE
 while wait() do
  script.Parent.TextColor3 = Color3.new(1,0,0)
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g+(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r-(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b+(17/255))
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g-(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r+(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b-(17/255))
  end
 end
 
end
coroutine.resume(coroutine.create(SCRIPT_EODL73_FAKESCRIPT))
function SCRIPT_SYNK67_FAKESCRIPT() -- NONE_2.Rainbower 
 local script = Instance.new('LocalScript')
 script.Parent = NONE_2
 while wait() do
  script.Parent.TextColor3 = Color3.new(1,0,0)
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g+(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r-(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b+(17/255))
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g-(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r+(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b-(17/255))
  end
 end
 
end
coroutine.resume(coroutine.create(SCRIPT_SYNK67_FAKESCRIPT))
function SCRIPT_YGRT71_FAKESCRIPT() -- NONE_3.Rainbower 
 local script = Instance.new('LocalScript')
 script.Parent = NONE_3
 while wait() do
  script.Parent.TextColor3 = Color3.new(1,0,0)
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g+(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r-(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b+(17/255))
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g-(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r+(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b-(17/255))
  end
 end
 
end
coroutine.resume(coroutine.create(SCRIPT_YGRT71_FAKESCRIPT))
function SCRIPT_TRLP81_FAKESCRIPT() -- ScreenGui.Rainbower 
 local script = Instance.new('LocalScript')
 script.Parent = ScreenGui
 while wait() do
  script.Parent.TextColor3 = Color3.new(1,0,0)
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g+(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r-(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b+(17/255))
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g-(17/255),script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r+(17/255),script.Parent.TextColor3.g,script.Parent.TextColor3.b)
  end
  for i=1,15 do
   game:GetService("RunService").RenderStepped:wait()
   script.Parent.TextColor3 = Color3.new(script.Parent.TextColor3.r,script.Parent.TextColor3.g,script.Parent.TextColor3.b-(17/255))
  end
 end
 
end
coroutine.resume(coroutine.create(SCRIPT_TRLP81_FAKESCRIPT))